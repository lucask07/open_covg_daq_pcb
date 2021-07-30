# Script to create an FPGA constraints file from the covg-kicad.lib and ok_fpga.sch files

from os import error
import pandas as pd
from operator import attrgetter

# Pins -> covg-kicad.lib
class Pin():
    def __init__(self, name, x, y, fpga_pin='', io_standard=''):
        self.name = name
        self.x = x
        self.y = y
        self.fpga_pin = fpga_pin
        self.io_standard = io_standard

# Names -> ok_fpga.sch
class Name():
    def __init__(self, name, x, y, io):
        self.name = name
        self.x = x
        self.y = y
        self.io = io


EMPTY = Name(name='', x='', y='', io='')

# Data to convert connector pins (Ex. MC1-8) to FPGA pins (Ex. AB11)

# File locations
pin_file_location = 'C:/Users/stro4149/Desktop/open_covg_daq_pcb/covg-kicad.lib'
name_file_location = 'C:/Users/stro4149/Desktop/open_covg_daq_pcb/ok_fpga.sch'

#----- Go through covg-kicad.lib to collect pins
print(f'Collecting pins from: {pin_file_location}')
pin_file = open(pin_file_location, 'r', encoding='utf-8')
pin_lines = pin_file.readlines()
pin_file.close()

pin_list = []

# Find the beginning of the OK pins
line_number = 0
while True:
    line = pin_lines[line_number]
    if 'OPALKELLY_XEM7310' in line:
        line_number += 1
        break
    line_number += 1

while True:
    line = pin_lines[line_number].strip()
    if line[0] == 'X':
        break
    line_number += 1

# Make a list of all the pins
while True:
    line = pin_lines[line_number].strip()

    if line[0] != 'X':
        break

    parts = line.split()
    pin = Pin(name=parts[2], x=int(parts[9]), y=int(parts[4]))
    pin_list.append(pin)
    line_number += 1

#----- Go through ok_fpga.sch to collect names
print(f'Collecting names from: {name_file_location}')
name_file = open(name_file_location, 'r', encoding='utf-8')
name_lines = name_file.readlines()
name_file.close()

name_list = []
y_adjust = 2600 # Adjusting y-values since each file uses different ones

# Find the beginning of the FPGA pin names
line_number = 0
while True:
    line = name_lines[line_number].strip()

    if 'Text' in line:
        break
    else:
        line_number += 1

# Make a list of all the names
for line_number in range(line_number, len(name_lines)):
    line = name_lines[line_number].strip()

    if 'Text' not in line:
        line_number += 2
        continue
    elif 'Text Notes' in line:
        line_number += 2
        continue

    parts = line.split()

    x_val = int(parts[2])
    if x_val < 3000:
        # Before column 1
        line_number += 2
        continue
    elif x_val < 5500:
        # Column 1
        x = 1
    elif x_val < 8250:
        # Column 2
        x = 2
    elif x_val < 11000:
        # Column 3
        x = 3
    else:
        # Column 4
        x = 4

    y = y_adjust - int(parts[3])

    if parts[6] == '~':
        io = None
    else:
        io = parts[6]

    if (y >= y_adjust - 4600): # Lowest name, leftmost name
        name = Name(name=name_lines[line_number + 1].strip(), x=x, y=y, io=io)
    else:
        line_number += 2
        continue
    name_list.append(name)
    line_number += 2

#----- Write the lists to spreadsheet and text file
# TODO: make this spreadsheet and constraints file
print('Matching pins to names...')

# Sort both lists
pin_list.sort(key=attrgetter('y'), reverse=True)    # Descending
pin_list.sort(key=attrgetter('x'), reverse=False)   # Ascending

name_list.sort(key=attrgetter('y'), reverse=True)  # Descending
name_list.sort(key=attrgetter('x'), reverse=False)  # Ascending

# Remove duplicate names
name_number = 0
while name_number < len(name_list) - 1:
    name = name_list[name_number]
    next_name = name_list[name_number + 1]
    if name.name == next_name.name:
        name_list.remove(name)
    name_number += 1

# Match the pins to the names
pin_number = 0
name_number = 0
while name_number < len(name_list):
    name = name_list[name_number]

    while pin_number < len(pin_list):
        pin = pin_list[pin_number]

        if (pin.x == name.x) and (pin.y == name.y):
            # They match, move on to the next ones
            pin_number += 1
            name_number += 1
            break
        elif (pin.x < name.x) or (pin.y > name.y):
            # The matching pin is farther down the list
            name_list.insert(name_number, EMPTY) # Put an empty string as a placeholder
            pin_number += 1
            name_number += 1
            break
        else:
            # There is no matching pin
            print(f'ERROR: no matching pin for {name.name}')
            name_number += 1
            pin_number = 0
            break

# Fill any remaining pins with empty strings as placeholders
for i in range(len(pin_list) - len(name_list)):
    name_list.append(EMPTY)

# DEBUG print the lists matched together
# for i in range(len(pin_list)):
#     print((pin_list[i].name + ', ' + str(pin_list[i].x) + ', ' + str(pin_list[i].y)).ljust(
#         20) + name_list[i].name + ', ' + str(name_list[i].x) + ', ' + str(name_list[i].y))

#----- Create FPGA pins list from pin_list
print('Matching FPGA pins to connector pins...')
# Uses information from table on https://pins.opalkelly.com/pin_list/XEM7310
xem7310_pins = pd.read_csv('XEM7310.csv')
for pin in pin_list:
    connector, connector_pin = pin.name.split('-') # Ex. 'MC2', '12' = 'MC2-12'
    row = xem7310_pins.loc[(xem7310_pins['Connector'] == connector) & (xem7310_pins['Pin'] == int(connector_pin))]
    pin.fpga_pin = row['FPGA Pin'].item()
    pin.io_standard = row['XDC IOStandard'].item()

# Currently sorted by MC2-ODDS, MC2-EVENS, MC1-ODDS, MC1-EVEN matching the schematic reading left to right
#----- Now we sort by name to group the like names together so we can make similar wires into vectors
print('Creating vectors...')

data_dict = {'Pin': [pin.name for pin in pin_list], 'Name': [name.name for name in name_list], 'FPGA Pin': [pin.fpga_pin for pin in pin_list], 'IO': [name.io for name in name_list], 'IOStandard': [pin.io_standard for pin in pin_list]}
data_frame = pd.DataFrame(data=data_dict)

# Function to take in a Series and return a Series with no numbers in the values
def no_number_key(series):
    for i in range(len(series)):
        data = series.iat[i]
        new_data = data
        for j in range(10):
            new_data = new_data.replace(str(j), '')
        series.iat[i] = new_data
    return series

data_frame = data_frame.sort_values(by='Name', key=lambda s: no_number_key(s))
print(data_frame.to_markdown())
# Go through every row checking it against the row after to see if they match when the numbers are removed
error_names = {}
for row_number in range(len(data_frame)):
    current_name = data_frame.iloc[row_number]['Name']

    if current_name == '': # Skip empty string names
        continue

    # Because we only go 2 rows at a time, we could be checking ds_clk[1] against ds2_clk, so remove all brackets now
    # that way when we remove numbers we end up with just ds_clk
    # current_name = current_name.replace('[', '').replace(']', '')
    current_name = current_name.split('[')[0] # Everything before the brackets
    current_no_number = current_name

    # Check for multiple numbers in the name
    original_length = len(current_name)
    len_name = current_name
    for i in range(10):
        len_name = len_name.replace(str(i), '')
    if original_length - len(len_name) > 0:
        # Removed more than 1 number, error
        # error_names[row_number] = current_name

        # Search for similar names removing each number individually
        matched = False
        for char in current_name:
            char_position = current_name.index(char)
            if char.isdigit():
            # if char == '0':
                # Found a number, check the rest of the names to see if they are similar
                # for i in range(row_number + 1, len(data_frame) - 1):
                for i in (list(range(row_number + 1, len(data_frame))) + list(range(row_number))):
                    compare_name = data_frame.iloc[i]['Name'] # Loop through all remaining names

                    # Make sure char_position is not out of range for the name we are searching
                    if char_position > len(compare_name) - 1:
                        continue

                    compare_index = compare_name[char_position] # The index for this name if it gets turned into a vector
                    if current_name[:char_position] + current_name[char_position + 1:] == (compare_name[:char_position] + compare_name[char_position + 1:]):
                        # All the same except for that character
                        matched = True
                        # Already removed duplicates earlier so these are not the same character so we assume it is an index
                        # Change the name we found into a vector
                        data_frame.iloc[i].at['Name'] = f'{compare_name[:char_position] + compare_name[char_position + 1:]}[{compare_index}]'
            if matched:
                # Found a match earlier, change current name to a vector and stop looking for numbers to replace
                data_frame.iloc[row_number].at['Name'] = f'{current_name[:char_position] + current_name[char_position + 1:]}[{char}]'
                break
        continue

    # Remove and record number from each name
    # for i in range(10): # 0-9
    #     current_no_number = current_name.replace(str(i), '')

    #     if current_no_number == current_name: # The number was not in the name, try the next one
    #         continue

    #     next_name = data_frame.iloc[row_number + 1]['Name'].replace('[', '').replace(']', '') # Remove brackets, leave number
    #     for j in range(10):
    #         next_no_number = next_name.replace(str(j), '')
    #         if next_no_number == next_name:
    #             # Not the right number, keep looking
    #             continue
    #         else:
    #             # Found the right number, move on
    #             break

    #     if current_no_number == next_no_number:
    #         # Match, format as vector
    #         data_frame.iloc[row_number].at['Name'] = f'{current_no_number}[{i}]' # Ex. ds1_clk -> ds_clk[1]
    #         data_frame.iloc[row_number + 1].at['Name'] = f'{next_no_number}[{j}]'
    #     else:
    #         # No match, but that was the number in the name so move to the next name
    #         break

#----- Allow user to fix error names
print(f'Error names: {len(error_names)}')
if len(error_names) > 0:
    for key in error_names:
        print(f'    {error_names[key]}')
    fix = input('Would you like to fix the error names? (y/n): ').lower()
    if fix == 'y':
        # User fix
        for key in error_names:
            new_name = input(f'{error_names[key]} --> ').lower()
            if new_name == '':
                # If the user enters nothing, keep the current name
                continue
            data_frame.iloc[key].at['Name'] = new_name

#----- Write to spreadsheet
print('Creating spreadsheet...')
# Return to original sort -> MC2-ODDS, MC2-EVENS, MC1-ODDS, MC1-EVEN matching the schematic reading left to right
data_frame = data_frame.sort_index()
data_frame.to_excel('pins.xlsx')

#----- Write to text file
print('Creating text file...')
# Convert to lowercase
txt_str = ''
for i in range(len(data_frame)):
    pin         = str(data_frame.iloc[i].at['Pin'])
    fpga_pin    = str(data_frame.iloc[i].at['FPGA Pin'])
    name        = str(data_frame.iloc[i].at['Name'])
    io_standard = str(data_frame.iloc[i].at['IOStandard'])
    txt_str += pin + ', ' + fpga_pin + ', ' + name + ', ' + io_standard + '\n'

txt_file = open('pins.txt', 'w')
txt_file.write(txt_str)
txt_file.close()

print('Done')
