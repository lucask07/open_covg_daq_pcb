EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 9
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
P 1250 6150
F 0 "J?" H 1680 6196 50  0000 L CNN
F 1 "HDMI_A" H 1680 6105 50  0000 L CNN
F 2 "" H 1275 6150 50  0001 C CNN
F 3 "https://en.wikipedia.org/wiki/HDMI" H 1275 6150 50  0001 C CNN
	1    1250 6150
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 61D76AA5
P 800 7450
F 0 "#PWR0101" H 800 7200 50  0001 C CNN
F 1 "GND" H 805 7277 50  0001 C CNN
F 2 "" H 800 7450 50  0001 C CNN
F 3 "" H 800 7450 50  0001 C CNN
	1    800  7450
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  7450 950  7450
Wire Wire Line
	950  7450 950  7250
Wire Wire Line
	950  7450 1050 7450
Wire Wire Line
	1450 7450 1450 7250
Connection ~ 950  7450
Wire Wire Line
	1350 7250 1350 7450
Connection ~ 1350 7450
Wire Wire Line
	1350 7450 1450 7450
Wire Wire Line
	1250 7450 1250 7250
Connection ~ 1250 7450
Wire Wire Line
	1250 7450 1350 7450
Wire Wire Line
	1150 7250 1150 7450
Connection ~ 1150 7450
Wire Wire Line
	1150 7450 1250 7450
Wire Wire Line
	1050 7450 1050 7250
Connection ~ 1050 7450
Wire Wire Line
	1050 7450 1150 7450
$Sheet
S 2350 5350 1050 950 
U 6095A697
F0 "adc" 50
F1 "adc.sch" 50
F2 "CNV_P" I R 3400 5400 50 
F3 "CNV_N" I R 3400 5500 50 
F4 "D_N" O R 3400 5600 50 
F5 "DCO_N" O R 3400 5700 50 
F6 "DCO_P" O R 3400 5800 50 
F7 "CLK_N" I R 3400 5900 50 
F8 "CLK_P" I R 3400 6000 50 
F9 "VCM_OUT" O L 2350 6050 50 
F10 "IN_N" I L 2350 5650 50 
F11 "IN_P" I L 2350 5550 50 
F12 "A_EN0" I R 3400 6200 50 
$EndSheet
$Sheet
S 2750 4300 650  350 
U 6095B316
F0 "dac1" 50
F1 "dac.sch" 50
F2 "CSB" I R 3400 4350 50 
F3 "SCLK" I R 3400 4450 50 
F4 "SDI" I R 3400 4550 50 
F5 "OUT" O L 2750 4400 50 
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
Wire Wire Line
	1650 5550 2350 5550
Wire Wire Line
	2350 5650 1650 5650
Wire Wire Line
	2350 6050 1650 6050
$Sheet
S 2750 4850 650  350 
U 60BDA97E
F0 "dac2" 50
F1 "dac.sch" 50
F2 "CSB" I R 3400 4900 50 
F3 "SCLK" I R 3400 5000 50 
F4 "SDI" I R 3400 5100 50 
F5 "OUT" O L 2750 4950 50 
$EndSheet
Wire Wire Line
	1650 5350 1850 5350
Wire Wire Line
	1850 5350 1850 4950
Wire Wire Line
	1850 4950 2750 4950
Wire Wire Line
	2100 5750 2100 4400
Wire Wire Line
	2100 4400 2750 4400
Wire Wire Line
	1650 5750 2100 5750
$EndSCHEMATC
