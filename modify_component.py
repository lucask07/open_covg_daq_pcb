# Lucas J. Koerner
# 2021/05/20
# parse KiCAD schematic and change fields of components 
# koerner.lucas@stthomas.edu
# University of St. Thomas

'''
2021/06

'''

# standard library imports
import time
import sys

# imports that may need installation
import pandas as pd
in_file = 'power.sch'  # input schematic to be read 
output_file = 'power_mod.sch'  # file with test_net_name replaced based on Excel

new_component = 'F 4 "CC0603MRX7R8BB104"'

replace = [('F 4 "CC0603MRX7R8BB104"', 'F 4 "CL10B104KA8NFNC"'),
			('F 5 "Yageo"','F 5 "Samsung"'),
			('F 6 "20%"', 'F 6 "10%"')]

reset_comp = '$EndComp'

in_replace_part = False

with open(in_file, 'r') as f:
	with open(output_file, 'w') as fout:
		for l in f:
			if new_component in l:
				in_replace_part = True
			elif reset_comp in l:
				in_replace_part = False
			if in_replace_part:
				for r in replace:
					l = l.replace(r[0], r[1])
			print(l)
			#fout.write(l + '\n')
			#else:
			fout.write(l)
