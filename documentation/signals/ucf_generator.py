# Lucas J. Koerner
# 2020/12/17
# parse UCF file and rename nets based on an excel file
# koerner.lucas@stthomas.edu
# University of St. Thomas

'''
read in constraints.ucf  
and read in the excel file 

Find an FPGA location in UCF 
check for it in the Excel: if its in the excel then name the net in the UCF and change the IOstandard

'''
# standard library imports
import time
import sys
# imports that may need installation
import numpy as np
import pandas as pd

def insert_str(string, str_to_insert, index):
    return string[:index] + str_to_insert + string[index:]

## Files 
ucf_file = 'constraint_file.ucf'  # input UCF to read
ucf_output_file = 'adc_daq_v1.ucf'
excel_file = '/Users/koer2434/Documents/eagle/projects/open_covg_daq_pcb/documentation/signals/XEM6310.xlsx'
df = pd.read_excel(excel_file, sheet_name='XEM6310')

# Options 
IOSTANDARD = True 
COMMENT_OUT = False 

# subsection: skip for now? 
sub_sections = ['FrontPanel Host Interface', 'System Clocks', 
                'User Reset', 'LEDs', 'Flash',
                'DRAM']

most_recent_pin = ''

with open(ucf_file, 'r') as f:
    with open(ucf_output_file, 'w') as f2:
        for l in f:
            if any(ss in l for ss in sub_sections): 
                new_ss = [ss for ss in sub_sections if(ss in l)][0]
                print('found new subsection {}'.format(new_ss))

            if 'NET' in l:
                try:
                    pin_loc = l.split('LOC=')[1].split(' ')[0].strip('"')
                    idx = df['FPGA Pin'] == pin_loc                    
                    net_name = str(df[idx].NET.item())
                    if str(net_name) == 'nan':
                        print('Found nan!. Line = {}'.format(l))
                        f2.write(l)
                    else:
                        print('{}, {}'.format(pin_loc, net_name))
                        l_new = insert_str(l, net_name, l.index('"') + 1)
                        print('New string = {}'.format(l_new))

                        # check IOSTANDARDs 
                        if IOSTANDARD:
                            io_name = str(df[idx].IOStandard.item())
                            if io_name == 'nan':
                                pass
                            else:
                                diff_term = str(df[idx].DiffTerm.item())
                                str_io = 'IOSTANDARD='
                                io_idx = l_new.find(str_io) + len(str_io)
                                sc_idx = l_new.find(';')
                                if diff_term == 'nan':
                                    l_new = l_new[:io_idx] + io_name + l_new[sc_idx:]
                                else:
                                    l_new = l_new[:io_idx] + io_name + ' | DIFF_TERM = TRUE' + l_new[sc_idx:]
                                
                                print('Updated IO: {}'.format(l_new))
                        f2.write(l_new)

                except Exception as e: 
                    print('Error: {}'.format(e))
                    f2.write(l)
            else:
                f2.write(l)