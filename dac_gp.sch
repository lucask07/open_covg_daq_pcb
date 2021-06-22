EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr User 12505 8268
encoding utf-8
Sheet 21 26
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
S 7850 1100 900  400 
U 60BE01FC
F0 "howland_ipump" 50
F1 "howland_ipump.sch" 50
F2 "I_OUT" O R 8750 1250 50 
F3 "CMD" I L 7850 1250 50 
F4 "EN_I" I L 7850 1400 50 
$EndSheet
$Comp
L adc_dac_v1-eagle-import:FRAME_A_L #FRAME1
U 1 1 519C2D15
P 900 6900
AR Path="/6095BD4C/519C2D15" Ref="#FRAME1"  Part="1" 
AR Path="/61B02572/519C2D15" Ref="#FRAME2"  Part="1" 
F 0 "#FRAME2" H 900 6900 50  0001 C CNN
F 1 "FRAME_A_L" H 900 6900 50  0001 C CNN
F 2 "" H 900 6900 50  0001 C CNN
F 3 "" H 900 6900 50  0001 C CNN
	1    900  6900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #GND012
U 1 1 E9B71633
P 4300 2250
AR Path="/6095BD4C/E9B71633" Ref="#GND012"  Part="1" 
AR Path="/61B02572/E9B71633" Ref="#GND0255"  Part="1" 
F 0 "#GND0255" H 4300 2250 50  0001 C CNN
F 1 "GND" H 4200 2150 59  0001 L BNN
F 2 "" H 4300 2250 50  0001 C CNN
F 3 "" H 4300 2250 50  0001 C CNN
	1    4300 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 A7A1DCDA
P 650 1250
AR Path="/6095BD4C/A7A1DCDA" Ref="C1"  Part="1" 
AR Path="/61B02572/A7A1DCDA" Ref="C168"  Part="1" 
F 0 "C168" H 690 1275 59  0000 L BNN
F 1 "0.1u" H 690 1085 59  0000 L BNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 650 1250 50  0001 C CNN
F 3 "" H 650 1250 50  0001 C CNN
F 4 "CC0603MRX7R8BB104" H 650 1250 50  0001 C CNN "Manf#"
F 5 "Yageo" H 690 1375 50  0001 C CNN "Manufacturer_Name"
F 6 "20%" H 690 1375 50  0001 C CNN "Tolerance"
F 7 "25" H 690 1375 50  0001 C CNN "voltage"
	1    650  1250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 46ACB443
P 1050 1200
AR Path="/6095BD4C/46ACB443" Ref="C3"  Part="1" 
AR Path="/61B02572/46ACB443" Ref="C170"  Part="1" 
F 0 "C170" H 1090 1225 59  0000 L BNN
F 1 "0.1u" H 1090 1035 59  0000 L BNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1050 1200 50  0001 C CNN
F 3 "" H 1050 1200 50  0001 C CNN
F 4 "CC0603MRX7R8BB104" H 1050 1200 50  0001 C CNN "Manf#"
F 5 "Yageo" H 1090 1325 50  0001 C CNN "Manufacturer_Name"
F 6 "20%" H 1090 1325 50  0001 C CNN "Tolerance"
F 7 "25" H 1090 1325 50  0001 C CNN "voltage"
	1    1050 1200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #GND01
U 1 1 FC55E54D
P 650 1550
AR Path="/6095BD4C/FC55E54D" Ref="#GND01"  Part="1" 
AR Path="/61B02572/FC55E54D" Ref="#GND0244"  Part="1" 
F 0 "#GND0244" H 650 1550 50  0001 C CNN
F 1 "GND" H 550 1450 59  0001 L BNN
F 2 "" H 650 1550 50  0001 C CNN
F 3 "" H 650 1550 50  0001 C CNN
	1    650  1550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #GND03
U 1 1 10B103BF
P 1050 1550
AR Path="/6095BD4C/10B103BF" Ref="#GND03"  Part="1" 
AR Path="/61B02572/10B103BF" Ref="#GND0246"  Part="1" 
F 0 "#GND0246" H 1050 1550 50  0001 C CNN
F 1 "GND" H 950 1450 59  0001 L BNN
F 2 "" H 1050 1550 50  0001 C CNN
F 3 "" H 1050 1550 50  0001 C CNN
	1    1050 1550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR037
U 1 1 61889133
P 1050 900
AR Path="/6095BD4C/61889133" Ref="#PWR037"  Part="1" 
AR Path="/61B02572/61889133" Ref="#PWR0232"  Part="1" 
F 0 "#PWR0232" H 1050 750 50  0001 C CNN
F 1 "+5V" H 1065 1073 50  0000 C CNN
F 2 "" H 1050 900 50  0001 C CNN
F 3 "" H 1050 900 50  0001 C CNN
	1    1050 900 
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR033
U 1 1 6188B164
P 650 900
AR Path="/6095BD4C/6188B164" Ref="#PWR033"  Part="1" 
AR Path="/61B02572/6188B164" Ref="#PWR0228"  Part="1" 
F 0 "#PWR0228" H 650 750 50  0001 C CNN
F 1 "+3V3" H 665 1073 50  0000 C CNN
F 2 "" H 650 900 50  0001 C CNN
F 3 "" H 650 900 50  0001 C CNN
	1    650  900 
	1    0    0    -1  
$EndComp
$Comp
L covg-kicad:DAC80508ZRTER U5
U 1 1 60A11E5A
P 3100 1600
AR Path="/6095BD4C/60A11E5A" Ref="U5"  Part="1" 
AR Path="/61B02572/60A11E5A" Ref="U58"  Part="1" 
F 0 "U58" H 3100 2488 60  0000 C CNN
F 1 "DAC80508ZRTER" H 3100 2382 60  0000 C CNN
F 2 "Package_DFN_QFN:WQFN-16-1EP_3x3mm_P0.5mm_EP1.6x1.6mm" H 3100 1540 60  0001 C CNN
F 3 "" H 3100 1600 60  0000 C CNN
F 4 "DAC80508MCRTET" H 3100 2588 50  0001 C CNN "Alternate"
F 5 "DAC80508ZCRTET" H 3100 2588 50  0001 C CNN "Manf#"
	1    3100 1600
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR039
U 1 1 60A13242
P 1800 1300
AR Path="/6095BD4C/60A13242" Ref="#PWR039"  Part="1" 
AR Path="/61B02572/60A13242" Ref="#PWR0234"  Part="1" 
F 0 "#PWR0234" H 1800 1150 50  0001 C CNN
F 1 "+3V3" H 1815 1473 50  0000 C CNN
F 2 "" H 1800 1300 50  0001 C CNN
F 3 "" H 1800 1300 50  0001 C CNN
	1    1800 1300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR042
U 1 1 60A13FF9
P 2050 1100
AR Path="/6095BD4C/60A13FF9" Ref="#PWR042"  Part="1" 
AR Path="/61B02572/60A13FF9" Ref="#PWR0237"  Part="1" 
F 0 "#PWR0237" H 2050 950 50  0001 C CNN
F 1 "+5V" H 2065 1273 50  0000 C CNN
F 2 "" H 2050 1100 50  0001 C CNN
F 3 "" H 2050 1100 50  0001 C CNN
	1    2050 1100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #GND011
U 1 1 60A174FD
P 4000 2000
AR Path="/6095BD4C/60A174FD" Ref="#GND011"  Part="1" 
AR Path="/61B02572/60A174FD" Ref="#GND0254"  Part="1" 
F 0 "#GND0254" H 4000 2000 50  0001 C CNN
F 1 "GND" H 3900 1900 59  0001 L BNN
F 2 "" H 4000 2000 50  0001 C CNN
F 3 "" H 4000 2000 50  0001 C CNN
	1    4000 2000
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_US R?
U 1 1 60A29EE1
P 1750 2000
AR Path="/6095A38A/60A29EE1" Ref="R?"  Part="1" 
AR Path="/6095BD4C/60A29EE1" Ref="R9"  Part="1" 
AR Path="/61B02572/60A29EE1" Ref="R260"  Part="1" 
F 0 "R260" H 1600 2100 59  0000 L BNN
F 1 "0" H 1600 1800 59  0000 L BNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 1750 2000 50  0001 C CNN
F 3 "" H 1750 2000 50  0001 C CNN
F 4 "RC0603FR-070RL" H 1600 2200 50  0001 C CNN "Manf#"
F 5 "0.1W" H 1600 2200 50  0001 C CNN "Power"
	1    1750 2000
	0    -1   -1   0   
$EndComp
$Comp
L covg-kicad:TMUX6136PWR U10
U 1 1 60B8C0FB
P 9450 2100
AR Path="/6095BD4C/60B8C0FB" Ref="U10"  Part="1" 
AR Path="/61B02572/60B8C0FB" Ref="U63"  Part="1" 
F 0 "U63" H 10125 2387 60  0000 C CNN
F 1 "TMUX6136PWR" H 10125 2281 60  0000 C CNN
F 2 "Package_SO:TSSOP-16_4.4x5mm_P0.65mm" H 10100 2200 60  0001 C CNN
F 3 "" H 9450 2100 60  0000 C CNN
F 4 "TMUX6136PWR" H 10125 2487 50  0001 C CNN "Manf#"
	1    9450 2100
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR053
U 1 1 60BE8CAA
P 9500 2850
AR Path="/6095BD4C/60BE8CAA" Ref="#PWR053"  Part="1" 
AR Path="/61B02572/60BE8CAA" Ref="#PWR0248"  Part="1" 
F 0 "#PWR0248" H 9500 2700 50  0001 C CNN
F 1 "+15V" V 9515 2978 50  0000 L CNN
F 2 "" H 9500 2850 50  0001 C CNN
F 3 "" H 9500 2850 50  0001 C CNN
	1    9500 2850
	0    -1   -1   0   
$EndComp
$Comp
L power:-15V #PWR054
U 1 1 60BEA680
P 9500 3050
AR Path="/6095BD4C/60BEA680" Ref="#PWR054"  Part="1" 
AR Path="/61B02572/60BEA680" Ref="#PWR0249"  Part="1" 
F 0 "#PWR0249" H 9500 3150 50  0001 C CNN
F 1 "-15V" V 9515 3178 50  0000 L CNN
F 2 "" H 9500 3050 50  0001 C CNN
F 3 "" H 9500 3050 50  0001 C CNN
	1    9500 3050
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #GND021
U 1 1 60BEBA41
P 9500 2950
AR Path="/6095BD4C/60BEBA41" Ref="#GND021"  Part="1" 
AR Path="/61B02572/60BEBA41" Ref="#GND0264"  Part="1" 
F 0 "#GND0264" H 9500 2950 50  0001 C CNN
F 1 "GND" H 9400 2850 59  0001 L BNN
F 2 "" H 9500 2950 50  0001 C CNN
F 3 "" H 9500 2950 50  0001 C CNN
	1    9500 2950
	0    1    1    0   
$EndComp
$Comp
L covg-kicad:TMUX6136PWR U11
U 1 1 60C5A3EA
P 9750 5250
AR Path="/6095BD4C/60C5A3EA" Ref="U11"  Part="1" 
AR Path="/61B02572/60C5A3EA" Ref="U64"  Part="1" 
F 0 "U64" H 10425 5537 60  0000 C CNN
F 1 "TMUX6136PWR" H 10425 5431 60  0000 C CNN
F 2 "Package_SO:TSSOP-16_4.4x5mm_P0.65mm" H 10400 5350 60  0001 C CNN
F 3 "" H 9750 5250 60  0000 C CNN
F 4 "TMUX6136PWR" H 10425 5637 50  0001 C CNN "Manf#"
	1    9750 5250
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR055
U 1 1 60C5A432
P 9650 6000
AR Path="/6095BD4C/60C5A432" Ref="#PWR055"  Part="1" 
AR Path="/61B02572/60C5A432" Ref="#PWR0250"  Part="1" 
F 0 "#PWR0250" H 9650 5850 50  0001 C CNN
F 1 "+15V" V 9665 6128 50  0000 L CNN
F 2 "" H 9650 6000 50  0001 C CNN
F 3 "" H 9650 6000 50  0001 C CNN
	1    9650 6000
	0    -1   -1   0   
$EndComp
$Comp
L power:-15V #PWR056
U 1 1 60C5A439
P 9650 6200
AR Path="/6095BD4C/60C5A439" Ref="#PWR056"  Part="1" 
AR Path="/61B02572/60C5A439" Ref="#PWR0251"  Part="1" 
F 0 "#PWR0251" H 9650 6300 50  0001 C CNN
F 1 "-15V" V 9665 6328 50  0000 L CNN
F 2 "" H 9650 6200 50  0001 C CNN
F 3 "" H 9650 6200 50  0001 C CNN
	1    9650 6200
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #GND022
U 1 1 60C5A440
P 9700 6100
AR Path="/6095BD4C/60C5A440" Ref="#GND022"  Part="1" 
AR Path="/61B02572/60C5A440" Ref="#GND0265"  Part="1" 
F 0 "#GND0265" H 9700 6100 50  0001 C CNN
F 1 "GND" H 9600 6000 59  0001 L BNN
F 2 "" H 9700 6100 50  0001 C CNN
F 3 "" H 9700 6100 50  0001 C CNN
	1    9700 6100
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R?
U 1 1 617C87E1
P 1850 1700
AR Path="/6095A38A/617C87E1" Ref="R?"  Part="1" 
AR Path="/6095BD4C/617C87E1" Ref="R10"  Part="1" 
AR Path="/61B02572/617C87E1" Ref="R261"  Part="1" 
F 0 "R261" H 1700 1800 59  0000 L BNN
F 1 "33" H 1900 1800 59  0000 L BNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 1850 1700 50  0001 C CNN
F 3 "" H 1850 1700 50  0001 C CNN
F 4 "RC0603FR-0733RL" H 1700 1900 50  0001 C CNN "Manf#"
F 5 "0.1W" H 1700 1900 50  0001 C CNN "Power"
F 6 "1%" H 1700 1900 50  0001 C CNN "Tolerance"
	1    1850 1700
	0    -1   -1   0   
$EndComp
Text HLabel 2000 1500 0    50   Input ~ 0
SCLK
Text HLabel 2000 1600 0    50   Input ~ 0
SDI
Text HLabel 1650 1700 0    50   Output ~ 0
SDO
Text HLabel 2000 1800 0    50   Input ~ 0
CSB
Text Label 4100 1100 0    50   ~ 0
OUT0
Text Label 4100 1200 0    50   ~ 0
OUT1
Text Label 4100 1300 0    50   ~ 0
OUT2
Text Label 4100 1400 0    50   ~ 0
OUT3
Text Label 4100 1500 0    50   ~ 0
OUT4
Text Label 4100 1600 0    50   ~ 0
OUT5
Text Label 4100 1700 0    50   ~ 0
OUT6
Text Label 4100 1800 0    50   ~ 0
OUT7
Text Label 4450 1200 0    50   ~ 0
OUT[0..7]
Text Notes 550  1900 0    50   ~ 0
Use internal reference \n 0.1 Ohm output impedance
Text Notes 10050 3300 0    50   ~ 0
0 ==> B to D out\n1 ==> A to D out
Text Label 11100 2200 0    50   ~ 0
DAC_CAL0
Text Label 11100 2300 0    50   ~ 0
DAC_CAL1
Text Label 9350 2100 0    50   ~ 0
ISEL0
Text Label 9350 2200 0    50   ~ 0
ISEL1
Text Notes 10050 6450 0    50   ~ 0
0 ==> B to D out\n1 ==> A to D out
Text Label 11100 5350 0    50   ~ 0
DAC_CAL2
Text Label 11100 5450 0    50   ~ 0
DAC_CAL3
Text Label 9350 5250 0    50   ~ 0
ISEL2
Text Label 9350 5350 0    50   ~ 0
ISEL3
Text HLabel 11650 2100 1    50   Output ~ 0
DAC_CAL[0..3]
Text HLabel 9150 3450 2    50   Input ~ 0
ISEL[0..3]
Text HLabel 3350 3150 2    50   Output ~ 0
BP_OUT[4..7]
Text Label 9150 3950 0    50   ~ 0
ISEL[0..3]
Wire Wire Line
	4000 2100 4300 2100
Wire Wire Line
	1050 900  1050 1050
Wire Wire Line
	1050 1350 1050 1550
Wire Wire Line
	650  900  650  1100
Wire Wire Line
	650  1550 650  1400
Wire Wire Line
	4300 2100 4300 2250
Wire Wire Line
	1800 1300 2200 1300
Wire Wire Line
	2050 1100 2200 1100
Wire Wire Line
	2200 1500 2000 1500
Wire Wire Line
	2200 1600 2000 1600
Wire Wire Line
	2200 1700 2000 1700
Wire Wire Line
	4000 1100 4350 1100
Wire Wire Line
	4000 1200 4350 1200
Wire Wire Line
	4000 1300 4350 1300
Wire Wire Line
	4000 1400 4350 1400
Wire Wire Line
	4000 1500 4350 1500
Wire Wire Line
	4000 1600 4350 1600
Wire Wire Line
	4000 1700 4350 1700
Wire Wire Line
	4000 1800 4350 1800
Wire Wire Line
	2000 1800 2200 1800
Wire Bus Line
	4450 1200 4850 1200
Wire Wire Line
	1350 2000 1600 2000
Wire Wire Line
	1900 2000 2200 2000
Wire Wire Line
	9500 2850 9450 2850
Wire Wire Line
	9500 3050 9450 3050
Wire Wire Line
	9500 2950 9450 2950
Wire Wire Line
	8750 1250 8950 1250
Wire Wire Line
	8950 1250 8950 2400
Wire Wire Line
	8950 2400 8950 2600
Wire Wire Line
	8950 2400 9450 2400
Wire Wire Line
	8950 2600 9450 2600
Wire Wire Line
	9450 2100 9250 2100
Wire Wire Line
	9450 2200 9250 2200
Wire Wire Line
	10800 2200 11550 2200
Wire Wire Line
	10800 2300 11550 2300
Wire Wire Line
	9650 6000 9750 6000
Wire Wire Line
	9650 6200 9750 6200
Wire Wire Line
	9700 6100 9750 6100
Wire Wire Line
	8950 5550 8950 5750
Wire Wire Line
	8950 5750 9750 5750
Wire Wire Line
	9750 5250 9250 5250
Wire Wire Line
	9750 5350 9250 5350
Wire Wire Line
	11100 5350 11550 5350
Wire Wire Line
	11100 5450 11550 5450
Wire Wire Line
	8950 2600 8950 5550
Wire Wire Line
	8950 5550 9750 5550
Wire Wire Line
	1700 1700 1650 1700
Wire Wire Line
	7500 1400 7850 1400
Entry Wire Line
	4350 1100 4450 1200
Entry Wire Line
	4350 1200 4450 1300
Entry Wire Line
	4350 1300 4450 1400
Entry Wire Line
	4350 1400 4450 1500
Entry Wire Line
	4350 1500 4450 1600
Entry Wire Line
	4350 1600 4450 1700
Entry Wire Line
	4350 1700 4450 1800
Entry Wire Line
	4350 1800 4450 1900
Entry Wire Line
	4350 1100 4450 1200
Entry Wire Line
	9150 2000 9250 2100
Entry Wire Line
	9150 2100 9250 2200
Entry Wire Line
	11550 2200 11650 2100
Entry Wire Line
	11550 2300 11650 2200
Entry Wire Line
	11650 5350 11550 5450
Entry Wire Line
	11550 5350 11650 5250
Entry Wire Line
	9150 5150 9250 5250
Entry Wire Line
	9150 5250 9250 5350
Connection ~ 8950 2400
Connection ~ 8950 2600
Connection ~ 8950 5550
$Sheet
S 5500 2350 1000 750 
U 60F0C6CC
F0 "dual_biploar0" 50
F1 "dual_bipolar_amp.sch" 50
F2 "VREF" I L 5500 2700 50 
F3 "IN0" I L 5500 2500 50 
F4 "IN1" I L 5500 2900 50 
F5 "BP_OUT0" O R 6500 2500 50 
F6 "BP_OUT1" O R 6500 2900 50 
$EndSheet
Text HLabel 7500 1400 0    50   Input ~ 0
EN_IPUMP
Text Notes 7100 1500 0    50   ~ 0
high-Z will enable
Text HLabel 4850 1200 2    50   Output ~ 0
OUT[0..7]
Wire Wire Line
	5150 2500 5500 2500
Wire Wire Line
	5500 2900 5150 2900
Text Label 1350 2350 1    50   ~ 0
REF
Wire Wire Line
	5500 2700 5150 2700
Text Label 5200 2700 0    50   ~ 0
REF
Text Label 5200 2500 0    50   ~ 0
OUT0
Text Label 5200 2900 0    50   ~ 0
OUT1
Text Label 6600 2500 0    50   ~ 0
BP_OUT0
Text Label 6600 2900 0    50   ~ 0
BP_OUT1
Wire Wire Line
	7000 1250 7850 1250
Wire Wire Line
	7000 1250 7000 2500
$Sheet
S 5500 5500 1000 750 
U 60DB74B6
F0 "dual_bipolar1" 50
F1 "dual_bipolar_amp.sch" 50
F2 "VREF" I L 5500 5850 50 
F3 "IN0" I L 5500 5650 50 
F4 "IN1" I L 5500 6050 50 
F5 "BP_OUT0" O R 6500 5650 50 
F6 "BP_OUT1" O R 6500 6050 50 
$EndSheet
Wire Wire Line
	5150 5650 5500 5650
Wire Wire Line
	5500 6050 5150 6050
Wire Wire Line
	5500 5850 5150 5850
Text Label 5200 5850 0    50   ~ 0
REF
Text Label 5200 5650 0    50   ~ 0
OUT2
Text Label 5200 6050 0    50   ~ 0
OUT3
Text Label 6600 5650 0    50   ~ 0
BP_OUT2
Text Label 6600 6050 0    50   ~ 0
BP_OUT3
Wire Wire Line
	7450 5850 9750 5850
Entry Wire Line
	7000 6050 7100 5950
Entry Wire Line
	7000 5650 7100 5750
Entry Wire Line
	7000 2500 7100 2600
Entry Wire Line
	7000 2900 7100 3000
Wire Wire Line
	7000 2500 9450 2500
Wire Wire Line
	6500 2500 7000 2500
Connection ~ 7000 2500
Wire Wire Line
	7450 2900 7450 2700
Wire Wire Line
	7450 6050 7450 5850
Wire Wire Line
	9450 2700 7450 2700
Wire Bus Line
	7100 2600 7100 5950
Text Label 7100 3600 0    50   ~ 0
BP_OUT[0..3]
$Sheet
S 1750 2900 1000 750 
U 60E9FAAA
F0 "dual_biploar2" 50
F1 "dual_bipolar_amp.sch" 50
F2 "VREF" I L 1750 3250 50 
F3 "IN0" I L 1750 3050 50 
F4 "IN1" I L 1750 3450 50 
F5 "BP_OUT0" O R 2750 3050 50 
F6 "BP_OUT1" O R 2750 3450 50 
$EndSheet
Wire Wire Line
	1400 3050 1750 3050
Wire Wire Line
	1750 3450 1400 3450
Wire Wire Line
	1750 3250 1400 3250
Text Label 1450 3250 0    50   ~ 0
REF
Text Label 1450 3050 0    50   ~ 0
OUT4
Text Label 1450 3450 0    50   ~ 0
OUT5
Text Label 2850 3050 0    50   ~ 0
BP_OUT4
Text Label 2850 3450 0    50   ~ 0
BP_OUT5
Entry Wire Line
	3250 3050 3350 3150
Entry Wire Line
	3250 3450 3350 3550
Text Label 3350 4150 0    50   ~ 0
BP_OUT[4..7]
Wire Wire Line
	2750 3050 3250 3050
Wire Wire Line
	2750 3450 3250 3450
Wire Wire Line
	1350 2350 1350 2000
$Sheet
S 1750 5850 1000 750 
U 60EB6FD5
F0 "dual_bipolar3" 50
F1 "dual_bipolar_amp.sch" 50
F2 "VREF" I L 1750 6200 50 
F3 "IN0" I L 1750 6000 50 
F4 "IN1" I L 1750 6400 50 
F5 "BP_OUT0" O R 2750 6000 50 
F6 "BP_OUT1" O R 2750 6400 50 
$EndSheet
Wire Wire Line
	1400 6000 1750 6000
Wire Wire Line
	1750 6400 1400 6400
Wire Wire Line
	1750 6200 1400 6200
Text Label 1450 6200 0    50   ~ 0
REF
Text Label 1450 6000 0    50   ~ 0
OUT6
Text Label 1450 6400 0    50   ~ 0
OUT7
Text Label 2850 6000 0    50   ~ 0
BP_OUT6
Text Label 2850 6400 0    50   ~ 0
BP_OUT7
Entry Wire Line
	3250 6000 3350 6100
Entry Wire Line
	3250 6400 3350 6500
Wire Wire Line
	2750 6000 3250 6000
Wire Wire Line
	2750 6400 3250 6400
Wire Wire Line
	6500 5650 9750 5650
Wire Wire Line
	6500 2900 7450 2900
Wire Wire Line
	6500 6050 7450 6050
Wire Bus Line
	11650 2100 11650 5350
Wire Bus Line
	9150 2000 9150 5250
Wire Bus Line
	3350 3150 3350 6500
Wire Bus Line
	4450 1200 4450 1900
$EndSCHEMATC
