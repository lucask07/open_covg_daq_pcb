# Script to create a constraints file for the FPGA ports using the KiCAD schematic after it has been turned into a netlist.
# How to generate the netlist:
#   covg_daq_v2.sch -> Tools -> Generate Netlist File... -> Generate Netlist

import pandas as pd

# Open file, put lines in a list
netlist_file_location = 'C:/Users/stro4149/Desktop/open_covg_daq_pcb/covg_daq_v2_pcbnew.net'
print(f'Opening netlist file at: {netlist_file_location}')
netlist_file = open(netlist_file_location, 'r')
netlist_lines = netlist_file.readlines()
netlist_file.close()
pins = {}

# Find beginning of nets
line_number = 0
line = netlist_lines[line_number]
while '(net ' not in line:
    line_number += 1
    line = netlist_lines[line_number]
print(f'Nets begin at line {line_number}')
    
# Loop through the rest of the lines
for line_number in range(line_number, len(netlist_lines)):
    print(f'Line {line_number}: ', end='')
    line = netlist_lines[line_number].strip()

    # Check if the line is a net or a node
    if '(net ' in line:
        print('Net - ', end='')
        name = line.split('/')[-1][:-1] # Name is after the last '/' and before the last character, ')'
        print(name)

        # Need to find the matching pin for this net
        pin_found = False

    elif '(node ' in line:
        if pin_found: # If we already have the matching pin for this net, we do not to look for it again
            print('SKIP')
            continue
        else:
            print('Node - ', end='')
            pin_start = line.find('pin ') + len('pin ')
            pin_end = line[pin_start:].find(')') + pin_start
            pin = line[pin_start:pin_end]
            print(pin)

            # Found the matching pin for this net
            pin_found = True

            # Store in the dictionary
            pins[name] = pin
    else:
        print('ERROR')

# Store the pins dictionary in a spreadsheet
print('Creating spreadsheet...')
print(pins)
data_dict = {'Name': [], 'Pin': []}
for name in pins:
    data_dict['Name'].append(name)
    data_dict['Pin'].append(pins[name])
data_frame = pd.DataFrame(data=data_dict)
print(data_frame)
data_frame.to_excel('pins.xlsx')

# Store the pins in a text file
# TODO: change this to write the constraints file
print('Creating text file...')
txt_str = ''
for name in pins:
    txt_str += pins[name] + ' : ' + name + '\n'

txt_file = open('pins.txt', 'w')
txt_file.write(txt_str)
txt_file.close()

print('Done')