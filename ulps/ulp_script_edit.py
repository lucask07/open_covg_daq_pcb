# Lucas J. Koerner
# 2020/05/20
# parse script files and rename nets based on an excel file
# koerner.lucas@stthomas.edu
# University of St. Thomas

'''
Parse the script files 

2020/5/29: 
status: working
	
ToDo: replace most_recent_pin to be from a signal name

Replaces 'test_name_name' in the file net_draw_label.scr
using the values found in an excel spreadsheet

The script net_draw_label.scr is created by the ULP find_name_pins.ulp 

'''

# standard library imports
import time
import sys

# imports that may need installation
import pandas as pd
script_file = 'net_draw_label.scr'  # input script file to be read 
script_file_edit = 'net_draw_label_edit.scr'  # file with test_net_name replaced based on Excel
excel_file = '/Users/koer2434/Documents/eagle/projects/open_covg_daq_pcb/documentation/signals/XEM6310.xlsx'
df = pd.read_excel(excel_file, sheet_name='XEM6310')

most_recent_pin = ''

with open(script_file, 'r') as f:
	with open(script_file_edit, 'w') as f2:
	    for l in f:
	        if 'OK1.' in l:
	            most_recent_pin = l.split('OK1.')[1].rstrip()
	            jumper = most_recent_pin.split('-')[0]
	            pin_num = int(most_recent_pin.split('-')[1])
	    
	            idx = ((df.Connector == jumper) & (df.Pin == pin_num)) 
	            print(df[idx].Description)
	            print('Most recent pin = {}'.format(most_recent_pin))
	        
	        if 'NET' in l:
	        	l_write = l.replace('test_net_name', most_recent_pin)
	        else: 
	        	l_write = l
	        f2.write(l_write)