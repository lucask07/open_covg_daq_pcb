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
S 1000 1000 500  150 
U 6095A004
F0 "gp_adc" 50
F1 "gp_adc.sch" 50
$EndSheet
$Sheet
S 5000 1000 500  150 
U 6095A38A
F0 "level_shifters" 50
F1 "level_shifters.sch" 50
$EndSheet
$Sheet
S 7000 1000 500  150 
U 6095A697
F0 "adc1" 50
F1 "adc1.sch" 50
$EndSheet
$Sheet
S 5000 3000 500  150 
U 6095B316
F0 "dac1" 50
F1 "dac1.sch" 50
$EndSheet
$Sheet
S 3000 5000 500  150 
U 6095BD4C
F0 "dac_gp" 50
F1 "dac_gp.sch" 50
$EndSheet
$Sheet
S 5000 5000 500  150 
U 6095BE10
F0 "power" 50
F1 "power.sch" 50
$EndSheet
$Sheet
S 3000 1000 500  150 
U 6095A302
F0 "ok_fpga" 50
F1 "ok_fpga.sch" 50
$EndSheet
$Comp
L adc_dac_v1-eagle-import:FRAME_A_L #FRAME2
U 1 1 60986F39
P 7050 8150
AR Path="/60986F39" Ref="#FRAME2"  Part="1" 
AR Path="/6095A004/60986F39" Ref="#FRAME?"  Part="1" 
F 0 "#FRAME2" H 7050 8150 50  0001 C CNN
F 1 "FRAME_A_L" H 7050 8150 50  0001 C CNN
F 2 "" H 7050 8150 50  0001 C CNN
F 3 "" H 7050 8150 50  0001 C CNN
	1    7050 8150
	1    0    0    -1  
$EndComp
$Comp
L adc_dac_v1-eagle-import:MOUNT-HOLE3.0 H1
U 1 1 60986F3F
P 7450 7850
AR Path="/60986F3F" Ref="H1"  Part="1" 
AR Path="/6095A004/60986F3F" Ref="H?"  Part="1" 
F 0 "H1" H 7530 7873 59  0000 L BNN
F 1 "MOUNT-HOLE3.0" H 7530 7753 59  0000 L BNN
F 2 "adc_dac_v1:3,0" H 7450 7850 50  0001 C CNN
F 3 "" H 7450 7850 50  0001 C CNN
	1    7450 7850
	1    0    0    -1  
$EndComp
$Comp
L adc_dac_v1-eagle-import:MOUNT-HOLE3.0 H2
U 1 1 60986F45
P 8550 7850
AR Path="/60986F45" Ref="H2"  Part="1" 
AR Path="/6095A004/60986F45" Ref="H?"  Part="1" 
F 0 "H2" H 8630 7873 59  0000 L BNN
F 1 "MOUNT-HOLE3.0" H 8630 7753 59  0000 L BNN
F 2 "adc_dac_v1:3,0" H 8550 7850 50  0001 C CNN
F 3 "" H 8550 7850 50  0001 C CNN
	1    8550 7850
	1    0    0    -1  
$EndComp
$Comp
L adc_dac_v1-eagle-import:MOUNT-HOLE3.0 H3
U 1 1 60986F4B
P 9650 7850
AR Path="/60986F4B" Ref="H3"  Part="1" 
AR Path="/6095A004/60986F4B" Ref="H?"  Part="1" 
F 0 "H3" H 9730 7873 59  0000 L BNN
F 1 "MOUNT-HOLE3.0" H 9730 7753 59  0000 L BNN
F 2 "adc_dac_v1:3,0" H 9650 7850 50  0001 C CNN
F 3 "" H 9650 7850 50  0001 C CNN
	1    9650 7850
	1    0    0    -1  
$EndComp
$Comp
L adc_dac_v1-eagle-import:MOUNT-HOLE3.0 H4
U 1 1 60986F51
P 10750 7850
AR Path="/60986F51" Ref="H4"  Part="1" 
AR Path="/6095A004/60986F51" Ref="H?"  Part="1" 
F 0 "H4" H 10830 7873 59  0000 L BNN
F 1 "MOUNT-HOLE3.0" H 10830 7753 59  0000 L BNN
F 2 "adc_dac_v1:3,0" H 10750 7850 50  0001 C CNN
F 3 "" H 10750 7850 50  0001 C CNN
	1    10750 7850
	1    0    0    -1  
$EndComp
$EndSCHEMATC
