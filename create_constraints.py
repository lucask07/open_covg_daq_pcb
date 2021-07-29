# Script to create an FPGA constraints file from the covg-kicad.lib and ok_fpga.sch files

import pandas as pd
from operator import attrgetter

# Pins -> covg-kicad.lib
class Pin():
    def __init__(self, name, x, y):
        self.name = name
        self.x = x
        self.y = y

# Names -> ok_fpga.sch
class Name():
    def __init__(self, name, x, y, io):
        self.name = name
        self.x = x
        self.y = y
        self.io = io


EMPTY = Name(name='', x='', y='', io='')


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

# DEBUG
for i in range(len(pin_list)):
    print((pin_list[i].name + ', ' + str(pin_list[i].x) + ', ' + str(pin_list[i].y)).ljust(
        20) + name_list[i].name + ', ' + str(name_list[i].x) + ', ' + str(name_list[i].y))

# Write to spreadsheet
print('Creating spreadsheet...')
data_dict = {'Pin': [pin.name for pin in pin_list], 'Name': [name.name for name in name_list], 'Input/Output': [name.io for name in name_list]}
data_frame = pd.DataFrame(data=data_dict)
print(data_frame)
data_frame.to_excel('pins.xlsx')

# Write to text file
print('Creating text file...')
txt_str = ''
for i in range(len(pin_list)):
    txt_str += pin_list[i].name.ljust(20) + name_list[i].name + '\n'

txt_file = open('pins.txt', 'w')
txt_file.write(txt_str)
txt_file.close()

print('Done')
