EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 8
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 7150 2200 500  150 
U 6095A38A
F0 "level_shifters" 50
F1 "level_shifters.sch" 50
$EndSheet
$Sheet
S 8900 950  500  150 
U 6095BD4C
F0 "dac_gp" 50
F1 "dac_gp.sch" 50
$EndSheet
$Sheet
S 8900 2300 500  150 
U 6095BE10
F0 "power" 50
F1 "power.sch" 50
$EndSheet
$Sheet
S 7200 900  500  150 
U 6095A302
F0 "ok_fpga" 50
F1 "ok_fpga.sch" 50
$EndSheet
$Comp
L Connector:HDMI_A J?
U 1 1 61D74FD2
P 2000 5950
F 0 "J?" H 2430 5996 50  0000 L CNN
F 1 "HDMI_A" H 2430 5905 50  0000 L CNN
F 2 "" H 2025 5950 50  0001 C CNN
F 3 "https://en.wikipedia.org/wiki/HDMI" H 2025 5950 50  0001 C CNN
	1    2000 5950
	0    -1   1    0   
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 61D76AA5
P 3300 6400
F 0 "#PWR0101" H 3300 6150 50  0001 C CNN
F 1 "GND" H 3305 6227 50  0001 C CNN
F 2 "" H 3300 6400 50  0001 C CNN
F 3 "" H 3300 6400 50  0001 C CNN
	1    3300 6400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3300 6400 3300 6250
Wire Wire Line
	3300 6250 3100 6250
Wire Wire Line
	3300 6250 3300 6150
Wire Wire Line
	3300 5750 3100 5750
Connection ~ 3300 6250
Wire Wire Line
	3100 5850 3300 5850
Connection ~ 3300 5850
Wire Wire Line
	3300 5850 3300 5750
Wire Wire Line
	3300 5950 3100 5950
Connection ~ 3300 5950
Wire Wire Line
	3300 5950 3300 5850
Wire Wire Line
	3100 6050 3300 6050
Connection ~ 3300 6050
Wire Wire Line
	3300 6050 3300 5950
Wire Wire Line
	3300 6150 3100 6150
Connection ~ 3300 6150
Wire Wire Line
	3300 6150 3300 6050
$Sheet
S 1000 3900 1050 950 
U 6095A697
F0 "adc" 50
F1 "adc.sch" 50
F2 "CNV_P" I R 2050 3950 50 
F3 "CNV_N" I R 2050 4050 50 
F4 "D_N" O R 2050 4150 50 
F5 "DCO_N" O R 2050 4250 50 
F6 "DCO_P" O R 2050 4350 50 
F7 "CLK_N" I R 2050 4450 50 
F8 "CLK_P" I R 2050 4550 50 
F9 "VCM_OUT" O L 1000 4650 50 
F10 "IN_N" I L 1000 4200 50 
F11 "IN_P" I L 1000 4100 50 
F12 "A_EN0" I R 2050 4750 50 
$EndSheet
$Sheet
S 2850 3900 650  350 
U 6095B316
F0 "dac" 50
F1 "dac.sch" 50
F2 "CSB" I L 2850 3950 50 
F3 "SCLK" I L 2850 4050 50 
F4 "SDI" I L 2850 4150 50 
F5 "OUT" O R 3500 4000 50 
$EndSheet
$Comp
L Mechanical:MountingHole_Pad H?
U 1 1 60B0A4A6
P 1700 750
F 0 "H?" H 1800 799 50  0000 L CNN
F 1 "MountingHole_Pad" H 1800 708 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_DIN965_Pad" H 1700 750 50  0001 C CNN
F 3 "~" H 1700 750 50  0001 C CNN
	1    1700 750 
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H?
U 1 1 60B0AC43
P 700 750
F 0 "H?" H 800 799 50  0000 L CNN
F 1 "MountingHole_Pad" H 800 708 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_DIN965_Pad" H 700 750 50  0001 C CNN
F 3 "~" H 700 750 50  0001 C CNN
	1    700  750 
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H?
U 1 1 60B0ADFD
P 700 1200
F 0 "H?" H 800 1249 50  0000 L CNN
F 1 "MountingHole_Pad" H 800 1158 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_DIN965_Pad" H 700 1200 50  0001 C CNN
F 3 "~" H 700 1200 50  0001 C CNN
	1    700  1200
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H?
U 1 1 60B0B098
P 1700 1200
F 0 "H?" H 1800 1249 50  0000 L CNN
F 1 "MountingHole_Pad" H 1800 1158 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3_DIN965_Pad" H 1700 1200 50  0001 C CNN
F 3 "~" H 1700 1200 50  0001 C CNN
	1    1700 1200
	1    0    0    -1  
$EndComp
$Sheet
S 8900 3600 500  150 
U 6095A004
F0 "adc_gp" 50
F1 "adc_gp.sch" 50
$EndSheet
$EndSCHEMATC
