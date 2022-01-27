EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L Arduino:Arduino_Pro_Mini U1
U 1 1 61EC56F8
P 5350 2900
F 0 "U1" H 5350 3789 60  0000 C CNN
F 1 "Arduino_Pro_Mini" H 5350 3683 60  0000 C CNN
F 2 "Arduino:Arduino_Pro_Mini_copy" H 6150 2150 60  0001 C CNN
F 3 "https://www.sparkfun.com/products/11113" H 5550 1700 60  0001 C CNN
	1    5350 2900
	1    0    0    -1  
$EndComp
Text GLabel 6300 2600 2    50   Input ~ 0
Vcc
Text GLabel 6300 2400 2    50   Input ~ 0
GND
Wire Wire Line
	5950 2600 6300 2600
$Comp
L Device:C C2
U 1 1 61ED484C
P 3250 3900
F 0 "C2" H 3365 3946 50  0000 L CNN
F 1 ".1 uF" H 3365 3855 50  0000 L CNN
F 2 "Capacitor_THT:C_Axial_L3.8mm_D2.6mm_P7.50mm_Horizontal" H 3288 3750 50  0001 C CNN
F 3 "~" H 3250 3900 50  0001 C CNN
	1    3250 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 61ED55B8
P 2700 3900
F 0 "C1" H 2815 3946 50  0000 L CNN
F 1 ".1 uF" H 2815 3855 50  0000 L CNN
F 2 "Capacitor_THT:C_Axial_L3.8mm_D2.6mm_P7.50mm_Horizontal" H 2738 3750 50  0001 C CNN
F 3 "~" H 2700 3900 50  0001 C CNN
	1    2700 3900
	1    0    0    -1  
$EndComp
Text GLabel 2700 4050 3    50   Input ~ 0
GND
Text GLabel 3250 4050 3    50   Input ~ 0
GND
Wire Wire Line
	2400 3450 3250 3450
Wire Wire Line
	2700 3750 2700 3300
Wire Wire Line
	2300 3300 2700 3300
Connection ~ 2700 3300
Connection ~ 3250 3450
Wire Wire Line
	7850 2900 5950 2900
Wire Wire Line
	7900 3400 7550 3400
Wire Wire Line
	7550 3400 7550 3000
Wire Wire Line
	7550 3000 5950 3000
Wire Wire Line
	6550 3900 6550 3400
Wire Wire Line
	6550 3400 5950 3400
Wire Wire Line
	6650 3900 6650 3300
Wire Wire Line
	6650 3300 5950 3300
Wire Wire Line
	6750 3900 6750 3200
Wire Wire Line
	6750 3200 5950 3200
Wire Wire Line
	3250 3450 3250 3750
$Comp
L Connector_Generic:Conn_01x03 J3
U 1 1 61EF795E
P 8900 4750
F 0 "J3" H 8980 4792 50  0000 L CNN
F 1 "GND" H 8980 4701 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 8900 4750 50  0001 C CNN
F 3 "~" H 8900 4750 50  0001 C CNN
	1    8900 4750
	1    0    0    -1  
$EndComp
Text GLabel 8300 4700 0    50   Input ~ 0
GND
Wire Wire Line
	8300 4700 8550 4700
Wire Wire Line
	8550 4700 8550 4650
Wire Wire Line
	8550 4650 8700 4650
Wire Wire Line
	8700 4750 8550 4750
Wire Wire Line
	8550 4750 8550 4700
Connection ~ 8550 4700
Wire Wire Line
	8700 4850 8550 4850
Wire Wire Line
	8550 4850 8550 4750
Connection ~ 8550 4750
$Comp
L Connector_Generic:Conn_01x03 J4
U 1 1 61EFA319
P 8850 4200
F 0 "J4" H 8930 4242 50  0000 L CNN
F 1 "Vcc" H 8930 4151 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 8850 4200 50  0001 C CNN
F 3 "~" H 8850 4200 50  0001 C CNN
	1    8850 4200
	1    0    0    -1  
$EndComp
Text GLabel 8100 4200 0    50   Input ~ 0
Vcc
Wire Wire Line
	8100 4200 8400 4200
Wire Wire Line
	8650 4100 8400 4100
Wire Wire Line
	8400 4100 8400 4200
Connection ~ 8400 4200
Wire Wire Line
	8400 4200 8650 4200
Wire Wire Line
	8650 4300 8400 4300
Wire Wire Line
	8400 4300 8400 4200
Text GLabel 4400 2600 0    50   Input ~ 0
GND
Wire Wire Line
	4400 2600 4750 2600
$Comp
L Connector_Generic:Conn_01x01 J2
U 1 1 61F063FC
P 8050 2900
F 0 "J2" H 8130 2942 50  0000 L CNN
F 1 "SW 1" H 8130 2851 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 8050 2900 50  0001 C CNN
F 3 "~" H 8050 2900 50  0001 C CNN
	1    8050 2900
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x01 J6
U 1 1 61F06BFC
P 8100 3400
F 0 "J6" H 8180 3442 50  0000 L CNN
F 1 "SW 2" H 8180 3351 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 8100 3400 50  0001 C CNN
F 3 "~" H 8100 3400 50  0001 C CNN
	1    8100 3400
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J7
U 1 1 61F07311
P 6650 4100
F 0 "J7" V 6522 4280 50  0000 L CNN
F 1 "SW XYZ" V 6613 4280 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 6650 4100 50  0001 C CNN
F 3 "~" H 6650 4100 50  0001 C CNN
	1    6650 4100
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x02_Male J5
U 1 1 61F080F7
P 2300 3750
F 0 "J5" V 2362 3794 50  0000 L CNN
F 1 "Encoder 1" V 2250 3550 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 2300 3750 50  0001 C CNN
F 3 "~" H 2300 3750 50  0001 C CNN
	1    2300 3750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2300 3300 2300 3550
Wire Wire Line
	2400 3450 2400 3550
Wire Wire Line
	2700 3300 4750 3300
Wire Wire Line
	4750 3450 4750 3400
Wire Wire Line
	3250 3450 4750 3450
Wire Wire Line
	3400 1900 3650 1900
Wire Wire Line
	3400 2000 3650 2000
Text GLabel 3650 1900 2    50   Input ~ 0
Vcc
Text GLabel 3650 2000 2    50   Input ~ 0
GND
Wire Wire Line
	2900 1900 2600 1900
Wire Wire Line
	2900 2000 2600 2000
Text GLabel 2600 2000 0    50   Input ~ 0
GND
Text GLabel 2600 1900 0    50   Input ~ 0
Vcc
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J1
U 1 1 61EC90D9
P 3100 2000
F 0 "J1" H 3150 1575 50  0000 C CNN
F 1 "Conn_02x04_Odd_Even" H 3150 1666 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x04_P2.54mm_Vertical" H 3100 2000 50  0001 C CNN
F 3 "~" H 3100 2000 50  0001 C CNN
	1    3100 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 2400 6300 2400
Wire Wire Line
	3400 2100 4000 2100
Wire Wire Line
	4000 2100 4000 2400
Wire Wire Line
	4000 2400 4750 2400
Wire Wire Line
	3400 2200 4200 2200
Wire Wire Line
	4200 2200 4200 2300
Wire Wire Line
	4200 2300 4750 2300
$Comp
L Device:R R2
U 1 1 61F49319
P 2550 2650
F 0 "R2" H 2620 2696 50  0000 L CNN
F 1 "1K" H 2620 2605 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 2480 2650 50  0001 C CNN
F 3 "~" H 2550 2650 50  0001 C CNN
	1    2550 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 61F49F79
P 2300 2450
F 0 "R1" V 2093 2450 50  0000 C CNN
F 1 "1K" V 2184 2450 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 2230 2450 50  0001 C CNN
F 3 "~" H 2300 2450 50  0001 C CNN
	1    2300 2450
	0    1    1    0   
$EndComp
Wire Wire Line
	2450 2450 2550 2450
Wire Wire Line
	2550 2450 2550 2500
Wire Wire Line
	2550 2800 2550 3200
Wire Wire Line
	2550 3200 4750 3200
Text GLabel 1950 2450 0    50   Input ~ 0
GND
Wire Wire Line
	2150 2450 1950 2450
Wire Wire Line
	2900 2200 2550 2200
Wire Wire Line
	2550 2200 2550 2450
Connection ~ 2550 2450
$Comp
L Connector_Generic:Conn_01x01 J8
U 1 1 61F4ED73
P 1800 2100
F 0 "J8" H 1718 1875 50  0000 C CNN
F 1 "SW RESET" H 1718 1966 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x01_P2.54mm_Vertical" H 1800 2100 50  0001 C CNN
F 3 "~" H 1800 2100 50  0001 C CNN
	1    1800 2100
	-1   0    0    1   
$EndComp
Wire Wire Line
	2000 2100 2900 2100
$EndSCHEMATC
