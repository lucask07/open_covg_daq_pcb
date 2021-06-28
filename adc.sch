EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A 11000 8500
encoding utf-8
Sheet 12 26
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
L Device:C C47
U 1 1 B0DC2316
P 7050 3700
AR Path="/6095A697/B0DC2316" Ref="C47"  Part="1" 
AR Path="/60BE6CE5/B0DC2316" Ref="C90"  Part="1" 
AR Path="/60BF7757/B0DC2316" Ref="C101"  Part="1" 
AR Path="/60C1F416/B0DC2316" Ref="C112"  Part="1" 
F 0 "C90" H 7090 3725 59  0000 L BNN
F 1 "100p" H 7090 3535 59  0000 L BNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7050 3700 50  0001 C CNN
F 3 "" H 7050 3700 50  0001 C CNN
F 4 "CC0603JRNPO0BN101" H 7090 3825 50  0001 C CNN "Manf#"
F 5 "5%" H 7090 3825 50  0001 C CNN "Tolerance"
F 6 "100V" H 7090 3825 50  0001 C CNN "voltage"
	1    7050 3700
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_US R79
U 1 1 B996151F
P 2450 4600
AR Path="/6095A697/B996151F" Ref="R79"  Part="1" 
AR Path="/60BE6CE5/B996151F" Ref="R135"  Part="1" 
AR Path="/60BF7757/B996151F" Ref="R140"  Part="1" 
AR Path="/60C1F416/B996151F" Ref="R145"  Part="1" 
F 0 "R135" H 2300 4659 59  0000 L BNN
F 1 "100" H 2300 4470 59  0000 L BNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 2450 4600 50  0001 C CNN
F 3 "" H 2450 4600 50  0001 C CNN
F 4 "RC0603FR-07100RL" H 2300 4759 50  0001 C CNN "Manf#"
F 5 "0.1W" H 2300 4759 50  0001 C CNN "Power"
F 6 "1%" H 2300 4759 50  0001 C CNN "Tolerance"
	1    2450 4600
	-1   0    0    1   
$EndComp
$Comp
L Device:C C43
U 1 1 56DFCCD0
P 5350 2750
AR Path="/6095A697/56DFCCD0" Ref="C43"  Part="1" 
AR Path="/60BE6CE5/56DFCCD0" Ref="C86"  Part="1" 
AR Path="/60BF7757/56DFCCD0" Ref="C97"  Part="1" 
AR Path="/60C1F416/56DFCCD0" Ref="C108"  Part="1" 
F 0 "C86" H 5390 2775 59  0000 L BNN
F 1 "0.1u" H 5390 2585 59  0000 L BNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5350 2750 50  0001 C CNN
F 3 "" H 5350 2750 50  0001 C CNN
F 4 "CL10B104KA8NFNC" H 5390 2875 50  0001 C CNN "Manf#"
F 5 "Samsung" H 5390 2875 50  0001 C CNN "Manufacturer_Name"
F 6 "10%" H 5390 2875 50  0001 C CNN "Tolerance"
F 7 "25" H 5390 2875 50  0001 C CNN "voltage"
	1    5350 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R80
U 1 1 BF33D434
P 4650 4700
AR Path="/6095A697/BF33D434" Ref="R80"  Part="1" 
AR Path="/60BE6CE5/BF33D434" Ref="R136"  Part="1" 
AR Path="/60BF7757/BF33D434" Ref="R141"  Part="1" 
AR Path="/60C1F416/BF33D434" Ref="R146"  Part="1" 
F 0 "R136" H 4450 4750 59  0000 L BNN
F 1 "100" H 4450 4550 59  0000 L BNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 4650 4700 50  0001 C CNN
F 3 "" H 4650 4700 50  0001 C CNN
F 4 "RC0603FR-07100RL" H 4500 4859 50  0001 C CNN "Manf#"
F 5 "0.1W" H 4500 4859 50  0001 C CNN "Power"
F 6 "1%" H 4500 4859 50  0001 C CNN "Tolerance"
	1    4650 4700
	-1   0    0    1   
$EndComp
$Comp
L power:GND #GND081
U 1 1 C92C8F3B
P 3550 4800
AR Path="/6095A697/C92C8F3B" Ref="#GND081"  Part="1" 
AR Path="/60BE6CE5/C92C8F3B" Ref="#GND0136"  Part="1" 
AR Path="/60BF7757/C92C8F3B" Ref="#GND0150"  Part="1" 
AR Path="/60C1F416/C92C8F3B" Ref="#GND0164"  Part="1" 
F 0 "#GND0164" H 3550 4800 50  0001 C CNN
F 1 "GND" H 3450 4700 59  0001 L BNN
F 2 "" H 3550 4800 50  0001 C CNN
F 3 "" H 3550 4800 50  0001 C CNN
	1    3550 4800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #GND078
U 1 1 E2B99DEF
P 2450 3200
AR Path="/6095A697/E2B99DEF" Ref="#GND078"  Part="1" 
AR Path="/60BE6CE5/E2B99DEF" Ref="#GND0133"  Part="1" 
AR Path="/60BF7757/E2B99DEF" Ref="#GND0147"  Part="1" 
AR Path="/60C1F416/E2B99DEF" Ref="#GND0161"  Part="1" 
F 0 "#GND0161" H 2450 3200 50  0001 C CNN
F 1 "GND" H 2350 3100 59  0001 L BNN
F 2 "" H 2450 3200 50  0001 C CNN
F 3 "" H 2450 3200 50  0001 C CNN
	1    2450 3200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #GND083
U 1 1 6AE2E73F
P 5350 3100
AR Path="/6095A697/6AE2E73F" Ref="#GND083"  Part="1" 
AR Path="/60BE6CE5/6AE2E73F" Ref="#GND0138"  Part="1" 
AR Path="/60BF7757/6AE2E73F" Ref="#GND0152"  Part="1" 
AR Path="/60C1F416/6AE2E73F" Ref="#GND0166"  Part="1" 
F 0 "#GND0166" H 5350 3100 50  0001 C CNN
F 1 "GND" H 5250 3000 59  0000 L BNN
F 2 "" H 5350 3100 50  0001 C CNN
F 3 "" H 5350 3100 50  0001 C CNN
	1    5350 3100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #GND079
U 1 1 6CC61BFB
P 3450 2400
AR Path="/6095A697/6CC61BFB" Ref="#GND079"  Part="1" 
AR Path="/60BE6CE5/6CC61BFB" Ref="#GND0134"  Part="1" 
AR Path="/60BF7757/6CC61BFB" Ref="#GND0148"  Part="1" 
AR Path="/60C1F416/6CC61BFB" Ref="#GND0162"  Part="1" 
F 0 "#GND0162" H 3450 2400 50  0001 C CNN
F 1 "GND" H 3350 2300 59  0001 L BNN
F 2 "" H 3450 2400 50  0001 C CNN
F 3 "" H 3450 2400 50  0001 C CNN
	1    3450 2400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #GND082
U 1 1 A7315E89
P 5050 3300
AR Path="/6095A697/A7315E89" Ref="#GND082"  Part="1" 
AR Path="/60BE6CE5/A7315E89" Ref="#GND0137"  Part="1" 
AR Path="/60BF7757/A7315E89" Ref="#GND0151"  Part="1" 
AR Path="/60C1F416/A7315E89" Ref="#GND0165"  Part="1" 
F 0 "#GND0165" H 5050 3300 50  0001 C CNN
F 1 "GND" H 4950 3200 59  0001 L BNN
F 2 "" H 5050 3300 50  0001 C CNN
F 3 "" H 5050 3300 50  0001 C CNN
	1    5050 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C44
U 1 1 C9238E33
P 5400 4300
AR Path="/6095A697/C9238E33" Ref="C44"  Part="1" 
AR Path="/60BE6CE5/C9238E33" Ref="C87"  Part="1" 
AR Path="/60BF7757/C9238E33" Ref="C98"  Part="1" 
AR Path="/60C1F416/C9238E33" Ref="C109"  Part="1" 
F 0 "C87" H 5440 4325 59  0000 L BNN
F 1 "0.1u" H 5440 4135 59  0000 L BNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5400 4300 50  0001 C CNN
F 3 "" H 5400 4300 50  0001 C CNN
F 4 "CL10B104KA8NFNC" H 5440 4425 50  0001 C CNN "Manf#"
F 5 "Samsung" H 5440 4425 50  0001 C CNN "Manufacturer_Name"
F 6 "10%" H 5440 4425 50  0001 C CNN "Tolerance"
F 7 "25" H 5440 4425 50  0001 C CNN "voltage"
	1    5400 4300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C45
U 1 1 E612D2BB
P 5800 4300
AR Path="/6095A697/E612D2BB" Ref="C45"  Part="1" 
AR Path="/60BE6CE5/E612D2BB" Ref="C88"  Part="1" 
AR Path="/60BF7757/E612D2BB" Ref="C99"  Part="1" 
AR Path="/60C1F416/E612D2BB" Ref="C110"  Part="1" 
F 0 "C88" H 5840 4325 59  0000 L BNN
F 1 "0.1u" H 5840 4135 59  0000 L BNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5800 4300 50  0001 C CNN
F 3 "" H 5800 4300 50  0001 C CNN
F 4 "CL10B104KA8NFNC" H 5800 4300 50  0001 C CNN "Manf#"
	1    5800 4300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #GND084
U 1 1 158B4DC7
P 5400 4700
AR Path="/6095A697/158B4DC7" Ref="#GND084"  Part="1" 
AR Path="/60BE6CE5/158B4DC7" Ref="#GND0139"  Part="1" 
AR Path="/60BF7757/158B4DC7" Ref="#GND0153"  Part="1" 
AR Path="/60C1F416/158B4DC7" Ref="#GND0167"  Part="1" 
F 0 "#GND0167" H 5400 4700 50  0001 C CNN
F 1 "GND" H 5300 4600 59  0001 L BNN
F 2 "" H 5400 4700 50  0001 C CNN
F 3 "" H 5400 4700 50  0001 C CNN
	1    5400 4700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #GND085
U 1 1 EE95B960
P 5800 4700
AR Path="/6095A697/EE95B960" Ref="#GND085"  Part="1" 
AR Path="/60BE6CE5/EE95B960" Ref="#GND0140"  Part="1" 
AR Path="/60BF7757/EE95B960" Ref="#GND0154"  Part="1" 
AR Path="/60C1F416/EE95B960" Ref="#GND0168"  Part="1" 
F 0 "#GND0168" H 5800 4700 50  0001 C CNN
F 1 "GND" H 5700 4600 59  0001 L BNN
F 2 "" H 5800 4700 50  0001 C CNN
F 3 "" H 5800 4700 50  0001 C CNN
	1    5800 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C38
U 1 1 1FADEAAB
P 1450 3400
AR Path="/6095A697/1FADEAAB" Ref="C38"  Part="1" 
AR Path="/60BE6CE5/1FADEAAB" Ref="C81"  Part="1" 
AR Path="/60BF7757/1FADEAAB" Ref="C92"  Part="1" 
AR Path="/60C1F416/1FADEAAB" Ref="C103"  Part="1" 
F 0 "C81" H 1490 3425 59  0000 L BNN
F 1 "0.1u" H 1490 3235 59  0000 L BNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1450 3400 50  0001 C CNN
F 3 "" H 1450 3400 50  0001 C CNN
F 4 "CL10B104KA8NFNC" H 1490 3525 50  0001 C CNN "Manf#"
F 5 "Samsung" H 1490 3525 50  0001 C CNN "Manufacturer_Name"
F 6 "10%" H 1490 3525 50  0001 C CNN "Tolerance"
F 7 "25" H 1490 3525 50  0001 C CNN "voltage"
	1    1450 3400
	-1   0    0    1   
$EndComp
$Comp
L Device:C C40
U 1 1 9D5B9004
P 1850 3400
AR Path="/6095A697/9D5B9004" Ref="C40"  Part="1" 
AR Path="/60BE6CE5/9D5B9004" Ref="C83"  Part="1" 
AR Path="/60BF7757/9D5B9004" Ref="C94"  Part="1" 
AR Path="/60C1F416/9D5B9004" Ref="C105"  Part="1" 
F 0 "C83" H 1890 3425 59  0000 L BNN
F 1 "0.1u" H 1890 3235 59  0000 L BNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1850 3400 50  0001 C CNN
F 3 "" H 1850 3400 50  0001 C CNN
F 4 "CL10B104KA8NFNC" H 1890 3525 50  0001 C CNN "Manf#"
F 5 "Samsung" H 1890 3525 50  0001 C CNN "Manufacturer_Name"
F 6 "10%" H 1890 3525 50  0001 C CNN "Tolerance"
F 7 "25" H 1890 3525 50  0001 C CNN "voltage"
	1    1850 3400
	-1   0    0    1   
$EndComp
$Comp
L power:GND #GND075
U 1 1 DE30151E
P 1450 3100
AR Path="/6095A697/DE30151E" Ref="#GND075"  Part="1" 
AR Path="/60BE6CE5/DE30151E" Ref="#GND0130"  Part="1" 
AR Path="/60BF7757/DE30151E" Ref="#GND0144"  Part="1" 
AR Path="/60C1F416/DE30151E" Ref="#GND0158"  Part="1" 
F 0 "#GND0158" H 1450 3100 50  0001 C CNN
F 1 "GND" H 1350 3000 59  0001 L BNN
F 2 "" H 1450 3100 50  0001 C CNN
F 3 "" H 1450 3100 50  0001 C CNN
	1    1450 3100
	-1   0    0    1   
$EndComp
$Comp
L power:GND #GND077
U 1 1 E480151F
P 1850 3100
AR Path="/6095A697/E480151F" Ref="#GND077"  Part="1" 
AR Path="/60BE6CE5/E480151F" Ref="#GND0132"  Part="1" 
AR Path="/60BF7757/E480151F" Ref="#GND0146"  Part="1" 
AR Path="/60C1F416/E480151F" Ref="#GND0160"  Part="1" 
F 0 "#GND0160" H 1850 3100 50  0001 C CNN
F 1 "GND" H 1750 3000 59  0001 L BNN
F 2 "" H 1850 3100 50  0001 C CNN
F 3 "" H 1850 3100 50  0001 C CNN
	1    1850 3100
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R81
U 1 1 87DF8B8E
P 7650 3400
AR Path="/6095A697/87DF8B8E" Ref="R81"  Part="1" 
AR Path="/60BE6CE5/87DF8B8E" Ref="R137"  Part="1" 
AR Path="/60BF7757/87DF8B8E" Ref="R142"  Part="1" 
AR Path="/60C1F416/87DF8B8E" Ref="R147"  Part="1" 
F 0 "R137" H 7500 3459 59  0000 L BNN
F 1 "33" H 7500 3270 59  0000 L BNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7650 3400 50  0001 C CNN
F 3 "" H 7650 3400 50  0001 C CNN
F 4 "RC0603FR-0733RL" H 7500 3559 50  0001 C CNN "Manf#"
F 5 "0.1W" H 7500 3559 50  0001 C CNN "Power"
F 6 "1%" H 7500 3559 50  0001 C CNN "Tolerance"
	1    7650 3400
	0    -1   1    0   
$EndComp
$Comp
L Device:R_US R82
U 1 1 BFC3FA38
P 7650 4150
AR Path="/6095A697/BFC3FA38" Ref="R82"  Part="1" 
AR Path="/60BE6CE5/BFC3FA38" Ref="R138"  Part="1" 
AR Path="/60BF7757/BFC3FA38" Ref="R143"  Part="1" 
AR Path="/60C1F416/BFC3FA38" Ref="R148"  Part="1" 
F 0 "R138" H 7500 4209 59  0000 L BNN
F 1 "33" H 7500 4020 59  0000 L BNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7650 4150 50  0001 C CNN
F 3 "" H 7650 4150 50  0001 C CNN
F 4 "RC0603FR-0733RL" H 7500 4309 50  0001 C CNN "Manf#"
F 5 "0.1W" H 7500 4309 50  0001 C CNN "Power"
F 6 "1%" H 7500 4309 50  0001 C CNN "Tolerance"
	1    7650 4150
	0    -1   1    0   
$EndComp
$Comp
L Device:C C42
U 1 1 E8572435
P 3450 5800
AR Path="/6095A697/E8572435" Ref="C42"  Part="1" 
AR Path="/60BE6CE5/E8572435" Ref="C85"  Part="1" 
AR Path="/60BF7757/E8572435" Ref="C96"  Part="1" 
AR Path="/60C1F416/E8572435" Ref="C107"  Part="1" 
F 0 "C85" H 3150 5800 59  0000 L BNN
F 1 "0.1u" H 3200 5650 59  0000 L BNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3450 5800 50  0001 C CNN
F 3 "" H 3450 5800 50  0001 C CNN
F 4 "CL10B104KA8NFNC" H 3450 5800 50  0001 C CNN "Manf#"
	1    3450 5800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #GND080
U 1 1 0ADA2191
P 3450 6100
AR Path="/6095A697/0ADA2191" Ref="#GND080"  Part="1" 
AR Path="/60BE6CE5/0ADA2191" Ref="#GND0135"  Part="1" 
AR Path="/60BF7757/0ADA2191" Ref="#GND0149"  Part="1" 
AR Path="/60C1F416/0ADA2191" Ref="#GND0163"  Part="1" 
F 0 "#GND0163" H 3450 6100 50  0001 C CNN
F 1 "GND" H 3350 6000 59  0001 L BNN
F 2 "" H 3450 6100 50  0001 C CNN
F 3 "" H 3450 6100 50  0001 C CNN
	1    3450 6100
	1    0    0    -1  
$EndComp
$Comp
L covg-kicad:AD7960BCPZ-RL7 U28
U 1 1 70C280EF
P 3550 3800
AR Path="/6095A697/70C280EF" Ref="U28"  Part="1" 
AR Path="/60BE6CE5/70C280EF" Ref="U30"  Part="1" 
AR Path="/60BF7757/70C280EF" Ref="U32"  Part="1" 
AR Path="/60C1F416/70C280EF" Ref="U34"  Part="1" 
F 0 "U30" H 4264 4859 69  0000 L BNN
F 1 "AD7961BCPZ-RL7" H 4239 4659 69  0000 L BNN
F 2 "Package_DFN_QFN:QFN-32-1EP_5x5mm_P0.5mm_EP3.1x3.1mm" H 3550 3800 50  0001 C CNN
F 3 "" H 3550 3800 50  0001 C CNN
F 4 "AD7961BCPZ-RL7" H 4264 4959 50  0001 C CNN "Manf#"
	1    3550 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:C C41
U 1 1 32508C8E
P 2450 2850
AR Path="/6095A697/32508C8E" Ref="C41"  Part="1" 
AR Path="/60BE6CE5/32508C8E" Ref="C84"  Part="1" 
AR Path="/60BF7757/32508C8E" Ref="C95"  Part="1" 
AR Path="/60C1F416/32508C8E" Ref="C106"  Part="1" 
F 0 "C84" H 2490 2875 59  0000 L BNN
F 1 "10u" H 2490 2685 59  0000 L BNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2450 2850 50  0001 C CNN
F 3 "" H 2450 2850 50  0001 C CNN
F 4 "JMK107ABJ106KAHT" H 2490 2975 50  0001 C CNN "Manf#"
F 5 "10%" H 2490 2975 50  0001 C CNN "Tolerance"
F 6 "6.3V" H 2490 2975 50  0001 C CNN "voltage"
	1    2450 2850
	1    0    0    -1  
$EndComp
$Comp
L power:+1V8 #PWR0132
U 1 1 61635B4D
P 3850 2400
AR Path="/6095A697/61635B4D" Ref="#PWR0132"  Part="1" 
AR Path="/60BE6CE5/61635B4D" Ref="#PWR0159"  Part="1" 
AR Path="/60BF7757/61635B4D" Ref="#PWR0167"  Part="1" 
AR Path="/60C1F416/61635B4D" Ref="#PWR0175"  Part="1" 
F 0 "#PWR0175" H 3850 2250 50  0001 C CNN
F 1 "+1V8" H 3865 2573 50  0000 C CNN
F 2 "" H 3850 2400 50  0001 C CNN
F 3 "" H 3850 2400 50  0001 C CNN
	1    3850 2400
	1    0    0    -1  
$EndComp
$Comp
L power:+1V8 #PWR0131
U 1 1 6163E761
P 3450 5150
AR Path="/6095A697/6163E761" Ref="#PWR0131"  Part="1" 
AR Path="/60BE6CE5/6163E761" Ref="#PWR0158"  Part="1" 
AR Path="/60BF7757/6163E761" Ref="#PWR0166"  Part="1" 
AR Path="/60C1F416/6163E761" Ref="#PWR0174"  Part="1" 
F 0 "#PWR0174" H 3450 5000 50  0001 C CNN
F 1 "+1V8" V 3550 5100 50  0000 L CNN
F 2 "" H 3450 5150 50  0001 C CNN
F 3 "" H 3450 5150 50  0001 C CNN
	1    3450 5150
	0    1    1    0   
$EndComp
$Comp
L power:+1V8 #PWR0129
U 1 1 6166E0CF
P 1550 3700
AR Path="/6095A697/6166E0CF" Ref="#PWR0129"  Part="1" 
AR Path="/60BE6CE5/6166E0CF" Ref="#PWR0156"  Part="1" 
AR Path="/60BF7757/6166E0CF" Ref="#PWR0164"  Part="1" 
AR Path="/60C1F416/6166E0CF" Ref="#PWR0172"  Part="1" 
F 0 "#PWR0172" H 1550 3550 50  0001 C CNN
F 1 "+1V8" H 1565 3873 50  0000 C CNN
F 2 "" H 1550 3700 50  0001 C CNN
F 3 "" H 1550 3700 50  0001 C CNN
	1    1550 3700
	1    0    0    -1  
$EndComp
$Comp
L power:+1V8 #PWR0134
U 1 1 61676FF2
P 4850 4200
AR Path="/6095A697/61676FF2" Ref="#PWR0134"  Part="1" 
AR Path="/60BE6CE5/61676FF2" Ref="#PWR0161"  Part="1" 
AR Path="/60BF7757/61676FF2" Ref="#PWR0169"  Part="1" 
AR Path="/60C1F416/61676FF2" Ref="#PWR0177"  Part="1" 
F 0 "#PWR0177" H 4850 4050 50  0001 C CNN
F 1 "+1V8" V 4865 4328 50  0000 L CNN
F 2 "" H 4850 4200 50  0001 C CNN
F 3 "" H 4850 4200 50  0001 C CNN
	1    4850 4200
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR0130
U 1 1 61680779
P 2050 3600
AR Path="/6095A697/61680779" Ref="#PWR0130"  Part="1" 
AR Path="/60BE6CE5/61680779" Ref="#PWR0157"  Part="1" 
AR Path="/60BF7757/61680779" Ref="#PWR0165"  Part="1" 
AR Path="/60C1F416/61680779" Ref="#PWR0173"  Part="1" 
F 0 "#PWR0173" H 2050 3450 50  0001 C CNN
F 1 "+5V" H 2065 3773 50  0000 C CNN
F 2 "" H 2050 3600 50  0001 C CNN
F 3 "" H 2050 3600 50  0001 C CNN
	1    2050 3600
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0133
U 1 1 6168100A
P 4750 4000
AR Path="/6095A697/6168100A" Ref="#PWR0133"  Part="1" 
AR Path="/60BE6CE5/6168100A" Ref="#PWR0160"  Part="1" 
AR Path="/60BF7757/6168100A" Ref="#PWR0168"  Part="1" 
AR Path="/60C1F416/6168100A" Ref="#PWR0176"  Part="1" 
F 0 "#PWR0176" H 4750 3850 50  0001 C CNN
F 1 "+5V" V 4765 4128 50  0000 L CNN
F 2 "" H 4750 4000 50  0001 C CNN
F 3 "" H 4750 4000 50  0001 C CNN
	1    4750 4000
	0    1    1    0   
$EndComp
$Comp
L covg-kicad:OPA325 U29
U 1 1 60CEDBBA
P 7650 4850
AR Path="/6095A697/60CEDBBA" Ref="U29"  Part="1" 
AR Path="/60BE6CE5/60CEDBBA" Ref="U31"  Part="1" 
AR Path="/60BF7757/60CEDBBA" Ref="U33"  Part="1" 
AR Path="/60C1F416/60CEDBBA" Ref="U35"  Part="1" 
F 0 "U31" H 7994 4896 50  0000 L CNN
F 1 "OPA325" H 7994 4805 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 7550 4650 50  0001 L CNN
F 3 "https://www.ti.com/lit/ds/symlink/opa325.pdf?ts=1622090939582" H 7650 5050 50  0001 C CNN
F 4 "OPA325IDBVR" H 7994 4996 50  0001 C CNN "Manf#"
	1    7650 4850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0135
U 1 1 60CF876D
P 7550 4500
AR Path="/6095A697/60CF876D" Ref="#PWR0135"  Part="1" 
AR Path="/60BE6CE5/60CF876D" Ref="#PWR0162"  Part="1" 
AR Path="/60BF7757/60CF876D" Ref="#PWR0170"  Part="1" 
AR Path="/60C1F416/60CF876D" Ref="#PWR0178"  Part="1" 
F 0 "#PWR0178" H 7550 4350 50  0001 C CNN
F 1 "+5V" H 7565 4628 50  0000 L CNN
F 2 "" H 7550 4500 50  0001 C CNN
F 3 "" H 7550 4500 50  0001 C CNN
	1    7550 4500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #GND087
U 1 1 60CFC89D
P 7550 5200
AR Path="/6095A697/60CFC89D" Ref="#GND087"  Part="1" 
AR Path="/60BE6CE5/60CFC89D" Ref="#GND0142"  Part="1" 
AR Path="/60BF7757/60CFC89D" Ref="#GND0156"  Part="1" 
AR Path="/60C1F416/60CFC89D" Ref="#GND0170"  Part="1" 
F 0 "#GND0170" H 7550 5200 50  0001 C CNN
F 1 "GND" H 7450 5100 59  0001 L BNN
F 2 "" H 7550 5200 50  0001 C CNN
F 3 "" H 7550 5200 50  0001 C CNN
	1    7550 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R83
U 1 1 60D076A5
P 8500 4850
AR Path="/6095A697/60D076A5" Ref="R83"  Part="1" 
AR Path="/60BE6CE5/60D076A5" Ref="R139"  Part="1" 
AR Path="/60BF7757/60D076A5" Ref="R144"  Part="1" 
AR Path="/60C1F416/60D076A5" Ref="R149"  Part="1" 
F 0 "R139" H 8350 4909 59  0000 L BNN
F 1 "33" H 8350 4720 59  0000 L BNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 8500 4850 50  0001 C CNN
F 3 "" H 8500 4850 50  0001 C CNN
F 4 "RC0603FR-0733RL" H 8350 5009 50  0001 C CNN "Manf#"
F 5 "0.1W" H 8350 5009 50  0001 C CNN "Power"
F 6 "1%" H 8350 5009 50  0001 C CNN "Tolerance"
	1    8500 4850
	0    -1   1    0   
$EndComp
$Comp
L Device:C C48
U 1 1 60D0F62A
P 8350 5550
AR Path="/6095A697/60D0F62A" Ref="C48"  Part="1" 
AR Path="/60BE6CE5/60D0F62A" Ref="C91"  Part="1" 
AR Path="/60BF7757/60D0F62A" Ref="C102"  Part="1" 
AR Path="/60C1F416/60D0F62A" Ref="C113"  Part="1" 
F 0 "C91" H 8390 5575 59  0000 L BNN
F 1 "0.1u" H 8390 5385 59  0000 L BNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8350 5550 50  0001 C CNN
F 3 "" H 8350 5550 50  0001 C CNN
F 4 "CL10B104KA8NFNC" H 8390 5675 50  0001 C CNN "Manf#"
F 5 "Samsung" H 8390 5675 50  0001 C CNN "Manufacturer_Name"
F 6 "10%" H 8390 5675 50  0001 C CNN "Tolerance"
F 7 "25" H 8390 5675 50  0001 C CNN "voltage"
	1    8350 5550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0136
U 1 1 60D10054
P 8350 5350
AR Path="/6095A697/60D10054" Ref="#PWR0136"  Part="1" 
AR Path="/60BE6CE5/60D10054" Ref="#PWR0163"  Part="1" 
AR Path="/60BF7757/60D10054" Ref="#PWR0171"  Part="1" 
AR Path="/60C1F416/60D10054" Ref="#PWR0179"  Part="1" 
F 0 "#PWR0179" H 8350 5200 50  0001 C CNN
F 1 "+5V" V 8365 5478 50  0000 L CNN
F 2 "" H 8350 5350 50  0001 C CNN
F 3 "" H 8350 5350 50  0001 C CNN
	1    8350 5350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #GND088
U 1 1 60D103FD
P 8350 5750
AR Path="/6095A697/60D103FD" Ref="#GND088"  Part="1" 
AR Path="/60BE6CE5/60D103FD" Ref="#GND0143"  Part="1" 
AR Path="/60BF7757/60D103FD" Ref="#GND0157"  Part="1" 
AR Path="/60C1F416/60D103FD" Ref="#GND0171"  Part="1" 
F 0 "#GND0171" H 8350 5750 50  0001 C CNN
F 1 "GND" H 8250 5650 59  0001 L BNN
F 2 "" H 8350 5750 50  0001 C CNN
F 3 "" H 8350 5750 50  0001 C CNN
	1    8350 5750
	1    0    0    -1  
$EndComp
$Comp
L Device:C C39
U 1 1 60D49EBB
P 1450 4000
AR Path="/6095A697/60D49EBB" Ref="C39"  Part="1" 
AR Path="/60BE6CE5/60D49EBB" Ref="C82"  Part="1" 
AR Path="/60BF7757/60D49EBB" Ref="C93"  Part="1" 
AR Path="/60C1F416/60D49EBB" Ref="C104"  Part="1" 
F 0 "C82" H 1550 4050 59  0000 L BNN
F 1 "0.1u" H 1200 3850 59  0000 L BNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1450 4000 50  0001 C CNN
F 3 "" H 1450 4000 50  0001 C CNN
F 4 "CL10B104KA8NFNC" H 1490 4125 50  0001 C CNN "Manf#"
F 5 "Samsung" H 1490 4125 50  0001 C CNN "Manufacturer_Name"
F 6 "10%" H 1490 4125 50  0001 C CNN "Tolerance"
F 7 "25" H 1490 4125 50  0001 C CNN "voltage"
	1    1450 4000
	-1   0    0    1   
$EndComp
$Comp
L power:GND #GND076
U 1 1 60D4A75D
P 1450 4200
AR Path="/6095A697/60D4A75D" Ref="#GND076"  Part="1" 
AR Path="/60BE6CE5/60D4A75D" Ref="#GND0131"  Part="1" 
AR Path="/60BF7757/60D4A75D" Ref="#GND0145"  Part="1" 
AR Path="/60C1F416/60D4A75D" Ref="#GND0159"  Part="1" 
F 0 "#GND0159" H 1450 4200 50  0001 C CNN
F 1 "GND" H 1350 4100 59  0001 L BNN
F 2 "" H 1450 4200 50  0001 C CNN
F 3 "" H 1450 4200 50  0001 C CNN
	1    1450 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C46
U 1 1 60D51F18
P 6100 4950
AR Path="/6095A697/60D51F18" Ref="C46"  Part="1" 
AR Path="/60BE6CE5/60D51F18" Ref="C89"  Part="1" 
AR Path="/60BF7757/60D51F18" Ref="C100"  Part="1" 
AR Path="/60C1F416/60D51F18" Ref="C111"  Part="1" 
F 0 "C89" H 6140 4975 59  0000 L BNN
F 1 "0.1u" H 6140 4785 59  0000 L BNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6100 4950 50  0001 C CNN
F 3 "" H 6100 4950 50  0001 C CNN
F 4 "CL10B104KA8NFNC" H 6140 5075 50  0001 C CNN "Manf#"
F 5 "Samsung" H 6140 5075 50  0001 C CNN "Manufacturer_Name"
F 6 "10%" H 6140 5075 50  0001 C CNN "Tolerance"
F 7 "25" H 6140 5075 50  0001 C CNN "voltage"
	1    6100 4950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #GND086
U 1 1 60D5634C
P 6100 5250
AR Path="/6095A697/60D5634C" Ref="#GND086"  Part="1" 
AR Path="/60BE6CE5/60D5634C" Ref="#GND0141"  Part="1" 
AR Path="/60BF7757/60D5634C" Ref="#GND0155"  Part="1" 
AR Path="/60C1F416/60D5634C" Ref="#GND0169"  Part="1" 
F 0 "#GND0169" H 6100 5250 50  0001 C CNN
F 1 "GND" H 6000 5150 59  0001 L BNN
F 2 "" H 6100 5250 50  0001 C CNN
F 3 "" H 6100 5250 50  0001 C CNN
	1    6100 5250
	1    0    0    -1  
$EndComp
Text Label 5050 4000 0    70   ~ 0
VCM
Text GLabel 2250 4000 0    47   BiDi ~ 0
A_EN1
Text GLabel 2250 4100 0    47   BiDi ~ 0
A_EN2
Text GLabel 2250 4200 0    47   BiDi ~ 0
A_EN3
Text Label 6850 3400 2    70   ~ 0
IN_P_LP
Text Notes 650  1200 0    59   ~ 0
Use internal buffer (x2) with 2.048V ref.  \n “External reference of 2.048 V applied to the REFIN pin\n(high impedance input). The on-chip buffer gains this by 2\nand drives the REF pin with 4.096 V” \nEN3=X, EN2=0, EN1=0, EN0=1 (28 MHz BW)\nEN3=X, EN2=1, EN1=0, EN0=1 (9 MHz BW, use this BW only when the throughput is 2 MSPS or lower)
Text Notes 650  1450 0    59   ~ 0
VDD2 and VIO can come from the same supply. \nBut route and decouple separately.
Text Label 6850 4150 2    70   ~ 0
IN_N_LP
Text Notes 6150 4700 0    50   ~ 0
5.1 kOhm output impedance\nMust buffer\n
Text GLabel 1350 3800 0    47   BiDi ~ 0
2V048_REF
Text HLabel 1950 4900 0    50   Input ~ 0
CNV_P
Text HLabel 1950 4300 0    50   Input ~ 0
CNV_N
Text HLabel 3250 5100 3    50   Output ~ 0
D_N
Text HLabel 3350 5100 3    50   Output ~ 0
D_P
Text HLabel 3650 5300 3    50   Output ~ 0
DCO_N
Text HLabel 3750 5300 3    50   Output ~ 0
DCO_P
Text HLabel 5050 5100 3    50   Input ~ 0
CLK_N
Text HLabel 5050 4300 3    50   Input ~ 0
CLK_P
Text HLabel 9300 4850 2    50   Output ~ 0
VCM_OUT
Text HLabel 9650 4150 2    50   Input ~ 0
IN_N
Text HLabel 9650 3400 2    50   Input ~ 0
IN_P
Text HLabel 2250 3900 0    50   Input ~ 0
A_EN0
Wire Wire Line
	1850 3600 2050 3600
Wire Wire Line
	4550 4100 4650 4100
Wire Wire Line
	4650 4100 4650 4000
Wire Wire Line
	4650 4000 4550 4000
Wire Wire Line
	4550 3900 5050 3900
Wire Wire Line
	5050 3900 5050 4000
Wire Wire Line
	3450 2900 3450 2600
Wire Wire Line
	3450 2600 3350 2600
Wire Wire Line
	3350 2600 3250 2600
Wire Wire Line
	3250 2600 3150 2600
Wire Wire Line
	3350 2900 3350 2600
Wire Wire Line
	3250 2900 3250 2600
Wire Wire Line
	3150 2900 3150 2600
Wire Wire Line
	2550 3900 2250 3900
Wire Wire Line
	2550 4000 2250 4000
Wire Wire Line
	2550 4100 2250 4100
Wire Wire Line
	2550 4200 2250 4200
Wire Wire Line
	3450 2300 3550 2300
Wire Wire Line
	3550 2300 3650 2300
Wire Wire Line
	3650 2300 3750 2300
Wire Wire Line
	3750 2300 3750 2900
Wire Wire Line
	3550 2900 3550 2300
Wire Wire Line
	3650 2900 3650 2300
Wire Wire Line
	4550 3200 4850 3200
Wire Wire Line
	4850 3600 4850 3200
Wire Wire Line
	4550 3600 4850 3600
Wire Wire Line
	4850 3200 5050 3200
Wire Wire Line
	2550 3800 1450 3800
Wire Wire Line
	3850 2900 3850 2500
Wire Wire Line
	3850 2500 5350 2500
Wire Wire Line
	5350 2600 5350 2500
Wire Wire Line
	4550 4200 4850 4200
Wire Wire Line
	1450 3700 1550 3700
Wire Wire Line
	3250 4700 3250 5100
Wire Wire Line
	3350 4700 3350 5100
Wire Wire Line
	3650 4700 3650 5300
Wire Wire Line
	3750 4700 3750 5300
Wire Wire Line
	3850 4700 3850 5100
Wire Wire Line
	3850 5100 4650 5100
Wire Wire Line
	4650 5100 5050 5100
Wire Wire Line
	4550 4300 4650 4300
Wire Wire Line
	4650 4300 5050 4300
Wire Wire Line
	2450 4300 2550 4300
Wire Wire Line
	2450 4300 1950 4300
Wire Wire Line
	2450 4900 3150 4900
Wire Wire Line
	3150 4900 3150 4700
Wire Wire Line
	2450 4900 1950 4900
Wire Wire Line
	4550 3700 5150 3700
Wire Wire Line
	5150 3700 5150 3600
Wire Wire Line
	4550 3800 5150 3800
Wire Wire Line
	5150 3800 5150 3900
Wire Wire Line
	3450 2400 3450 2300
Wire Wire Line
	5350 2900 5350 3100
Wire Wire Line
	5050 3200 5050 3300
Wire Wire Line
	4650 4300 4650 4550
Wire Wire Line
	4650 4850 4650 5100
Wire Wire Line
	4650 4100 5400 4100
Wire Wire Line
	5400 4150 5400 4100
Wire Wire Line
	5400 4100 5800 4100
Wire Wire Line
	5800 4150 5800 4100
Wire Wire Line
	5800 4450 5800 4700
Wire Wire Line
	5400 4450 5400 4700
Wire Wire Line
	2450 2700 2450 2600
Wire Wire Line
	1450 3100 1450 3250
Wire Wire Line
	1850 3100 1850 3250
Wire Wire Line
	1850 3600 1850 3550
Wire Wire Line
	1450 3700 1450 3550
Wire Wire Line
	2450 4300 2450 4450
Wire Wire Line
	2450 4750 2450 4900
Wire Wire Line
	3550 4700 3550 4800
Wire Wire Line
	3450 4700 3450 5150
Wire Wire Line
	3450 6100 3450 5950
Wire Wire Line
	7500 3400 7050 3400
Wire Wire Line
	7050 3550 7050 3400
Wire Wire Line
	7500 4150 7050 4150
Wire Wire Line
	3450 5150 3450 5650
Wire Wire Line
	1550 3700 2550 3700
Wire Wire Line
	2050 3600 2550 3600
Wire Wire Line
	4750 4000 4650 4000
Wire Wire Line
	7050 3850 7050 4150
Wire Wire Line
	6350 3900 6350 4150
Wire Wire Line
	6350 4150 7050 4150
Wire Wire Line
	5150 3900 6350 3900
Wire Wire Line
	6350 3600 6350 3400
Wire Wire Line
	5150 3600 6350 3600
Wire Wire Line
	6350 3400 7050 3400
Wire Wire Line
	6100 4000 6100 4750
Wire Wire Line
	5050 4000 6100 4000
Wire Wire Line
	6100 4750 7350 4750
Wire Wire Line
	7550 4500 7550 4550
Wire Wire Line
	7550 5200 7550 5150
Wire Wire Line
	7350 4950 7250 4950
Wire Wire Line
	7250 4950 7250 5350
Wire Wire Line
	7250 5350 8000 5350
Wire Wire Line
	8000 5350 8000 4850
Wire Wire Line
	8000 4850 7950 4850
Wire Wire Line
	8000 4850 8350 4850
Wire Wire Line
	8650 4850 9300 4850
Wire Wire Line
	8350 5700 8350 5750
Wire Wire Line
	8350 5400 8350 5350
Wire Wire Line
	2450 2600 3150 2600
Wire Wire Line
	2450 3000 2450 3200
Wire Wire Line
	1450 4200 1450 4150
Wire Wire Line
	1450 3850 1450 3800
Wire Wire Line
	1450 3800 1350 3800
Wire Wire Line
	6100 4800 6100 4750
Wire Wire Line
	6100 5100 6100 5250
Wire Wire Line
	3850 2400 3850 2500
Connection ~ 4650 4100
Connection ~ 3350 2600
Connection ~ 3250 2600
Connection ~ 3150 2600
Connection ~ 3550 2300
Connection ~ 3650 2300
Connection ~ 4850 3200
Connection ~ 4650 5100
Connection ~ 4650 4300
Connection ~ 2450 4300
Connection ~ 2450 4900
Connection ~ 7050 4150
Connection ~ 5400 4100
Connection ~ 7050 3400
Connection ~ 3450 5150
Connection ~ 1550 3700
Connection ~ 2050 3600
Connection ~ 4650 4000
Connection ~ 8000 4850
Connection ~ 1450 3800
Connection ~ 6100 4750
Connection ~ 3850 2500
Wire Wire Line
	7800 4150 9650 4150
Wire Wire Line
	7800 3400 9650 3400
$EndSCHEMATC
