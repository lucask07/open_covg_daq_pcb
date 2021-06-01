EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr User 12505 8743
encoding utf-8
Sheet 6 10
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L covg-kicad:OPALKELLY_XEM7310 OK1
U 1 1 DA224995
P 2500 2800
F 0 "OK1" H 2700 4810 70  0000 R BNN
F 1 "OPALKELLY_XEM6310" H 2500 2800 50  0001 C CNN
F 2 "covg-kicad:OPALKELLY_XEM6010" H 2500 2800 50  0001 C CNN
F 3 "" H 2500 2800 50  0001 C CNN
	1    2500 2800
	1    0    0    -1  
$EndComp
$Comp
L covg-kicad:OPALKELLY_XEM7310 OK1
U 2 1 DA224999
P 5000 2800
F 0 "OK1" H 5200 4810 70  0000 R BNN
F 1 "OPALKELLY_XEM6310" H 5000 2800 50  0001 C CNN
F 2 "covg-kicad:OPALKELLY_XEM6010" H 5000 2800 50  0001 C CNN
F 3 "" H 5000 2800 50  0001 C CNN
	2    5000 2800
	1    0    0    -1  
$EndComp
$Comp
L covg-kicad:OPALKELLY_XEM7310 OK1
U 3 1 DA22499D
P 7800 2800
F 0 "OK1" H 8000 4810 70  0000 R BNN
F 1 "OPALKELLY_XEM6310" H 7800 2800 50  0001 C CNN
F 2 "covg-kicad:OPALKELLY_XEM6010" H 7800 2800 50  0001 C CNN
F 3 "" H 7800 2800 50  0001 C CNN
	3    7800 2800
	1    0    0    -1  
$EndComp
$Comp
L covg-kicad:OPALKELLY_XEM7310 OK1
U 4 1 DA224981
P 10500 2800
F 0 "OK1" H 10700 4810 70  0000 R BNN
F 1 "OPALKELLY_XEM6310" H 10500 2800 50  0001 C CNN
F 2 "covg-kicad:OPALKELLY_XEM6010" H 10500 2800 50  0001 C CNN
F 3 "" H 10500 2800 50  0001 C CNN
	4    10500 2800
	1    0    0    -1  
$EndComp
$Comp
L adc_dac_v1-eagle-import:FRAME_A_L #FRAME1
U 1 1 7D0788B5
P 900 7900
F 0 "#FRAME1" H 900 7900 50  0001 C CNN
F 1 "FRAME_A_L" H 900 7900 50  0001 C CNN
F 2 "" H 900 7900 50  0001 C CNN
F 3 "" H 900 7900 50  0001 C CNN
	1    900  7900
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R153
U 1 1 19684600
P 3050 6100
F 0 "R153" H 2900 6159 59  0000 L BNN
F 1 "4.7k" H 2900 5970 59  0000 L BNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3050 6100 50  0001 C CNN
F 3 "" H 3050 6100 50  0001 C CNN
	1    3050 6100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R154
U 1 1 B3900895
P 3350 6200
F 0 "R154" H 3200 6259 59  0000 L BNN
F 1 "4.7k" H 3200 6070 59  0000 L BNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3350 6200 50  0001 C CNN
F 3 "" H 3350 6200 50  0001 C CNN
	1    3350 6200
	1    0    0    -1  
$EndComp
Text GLabel 750  5700 2    70   BiDi ~ 0
D0_CSB
Text GLabel 3000 2900 2    50   BiDi ~ 0
D0_CSB
Text GLabel 750  5800 2    70   BiDi ~ 0
D0_SDI
Text GLabel 3000 3000 2    50   BiDi ~ 0
D0_SDI
Text GLabel 750  5900 2    70   BiDi ~ 0
D0_SCLK
Text GLabel 3000 3100 2    50   BiDi ~ 0
D0_SCLK
Text Label 750  6000 0    70   ~ 0
GP_0
Text Label 5500 3800 0    50   ~ 0
GP_0
Text Label 750  6100 0    70   ~ 0
GP_1
Text Label 3000 3900 0    50   ~ 0
GP_1
Text Label 750  6200 0    70   ~ 0
GP_2
Text Label 5500 3900 0    50   ~ 0
GP_2
Text Label 750  6300 0    70   ~ 0
GP_3
Text Label 3000 4000 0    50   ~ 0
GP_3
Text Label 750  6400 0    70   ~ 0
GP_4
Text Label 5500 4000 0    50   ~ 0
GP_4
Text Label 750  6500 0    70   ~ 0
GP_5
Text Label 3000 4100 0    50   ~ 0
GP_5
Text Label 2150 5700 0    70   ~ 0
GP_6
Text Label 5500 4100 0    50   ~ 0
GP_6
Text Label 2150 5800 0    70   ~ 0
GP_7
Text Label 3000 4200 0    50   ~ 0
GP_7
Text Label 2150 5900 0    70   ~ 0
GP_8
Text Label 5500 4200 0    50   ~ 0
GP_8
Text Label 2150 6000 0    70   ~ 0
GP_9
Text Label 3000 4300 0    50   ~ 0
GP_9
Text Label 2150 6100 0    70   ~ 0
GP_10
Text Label 5500 4300 0    50   ~ 0
GP_10
Text Label 2150 6200 0    70   ~ 0
GP_11
Text Label 3000 4400 0    50   ~ 0
GP_11
Text Label 2450 6300 0    70   ~ 0
GP_SDA
Text Label 5500 4400 0    50   ~ 0
GP_SDA
Text Label 2450 6400 0    70   ~ 0
GP_SCL
Text Label 3000 4500 0    50   ~ 0
GP_SCL
Text Label 11000 1000 0    50   ~ 0
JP1-4
Text Label 11000 1100 0    50   ~ 0
JP1-6
Text Label 11000 2600 0    50   ~ 0
JP1-36
Text Label 11000 3600 0    50   ~ 0
JP1-56
Text GLabel 11000 3400 2    50   BiDi ~ 0
A1_D_N
Text GLabel 11000 3700 2    50   BiDi ~ 0
A1_DCO_N
Text GLabel 11000 3900 2    50   BiDi ~ 0
A3_CNV_N
Text GLabel 11000 4100 2    50   BiDi ~ 0
A3_D_N
Text GLabel 11000 4300 2    50   BiDi ~ 0
A3_DCO_N
Text GLabel 11000 3300 2    50   BiDi ~ 0
A1_D_P
Text GLabel 11000 4000 2    50   BiDi ~ 0
A3_D_P
Text GLabel 11000 4200 2    50   BiDi ~ 0
A3_DCO_P
Text GLabel 11000 4600 2    50   BiDi ~ 0
A2_CLK_P
Text GLabel 11000 3500 2    50   BiDi ~ 0
A1_DCO_P
Text GLabel 11000 2500 2    50   BiDi ~ 0
A_EN2_HV
Text GLabel 11000 3800 2    50   BiDi ~ 0
A3_CNV_P
Text Label 11000 2800 0    50   ~ 0
JP1-40
Text Label 11000 3000 0    50   ~ 0
JP1-44
Text GLabel 11000 3200 2    50   BiDi ~ 0
A1_CNV_N
Text Label 11000 2700 0    50   ~ 0
JP1-38
Text Label 11000 2900 0    50   ~ 0
JP1-42
Text GLabel 11000 3100 2    50   BiDi ~ 0
A1_CNV_P
Text Label 11000 1500 0    50   ~ 0
JP1-14
Text Label 11000 2000 0    50   ~ 0
JP1-24
Text Label 11000 2100 0    50   ~ 0
JP1-26
Text Label 11000 1900 0    50   ~ 0
JP1-22
Text Label 11000 1800 0    50   ~ 0
JP1-20
Text Label 11000 2200 0    50   ~ 0
JP1-28
Text Label 11000 2300 0    50   ~ 0
JP1-30
Text GLabel 11000 1200 2    50   BiDi ~ 0
LS0_EN
Text Label 11000 1600 0    50   ~ 0
JP1-16
Text Label 11000 1700 0    50   ~ 0
JP1-18
Text Label 11000 1300 0    50   ~ 0
JP1-10
Text GLabel 11000 1400 2    50   BiDi ~ 0
A_EN1
Text Label 8300 1200 0    50   ~ 0
JP1-7
Text Label 8300 1300 0    50   ~ 0
JP1-9
Text Label 8300 1400 0    50   ~ 0
JP1-11
Text Label 8300 1500 0    50   ~ 0
JP1-13
Text Label 8300 900  0    50   ~ 0
JP1-1
Text Label 8300 1000 0    50   ~ 0
JP1-3
Text Label 8300 1100 0    50   ~ 0
JP1-5
Text Label 8300 3300 0    50   ~ 0
JP1-49
Text Label 8300 3400 0    50   ~ 0
JP1-51
Text GLabel 8300 2100 2    50   BiDi ~ 0
A0_CNV_N
Text GLabel 8300 3900 2    50   BiDi ~ 0
A1_CLK_N
Text GLabel 8300 4800 2    50   BiDi ~ 0
A3_CLK_N
Text GLabel 8300 4100 2    50   BiDi ~ 0
A2_CNV_N
Text GLabel 8300 4300 2    50   BiDi ~ 0
A2_D_N
Text GLabel 8300 4500 2    50   BiDi ~ 0
A2_DCO_N
Text GLabel 8300 4600 2    50   BiDi ~ 0
A2_CLK_N
Text GLabel 8300 3800 2    50   BiDi ~ 0
A1_CLK_P
Text GLabel 8300 2000 2    50   BiDi ~ 0
A0_CNV_P
Text Label 8300 3200 0    50   ~ 0
JP1-47
Text GLabel 8300 4700 2    50   BiDi ~ 0
A3_CLK_P
Text GLabel 8300 4000 2    50   BiDi ~ 0
A2_CNV_P
Text GLabel 8300 2300 2    50   BiDi ~ 0
A0_D_N
Text GLabel 8300 4200 2    50   BiDi ~ 0
A2_D_P
Text GLabel 8300 4400 2    50   BiDi ~ 0
A2_DCO_P
Text Label 8300 3100 0    50   ~ 0
JP1-45
Text GLabel 8300 2700 2    50   BiDi ~ 0
A0_CLK_P
Text GLabel 8300 2800 2    50   BiDi ~ 0
A0_CLK_N
Text GLabel 8300 2200 2    50   BiDi ~ 0
A0_D_P
Text GLabel 8300 2500 2    50   BiDi ~ 0
A0_DCO_N
Text Label 8300 2600 0    50   ~ 0
JP1-35
Text Label 8300 3600 0    50   ~ 0
JP1-55
Text GLabel 8300 2400 2    50   BiDi ~ 0
A0_DCO_P
Text Label 8300 3000 0    50   ~ 0
JP1-43
Text Label 8300 2900 0    50   ~ 0
JP1-41
Text Label 8300 1800 0    50   ~ 0
JP1-19
Text Label 8300 1900 0    50   ~ 0
JP1-21
Text Label 8300 1600 0    50   ~ 0
JP1-15
Text Label 8300 1700 0    50   ~ 0
JP1-17
Text Label 5500 900  0    50   ~ 0
JP2-2
Text Label 5500 1000 0    50   ~ 0
JP2-4
Text Label 5500 1100 0    50   ~ 0
JP2-6
Text Label 5500 4600 0    50   ~ 0
JP2-76
Text Label 5500 4500 0    50   ~ 0
JP2-74
Text GLabel 5500 2000 2    50   BiDi ~ 0
LS_IN4
Text Label 5500 2100 0    50   ~ 0
JP2-26
Text GLabel 5500 2200 2    50   BiDi ~ 0
DS_SDA
Text GLabel 5500 2300 2    50   BiDi ~ 0
DS_SCL
Text GLabel 5500 1700 2    50   BiDi ~ 0
ADCS_SDI
Text GLabel 5500 1600 2    50   BiDi ~ 0
ADCS_SDO
Text GLabel 5500 1800 2    50   BiDi ~ 0
ADCS_SCLK
Text GLabel 5500 1900 2    50   BiDi ~ 0
ADCS_CSB
Text Label 5500 1200 0    50   ~ 0
JP2-8
Text Label 5500 2800 0    50   ~ 0
JP2-40
Text Label 5500 2700 0    50   ~ 0
JP2-38
Text Label 5500 2500 0    50   ~ 0
JP2-34
Text GLabel 5500 3700 2    50   BiDi ~ 0
GPIO_3V3_1
Text GLabel 5500 2400 2    50   BiDi ~ 0
DS_CLRB
Text Label 5500 3500 0    50   ~ 0
JP2-54
Text Label 5500 3300 0    50   ~ 0
JP2-50
Text Label 5500 3400 0    50   ~ 0
JP2-52
Text Label 5500 3100 0    50   ~ 0
JP2-46
Text Label 5500 3200 0    50   ~ 0
JP2-48
Text Label 5500 2900 0    50   ~ 0
JP2-42
Text Label 5500 3000 0    50   ~ 0
JP2-44
Text Label 5500 1300 0    50   ~ 0
JP2-10
Text Label 3000 2600 0    50   ~ 0
JP2-35
Text Label 3000 3600 0    50   ~ 0
JP2-55
Text Label 3000 4600 0    50   ~ 0
JP2-75
Text GLabel 3000 2000 2    50   BiDi ~ 0
LS_IN3
Text GLabel 3000 2100 2    50   BiDi ~ 0
LS_IN5
Text Label 3000 1600 0    50   ~ 0
JP2-15
Text GLabel 3000 1700 2    50   BiDi ~ 0
LS_IN0
Text GLabel 3000 1900 2    50   BiDi ~ 0
LS_IN2
Text GLabel 3000 1800 2    50   BiDi ~ 0
LS_IN1
Text GLabel 3000 3800 2    50   BiDi ~ 0
GPIO_3V3_2
Text GLabel 3000 2500 2    50   BiDi ~ 0
D2_CSB
Text GLabel 3000 2200 2    50   BiDi ~ 0
D3_CSB
Text Label 3000 4700 0    50   ~ 0
JP2-77
Text Label 3000 4800 0    50   ~ 0
JP2-79
Text Label 3000 1100 0    50   ~ 0
JP2-5
Text Label 3000 1300 0    50   ~ 0
JP2-9
Text Label 3000 1200 0    50   ~ 0
JP2-7
Text GLabel 3000 2400 2    50   BiDi ~ 0
D3_SCLK
Text GLabel 3000 2300 2    50   BiDi ~ 0
D3_SDI
Text Label 3000 3500 0    50   ~ 0
JP2-53
Text GLabel 3000 3700 2    50   BiDi ~ 0
GPIO_3V3_0
Text GLabel 3000 3300 2    50   BiDi ~ 0
D1_SDI
Text GLabel 3000 3400 2    50   BiDi ~ 0
D1_SCLK
Text GLabel 3000 3200 2    50   BiDi ~ 0
D1_CSB
Text GLabel 3000 1400 2    50   BiDi ~ 0
A_EN3
Text GLabel 3000 2700 2    50   BiDi ~ 0
D2_SDI
Text GLabel 3000 2800 2    50   BiDi ~ 0
D2_SCLK
Text GLabel 11000 2400 2    50   BiDi ~ 0
A0_EN0_HV
Text GLabel 8300 3700 2    50   BiDi ~ 0
A1_EN0_HV
Text GLabel 11000 4400 2    50   BiDi ~ 0
A2_EN0_HV
Text GLabel 11000 4500 2    50   BiDi ~ 0
A3_EN0_HV
Text GLabel 8300 3500 2    50   BiDi ~ 0
A3_EN0_HV
Wire Wire Line
	750  5700 1350 5700
Wire Wire Line
	2900 2900 3000 2900
Wire Wire Line
	750  5800 1350 5800
Wire Wire Line
	2900 3000 3000 3000
Wire Wire Line
	1350 5900 750  5900
Wire Wire Line
	2900 3100 3000 3100
Wire Wire Line
	1350 6000 750  6000
Wire Wire Line
	5400 3800 5500 3800
Wire Wire Line
	1350 6100 750  6100
Wire Wire Line
	2900 3900 3000 3900
Wire Wire Line
	1350 6200 750  6200
Wire Wire Line
	5400 3900 5500 3900
Wire Wire Line
	1350 6300 750  6300
Wire Wire Line
	2900 4000 3000 4000
Wire Wire Line
	1350 6400 750  6400
Wire Wire Line
	5400 4000 5500 4000
Wire Wire Line
	1350 6500 750  6500
Wire Wire Line
	2900 4100 3000 4100
Wire Wire Line
	1350 6600 750  6600
Wire Wire Line
	1850 6600 2150 6600
Wire Wire Line
	1850 6500 2150 6500
Wire Wire Line
	2150 6500 2150 6600
Wire Wire Line
	5400 4700 5500 4700
Wire Wire Line
	5400 4800 5500 4800
Wire Wire Line
	10900 4700 11000 4700
Wire Wire Line
	10900 4800 11000 4800
Wire Wire Line
	10900 900  11000 900 
Wire Wire Line
	5400 1500 5500 1500
Wire Wire Line
	5400 2600 5500 2600
Wire Wire Line
	5400 3600 5500 3600
Wire Wire Line
	2900 1500 3000 1500
Wire Wire Line
	2900 900  3000 900 
Wire Wire Line
	1850 5700 2350 5700
Wire Wire Line
	5400 4100 5500 4100
Wire Wire Line
	1850 5800 2350 5800
Wire Wire Line
	2900 4200 3000 4200
Wire Wire Line
	1850 5900 2350 5900
Wire Wire Line
	5400 4200 5500 4200
Wire Wire Line
	1850 6000 2350 6000
Wire Wire Line
	2900 4300 3000 4300
Wire Wire Line
	1850 6100 2350 6100
Wire Wire Line
	5400 4300 5500 4300
Wire Wire Line
	1850 6200 2350 6200
Wire Wire Line
	2900 4400 3000 4400
Wire Wire Line
	1850 6300 3050 6300
Wire Wire Line
	5400 4400 5500 4400
Wire Wire Line
	1850 6400 3350 6400
Wire Wire Line
	2900 4500 3000 4500
Wire Wire Line
	3050 5800 3250 5800
Wire Wire Line
	10900 1000 11000 1000
Wire Wire Line
	10900 1100 11000 1100
Wire Wire Line
	10900 2600 11000 2600
Wire Wire Line
	10900 3600 11000 3600
Wire Wire Line
	10900 3400 11000 3400
Wire Wire Line
	10900 3700 11000 3700
Wire Wire Line
	10900 3900 11000 3900
Wire Wire Line
	10900 4100 11000 4100
Wire Wire Line
	10900 4300 11000 4300
Wire Wire Line
	10900 3300 11000 3300
Wire Wire Line
	10900 4000 11000 4000
Wire Wire Line
	10900 4200 11000 4200
Wire Wire Line
	10900 4600 11000 4600
Wire Wire Line
	10900 3500 11000 3500
Wire Wire Line
	10900 2500 11000 2500
Wire Wire Line
	10900 3800 11000 3800
Wire Wire Line
	10900 2800 11000 2800
Wire Wire Line
	10900 3000 11000 3000
Wire Wire Line
	10900 3200 11000 3200
Wire Wire Line
	10900 2700 11000 2700
Wire Wire Line
	10900 2900 11000 2900
Wire Wire Line
	10900 3100 11000 3100
Wire Wire Line
	10900 1500 11000 1500
Wire Wire Line
	10900 2000 11000 2000
Wire Wire Line
	10900 2100 11000 2100
Wire Wire Line
	10900 1900 11000 1900
Wire Wire Line
	10900 1800 11000 1800
Wire Wire Line
	10900 2200 11000 2200
Wire Wire Line
	10900 2300 11000 2300
Wire Wire Line
	10900 1200 11000 1200
Wire Wire Line
	10900 1600 11000 1600
Wire Wire Line
	10900 1700 11000 1700
Wire Wire Line
	10900 1300 11000 1300
Wire Wire Line
	10900 1400 11000 1400
Wire Wire Line
	8200 1200 8300 1200
Wire Wire Line
	8200 1300 8300 1300
Wire Wire Line
	8200 1400 8300 1400
Wire Wire Line
	8200 1500 8300 1500
Wire Wire Line
	8200 900  8300 900 
Wire Wire Line
	8200 1000 8300 1000
Wire Wire Line
	8200 1100 8300 1100
Wire Wire Line
	8200 3300 8300 3300
Wire Wire Line
	8200 3400 8300 3400
Wire Wire Line
	8200 2100 8300 2100
Wire Wire Line
	8200 3900 8300 3900
Wire Wire Line
	8200 4800 8300 4800
Wire Wire Line
	8200 4100 8300 4100
Wire Wire Line
	8200 4300 8300 4300
Wire Wire Line
	8200 4500 8300 4500
Wire Wire Line
	8200 4600 8300 4600
Wire Wire Line
	8200 3800 8300 3800
Wire Wire Line
	8200 2000 8300 2000
Wire Wire Line
	8200 3200 8300 3200
Wire Wire Line
	8200 4700 8300 4700
Wire Wire Line
	8200 4000 8300 4000
Wire Wire Line
	8200 2300 8300 2300
Wire Wire Line
	8200 4200 8300 4200
Wire Wire Line
	8200 4400 8300 4400
Wire Wire Line
	8200 3100 8300 3100
Wire Wire Line
	8200 2700 8300 2700
Wire Wire Line
	8200 2800 8300 2800
Wire Wire Line
	8200 2200 8300 2200
Wire Wire Line
	8200 2500 8300 2500
Wire Wire Line
	8200 2600 8300 2600
Wire Wire Line
	8200 3600 8300 3600
Wire Wire Line
	8200 2400 8300 2400
Wire Wire Line
	8200 3000 8300 3000
Wire Wire Line
	8200 2900 8300 2900
Wire Wire Line
	8200 1800 8300 1800
Wire Wire Line
	8200 1900 8300 1900
Wire Wire Line
	8200 1600 8300 1600
Wire Wire Line
	8200 1700 8300 1700
Wire Wire Line
	5400 900  5500 900 
Wire Wire Line
	5400 1000 5500 1000
Wire Wire Line
	5400 1100 5500 1100
Wire Wire Line
	5400 4600 5500 4600
Wire Wire Line
	5400 4500 5500 4500
Wire Wire Line
	5400 2000 5500 2000
Wire Wire Line
	5400 2100 5500 2100
Wire Wire Line
	5400 2200 5500 2200
Wire Wire Line
	5400 2300 5500 2300
Wire Wire Line
	5400 1700 5500 1700
Wire Wire Line
	5400 1600 5500 1600
Wire Wire Line
	5400 1800 5500 1800
Wire Wire Line
	5400 1900 5500 1900
Wire Wire Line
	5400 1200 5500 1200
Wire Wire Line
	5400 2800 5500 2800
Wire Wire Line
	5400 2700 5500 2700
Wire Wire Line
	5400 2500 5500 2500
Wire Wire Line
	5400 3700 5500 3700
Wire Wire Line
	5400 2400 5500 2400
Wire Wire Line
	5400 3500 5500 3500
Wire Wire Line
	5400 3300 5500 3300
Wire Wire Line
	5400 3400 5500 3400
Wire Wire Line
	5400 3100 5500 3100
Wire Wire Line
	5400 3200 5500 3200
Wire Wire Line
	5400 2900 5500 2900
Wire Wire Line
	5400 3000 5500 3000
Wire Wire Line
	5400 1300 5500 1300
Wire Wire Line
	2900 2600 3000 2600
Wire Wire Line
	2900 3600 3000 3600
Wire Wire Line
	2900 4600 3000 4600
Wire Wire Line
	2900 2000 3000 2000
Wire Wire Line
	2900 2100 3000 2100
Wire Wire Line
	2900 1600 3000 1600
Wire Wire Line
	2900 1700 3000 1700
Wire Wire Line
	2900 1900 3000 1900
Wire Wire Line
	2900 1800 3000 1800
Wire Wire Line
	2900 3800 3000 3800
Wire Wire Line
	2900 2500 3000 2500
Wire Wire Line
	2900 2200 3000 2200
Wire Wire Line
	2900 4700 3000 4700
Wire Wire Line
	2900 4800 3000 4800
Wire Wire Line
	2900 1100 3000 1100
Wire Wire Line
	2900 1300 3000 1300
Wire Wire Line
	2900 1200 3000 1200
Wire Wire Line
	2900 2400 3000 2400
Wire Wire Line
	2900 2300 3000 2300
Wire Wire Line
	2900 3500 3000 3500
Wire Wire Line
	2900 3700 3000 3700
Wire Wire Line
	2900 3300 3000 3300
Wire Wire Line
	2900 3400 3000 3400
Wire Wire Line
	2900 3200 3000 3200
Wire Wire Line
	2900 1400 3000 1400
Wire Wire Line
	2900 2700 3000 2700
Wire Wire Line
	2900 2800 3000 2800
Wire Wire Line
	10900 2400 11000 2400
Wire Wire Line
	8200 3700 8300 3700
Wire Wire Line
	10900 4400 11000 4400
Wire Wire Line
	10900 4500 11000 4500
Wire Wire Line
	8200 3500 8300 3500
Connection ~ 2150 6600
Wire Wire Line
	3350 5800 3350 6050
Wire Wire Line
	3350 6350 3350 6400
Wire Wire Line
	3050 6300 3050 6250
Wire Wire Line
	3050 5800 3050 5950
$Comp
L power:GND #PWR0143
U 1 1 60B8C06C
P 2450 6600
F 0 "#PWR0143" H 2450 6350 50  0001 C CNN
F 1 "GND" H 2455 6427 50  0001 C CNN
F 2 "" H 2450 6600 50  0001 C CNN
F 3 "" H 2450 6600 50  0001 C CNN
	1    2450 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 6600 2450 6600
$Comp
L power:GND #PWR0144
U 1 1 60BB36D1
P 750 6600
F 0 "#PWR0144" H 750 6350 50  0001 C CNN
F 1 "GND" H 755 6427 50  0001 C CNN
F 2 "" H 750 6600 50  0001 C CNN
F 3 "" H 750 6600 50  0001 C CNN
	1    750  6600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0145
U 1 1 60C00302
P 5500 4800
F 0 "#PWR0145" H 5500 4550 50  0001 C CNN
F 1 "GND" H 5505 4627 50  0001 C CNN
F 2 "" H 5500 4800 50  0001 C CNN
F 3 "" H 5500 4800 50  0001 C CNN
	1    5500 4800
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0146
U 1 1 60C00B33
P 5500 4700
F 0 "#PWR0146" H 5500 4450 50  0001 C CNN
F 1 "GND" H 5505 4527 50  0001 C CNN
F 2 "" H 5500 4700 50  0001 C CNN
F 3 "" H 5500 4700 50  0001 C CNN
	1    5500 4700
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0147
U 1 1 60C00C99
P 5500 3600
F 0 "#PWR0147" H 5500 3350 50  0001 C CNN
F 1 "GND" H 5505 3427 50  0001 C CNN
F 2 "" H 5500 3600 50  0001 C CNN
F 3 "" H 5500 3600 50  0001 C CNN
	1    5500 3600
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0148
U 1 1 60C00FCB
P 5500 2600
F 0 "#PWR0148" H 5500 2350 50  0001 C CNN
F 1 "GND" H 5505 2427 50  0001 C CNN
F 2 "" H 5500 2600 50  0001 C CNN
F 3 "" H 5500 2600 50  0001 C CNN
	1    5500 2600
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0149
U 1 1 60C1471F
P 5500 1500
F 0 "#PWR0149" H 5500 1250 50  0001 C CNN
F 1 "GND" H 5505 1327 50  0001 C CNN
F 2 "" H 5500 1500 50  0001 C CNN
F 3 "" H 5500 1500 50  0001 C CNN
	1    5500 1500
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0150
U 1 1 60C2819F
P 3000 900
F 0 "#PWR0150" H 3000 650 50  0001 C CNN
F 1 "GND" H 3005 727 50  0001 C CNN
F 2 "" H 3000 900 50  0001 C CNN
F 3 "" H 3000 900 50  0001 C CNN
	1    3000 900 
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0151
U 1 1 60C3B69F
P 3000 1500
F 0 "#PWR0151" H 3000 1250 50  0001 C CNN
F 1 "GND" H 3005 1327 50  0001 C CNN
F 2 "" H 3000 1500 50  0001 C CNN
F 3 "" H 3000 1500 50  0001 C CNN
	1    3000 1500
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0152
U 1 1 60C4ECB1
P 11000 900
F 0 "#PWR0152" H 11000 650 50  0001 C CNN
F 1 "GND" H 11005 727 50  0001 C CNN
F 2 "" H 11000 900 50  0001 C CNN
F 3 "" H 11000 900 50  0001 C CNN
	1    11000 900 
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0153
U 1 1 60C766C7
P 11000 4700
F 0 "#PWR0153" H 11000 4450 50  0001 C CNN
F 1 "GND" H 11005 4527 50  0001 C CNN
F 2 "" H 11000 4700 50  0001 C CNN
F 3 "" H 11000 4700 50  0001 C CNN
	1    11000 4700
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0154
U 1 1 60C76A62
P 11000 4800
F 0 "#PWR0154" H 11000 4550 50  0001 C CNN
F 1 "GND" H 11005 4627 50  0001 C CNN
F 2 "" H 11000 4800 50  0001 C CNN
F 3 "" H 11000 4800 50  0001 C CNN
	1    11000 4800
	0    -1   -1   0   
$EndComp
$Comp
L power:+3V3 #PWR0155
U 1 1 60C8B447
P 3250 5750
F 0 "#PWR0155" H 3250 5600 50  0001 C CNN
F 1 "+3V3" H 3265 5923 50  0000 C CNN
F 2 "" H 3250 5750 50  0001 C CNN
F 3 "" H 3250 5750 50  0001 C CNN
	1    3250 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 5750 3250 5800
Connection ~ 3250 5800
Wire Wire Line
	3250 5800 3350 5800
$Comp
L Connector_Generic:Conn_02x10_Odd_Even J?
U 1 1 629450E5
P 1550 6100
F 0 "J?" H 1600 6717 50  0000 C CNN
F 1 "Conn_02x10_Odd_Even" H 1600 6626 50  0000 C CNN
F 2 "" H 1550 6100 50  0001 C CNN
F 3 "~" H 1550 6100 50  0001 C CNN
	1    1550 6100
	1    0    0    -1  
$EndComp
Text Notes 550  850  0    50   ~ 0
Bank 13: 3.3V always\nMC1 64 and 66-76  MC2 64 and 66-76 \n(24 total)
Text Notes 550  1300 0    50   ~ 0
Bank 34: default 3.3V, \nchange by ferrite bead (FB8)\non MC1 \n(total of 48) 
Text Notes 550  1750 0    50   ~ 0
Bank 35: default 3.3V, \nchange by ferrite bead (FB9)\nMC2 2\n(total of 50)
Text Notes 9350 3650 0    50   ~ 0
IO voltage for bank 34
Text Notes 9400 2650 0    50   ~ 0
IO voltage for bank 34
Text Notes 1350 3650 0    50   ~ 0
IO voltage for bank 35
Text Notes 1350 2650 0    50   ~ 0
IO voltage for bank 35
Text Notes 8600 6800 0    39   ~ 0
VREF: needed for single-ended IO standards that use a diff. input buffer.\nWe do not need VREF. The FPGA also has an internal VREF which can be used if running at or below 400 MHz. \nMost relevant to memory interfaces. 
$EndSCHEMATC
