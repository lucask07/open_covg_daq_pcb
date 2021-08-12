# Script to create an FPGA constraints file from the covg-kicad.lib and ok_fpga.sch files

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


EMPTY_NAME = Name(name='', x='', y='', io='')

# Function to create a list of Pins from a .lib file
def collect_pins(pin_file_location):
    print(f'Collecting pins from: {pin_file_location}')
    pin_file = open(pin_file_location, 'r', encoding='utf-8')
    pin_lines = pin_file.readlines()
    pin_file.close()

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
    pin_list = []
    while True:
        line = pin_lines[line_number].strip()

        if line[0] != 'X':
            break

        parts = line.split()
        pin = Pin(name=parts[2], x=int(parts[9]), y=int(parts[4]))
        pin_list.append(pin)
        line_number += 1

    return pin_list

# Function to create a list of Pins from a .sch file
def collect_names(name_file_location):
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

    return name_list

# Function to reorder a list of Pins and a list of Names by their x and y positions to match them together
def match_pins_to_names(pin_list, name_list):
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
                name_list.insert(name_number, EMPTY_NAME) # Put an empty string as a placeholder
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
        name_list.append(EMPTY_NAME)

    return pin_list, name_list

# Function to match the XEM7310 FPGA pin to a list of Pins (connector pins)
def match_FPGA_pins(pin_list):
    print('Matching FPGA pins to connector pins...')
    # Uses information from table on https://pins.opalkelly.com/pin_list/XEM7310
    xem7310_pins = pd.read_csv('XEM7310.csv')
    for pin in pin_list:
        connector, connector_pin = pin.name.split('-') # Ex. 'MC2', '12' = 'MC2-12'
        row = xem7310_pins.loc[(xem7310_pins['Connector'] == connector) & (xem7310_pins['Pin'] == int(connector_pin))]
        pin.fpga_pin = row['FPGA Pin'].item()
        pin.io_standard = row['XDC IOStandard'].item()

    return pin_list

# Function to group pins with numbered names into vectors. Ex. ds5_sclk -> ds_sclk[5]
# This functions expects that duplicate names were already removed.
def group_vectors(data_frame):
    print('Grouping vectors...')

    # Function to take in a Series and return a Series with no numbers in the values
    def no_number_key(series):
        for i in range(len(series)):
            data = series.iat[i]
            new_data = data
            for j in range(10):
                new_data = new_data.replace(str(j), '')
            series.iat[i] = new_data
        return series

    # Currently sorted by MC2-ODDS, MC2-EVENS, MC1-ODDS, MC1-EVEN matching the schematic reading left to right
    data_frame = data_frame.sort_values(by='Name', key=lambda s: no_number_key(s))
    # Now sorted by the pin names without any numbers to group like-named pins together

    # Go through every row checking it against every other row for a match
    error_names = {}
    for row_number in range(len(data_frame)):
        current_name = data_frame.iloc[row_number]['Name']

        # Skip empty string names
        if current_name == '':
            continue

        # Skip any names we have already grouped into vectors
        if '[' in current_name:
            continue

        # Function to determine whether a string has a number in it
        def has_number(string):
            return any(char.isdigit() for char in string)

        # Check for numbers in the name to reduce time searching through the DataFrame
        if has_number(current_name):
            # Search for similar names removing each number individually
            matched = False
            for char in current_name:
                if char.isdigit():
                    # Found a number, check the rest of the names to see if they are similar
                    # for i in range(row_number + 1, len(data_frame) - 1):
                    for i in (list(range(row_number + 1, len(data_frame))) + list(range(row_number))):
                        compare_name = data_frame.iloc[i]['Name'] # Loop through all remaining names

                        # Make sure the character we found is not in an index out of range for the name we are searching
                        char_position = current_name.index(char)
                        if char_position > len(compare_name) - 1:
                            continue

                        compare_vector_index = compare_name[char_position] # The index for this name if it gets turned into a vector
                        if current_name[:char_position] + current_name[char_position + 1:] == (compare_name[:char_position] + compare_name[char_position + 1:]):
                            # All the same except for that character
                            matched = True
                            # Expects duplicates were removed in match_pins_to_names()
                            # Change the name we found into a vector
                            data_frame.iloc[i].at['Name'] = compare_name[:char_position] + compare_name[char_position + 1:] + f'[{compare_vector_index}]'
                            # Do not change the current_name into a vector yet, find all other matches first
                if matched:
                    # Found all matches earlier, now change current_name to a vector and stop looking for numbers to replace
                    data_frame.iloc[row_number].at['Name'] = current_name[:char_position] + current_name[char_position + 1:] + f'[{char}]'
                    break
            continue

    # Allow user to fix error names
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
                
    return data_frame

# Function to create a constraints file from a DataFrame with columns Pin, FPGA Pin, Name, IOStandard
def create_constraints(data_frame):
    print('Creating constraints file...')
    beginning_str = '''# XEM7310 - Xilinx constraints file
#
# Pin mappings for the XEM7310.  Use this as a template and comment out
# the pins that are not used in your design.  (By default, map will fail
# if this file contains constraints for signals not in your design).
#
# Copyright (c) 2004-2016 Opal Kelly Incorporated
############################################################################

set_property CFGBVS GND[current_design]
set_property CONFIG_VOLTAGE 1.8 [current_design]
set_property BITSTREAM.GENERAL.COMPRESS True [current_design]

############################################################################
## FrontPanel Host Interface
############################################################################
set_property PACKAGE_PIN Y19[get_ports {okHU[0]}]
set_property PACKAGE_PIN R18[get_ports {okHU[1]}]
set_property PACKAGE_PIN R16[get_ports {okHU[2]}]
set_property SLEW FAST[get_ports {okHU[*]}]
set_property IOSTANDARD LVCMOS18[get_ports {okHU[*]}]

set_property PACKAGE_PIN W19[get_ports {okUH[0]}]
set_property PACKAGE_PIN V18[get_ports {okUH[1]}]
set_property PACKAGE_PIN U17[get_ports {okUH[2]}]
set_property PACKAGE_PIN W17[get_ports {okUH[3]}]
set_property PACKAGE_PIN T19[get_ports {okUH[4]}]
set_property IOSTANDARD LVCMOS18[get_ports {okUH[*]}]

set_property PACKAGE_PIN AB22[get_ports {okUHU[0]}]
set_property PACKAGE_PIN AB21[get_ports {okUHU[1]}]
set_property PACKAGE_PIN Y22[get_ports {okUHU[2]}]
set_property PACKAGE_PIN AA21[get_ports {okUHU[3]}]
set_property PACKAGE_PIN AA20[get_ports {okUHU[4]}]
set_property PACKAGE_PIN W22[get_ports {okUHU[5]}]
set_property PACKAGE_PIN W21[get_ports {okUHU[6]}]
set_property PACKAGE_PIN T20[get_ports {okUHU[7]}]
set_property PACKAGE_PIN R19[get_ports {okUHU[8]}]
set_property PACKAGE_PIN P19[get_ports {okUHU[9]}]
set_property PACKAGE_PIN U21[get_ports {okUHU[10]}]
set_property PACKAGE_PIN T21[get_ports {okUHU[11]}]
set_property PACKAGE_PIN R21[get_ports {okUHU[12]}]
set_property PACKAGE_PIN P21[get_ports {okUHU[13]}]
set_property PACKAGE_PIN R22[get_ports {okUHU[14]}]
set_property PACKAGE_PIN P22[get_ports {okUHU[15]}]
set_property PACKAGE_PIN R14[get_ports {okUHU[16]}]
set_property PACKAGE_PIN W20[get_ports {okUHU[17]}]
set_property PACKAGE_PIN Y21[get_ports {okUHU[18]}]
set_property PACKAGE_PIN P17[get_ports {okUHU[19]}]
set_property PACKAGE_PIN U20[get_ports {okUHU[20]}]
set_property PACKAGE_PIN N17[get_ports {okUHU[21]}]
set_property PACKAGE_PIN N14[get_ports {okUHU[22]}]
set_property PACKAGE_PIN V20[get_ports {okUHU[23]}]
set_property PACKAGE_PIN P16[get_ports {okUHU[24]}]
set_property PACKAGE_PIN T18[get_ports {okUHU[25]}]
set_property PACKAGE_PIN V19[get_ports {okUHU[26]}]
set_property PACKAGE_PIN AB20[get_ports {okUHU[27]}]
set_property PACKAGE_PIN P15[get_ports {okUHU[28]}]
set_property PACKAGE_PIN V22[get_ports {okUHU[29]}]
set_property PACKAGE_PIN U18[get_ports {okUHU[30]}]
set_property PACKAGE_PIN AB18[get_ports {okUHU[31]}]
set_property SLEW FAST[get_ports {okUHU[*]}]
set_property IOSTANDARD LVCMOS18[get_ports {okUHU[*]}]

set_property PACKAGE_PIN N13[get_ports {okAA}]
set_property IOSTANDARD LVCMOS18[get_ports {okAA}]


create_clock - name okUH0 - period 9.920 [get_ports {okUH[0]}]

set_input_delay - add_delay - max - clock[get_clocks {okUH0}]  8.000 [get_ports {okUH[*]}]
set_input_delay - add_delay - min - clock[get_clocks {okUH0}] 10.000 [get_ports {okUH[*]}]
set_multicycle_path - setup - from [get_ports {okUH[*]}] 2

set_input_delay - add_delay - max - clock[get_clocks {okUH0}]  8.000 [get_ports {okUHU[*]}]
set_input_delay - add_delay - min - clock[get_clocks {okUH0}]  2.000 [get_ports {okUHU[*]}]
set_multicycle_path - setup - from [get_ports {okUHU[*]}] 2

set_output_delay - add_delay - max - clock[get_clocks {okUH0}]  2.000 [get_ports {okHU[*]}]
set_output_delay - add_delay - min - clock[get_clocks {okUH0}] - 0.500 [get_ports {okHU[*]}]

set_output_delay - add_delay - max - clock[get_clocks {okUH0}]  2.000 [get_ports {okUHU[*]}]
set_output_delay - add_delay - min - clock[get_clocks {okUH0}] - 0.500 [get_ports {okUHU[*]}]


############################################################################
## System Clock
############################################################################
set_property IOSTANDARD LVDS_25[get_ports {sys_clkp}]
set_property PACKAGE_PIN W11[get_ports {sys_clkp}]

set_property IOSTANDARD LVDS_25[get_ports {sys_clkn}]
set_property PACKAGE_PIN W12[get_ports {sys_clkn}]

set_property DIFF_TERM FALSE[get_ports {sys_clkp}]

create_clock - name sys_clk - period 5 [get_ports sys_clkp]
set_clock_groups - asynchronous - group[get_clocks {sys_clk}] - group[get_clocks {mmcm0_clk0 okUH0}]

############################################################################
## User Reset
############################################################################
set_property PACKAGE_PIN Y18[get_ports {pushreset}]
set_property IOSTANDARD LVCMOS18[get_ports {pushreset}]
set_property SLEW FAST[get_ports {pushreset}]

'''

    # Add each pin
    constraints_str = beginning_str

    # Function that converts a Series of pins like MC2-12 to a Series of floats like 2.12
    def pin_to_float(pin_series):
        pin_float_list = []
        for pin in pin_series:
            pieces = pin.split('-')
            pin_float = int(pieces[0][2]) + int(pieces[1]) / 100
            pin_float_list.append(pin_float)
        return pd.Series(pin_float_list)

    data_frame_ordered = data_frame.sort_values('Pin', key=pin_to_float)

    for i in range(len(data_frame_ordered)):
        pin         = str(data_frame_ordered.iloc[i].at['Pin'])
        fpga_pin    = str(data_frame_ordered.iloc[i].at['FPGA Pin'])
        name        = str(data_frame_ordered.iloc[i].at['Name']).lower()
        io_standard = str(data_frame_ordered.iloc[i].at['IOStandard'])

        if name == 'nan':
            name = ''
        if io_standard == 'nan':
            io_standard = ''
        
        constraints_str += '## ' + pin + '\n'
        
        # Determine if line should be commented
        if name == '':
            # Pin unassigned, comment the line
            constraints_str += '#set_property PACKAGE_PIN ' + fpga_pin + ' [get_ports {}]\n'
            constraints_str += '#set_property IOSTANDARD ' + io_standard + ' [get_ports {}]\n'
        else:
            # Pin assigned, do not comment the line
            constraints_str += 'set_property PACKAGE_PIN ' + fpga_pin + ' [get_ports {' + name + '}]\n'
            constraints_str += 'set_property IOSTANDARD ' + io_standard + ' [get_ports {' + name + '}]\n'

    constraints_file = open('xem7310_generated_constraintes.xdc', 'w')
    constraints_file.write(constraints_str)
    constraints_file.close()

# Function to get a list of all the wires and vectors used in the DataFrame, which must be inputs or outputs according to the schematic.
def get_inouts(data_frame):
    print('Generating a list of wires and vectors...')

    wires_and_vectors = set()
    prefixes = {}

    for row_number in range(len(data_frame)):
        name = data_frame.iloc[row_number].at['Name'].lower()
        if name == '':
            # Unassigned pin, no name, skip
            continue

        if '[' in name:
            # A vector
            name_parts = name.split('[')
            vector_name = name_parts[0]
            vector_num = int(name_parts[1].split(']')[0])
            prefix = prefixes.get(vector_name)

            if prefix == None:
                # No previous range to compare against
                min_val = vector_num
                max_val = vector_num
            else:
                # Must compare against previous range
                min_val = min(vector_num, min_val)
                max_val = max(vector_num, max_val)
                
            prefixes[vector_name] = (max_val, min_val)
            wires_and_vectors.add(vector_name)

        else:
            # A wire
            wires_and_vectors.add(name)

    print('Inputs/Outputs'.center(30, '='))

    sorted_wires_and_vectors = list(wires_and_vectors)
    sorted_wires_and_vectors.sort()

    for name in sorted_wires_and_vectors:
        prefix = prefixes.get(name)
        if prefix == None:
            # Wire
            prefix_str = ''
        else:
            # Vector
            prefix_str = '[' + str(prefix[0]) + ':' + str(prefix[1]) + '] '
        print(prefix_str.ljust(7) + name)

    print(''.center(30, '='))

    return sorted_wires_and_vectors
    
if __name__ == '__main__':
    # File locations
    pin_file_location = 'covg-kicad.lib'
    name_file_location = 'ok_fpga.sch'

    # Create lists
    pin_list = collect_pins(pin_file_location)
    name_list = collect_names(name_file_location)

    # Match together
    pin_list, name_list = match_pins_to_names(pin_list, name_list)

    # Match FPGA pins
    pin_list = match_FPGA_pins(pin_list)

    # Set up DataFrame object
    data_dict = {'Pin': [pin.name for pin in pin_list], 'Name': [name.name for name in name_list], 'FPGA Pin': [
        pin.fpga_pin for pin in pin_list], 'IO': [name.io for name in name_list], 'IOStandard': [pin.io_standard for pin in pin_list]}
    data_frame = pd.DataFrame(data=data_dict)

    # Group like names into vectors
    data_frame = group_vectors(data_frame)

    # Change the IOSTANDARD for LVDS signals to LVDS_25
    for row_number in range(len(data_frame)):
        row = data_frame.iloc[row_number]
        name = row.at['Name'].lower()
        last_letters = name.split('[')[0][-2:]
        if (last_letters == '_p') or (last_letters == '_n'):
            # This is an LVDS signal
            row.at['IOStandard'] = 'LVDS_25'

    # Write to spreadsheet
    print('Creating spreadsheet...')
    # Return to original sort -> MC2-ODDS, MC2-EVENS, MC1-ODDS, MC1-EVEN matching the schematic reading left to right
    data_frame = data_frame.sort_index()
    data_frame.to_excel('pins.xlsx')

    # Write the constraints file
    create_constraints(data_frame)

    # Get all wires and vectors used
    inouts = get_inouts(data_frame)

    print('Done')
