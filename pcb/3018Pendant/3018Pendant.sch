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
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J1
U 1 1 61EC90D9
P 7450 2500
F 0 "J1" H 7500 2075 50  0000 C CNN
F 1 "Conn_02x04_Odd_Even" H 7500 2166 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x04_P2.54mm_Vertical" H 7450 2500 50  0001 C CNN
F 3 "~" H 7450 2500 50  0001 C CNN
	1    7450 2500
	-1   0    0    1   
$EndComp
Wire Wire Line
	4600 1950 4600 2400
Wire Wire Line
	4600 2400 4750 2400
Wire Wire Line
	6800 1850 4550 1850
Wire Wire Line
	4550 1850 4550 2300
Wire Wire Line
	4550 2300 4750 2300
Text GLabel 6300 2600 2    50   Input ~ 0
Vcc
Text GLabel 6300 2400 2    50   Input ~ 0
GND
Wire Wire Line
	5950 2400 6300 2400
Wire Wire Line
	5950 2600 6300 2600
Text GLabel 7950 2600 2    50   Input ~ 0
Vcc
Text GLabel 7950 2500 2    50   Input ~ 0
GND
$Comp
L Device:C C2
U 1 1 61ED484C
P 3800 3350
F 0 "C2" H 3915 3396 50  0000 L CNN
F 1 ".1 uF" H 3915 3305 50  0000 L CNN
F 2 "Capacitor_THT:C_Axial_L3.8mm_D2.6mm_P7.50mm_Horizontal" H 3838 3200 50  0001 C CNN
F 3 "~" H 3800 3350 50  0001 C CNN
	1    3800 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 61ED55B8
P 3250 3350
F 0 "C1" H 3365 3396 50  0000 L CNN
F 1 ".1 uF" H 3365 3305 50  0000 L CNN
F 2 "Capacitor_THT:C_Axial_L3.8mm_D2.6mm_P7.50mm_Horizontal" H 3288 3200 50  0001 C CNN
F 3 "~" H 3250 3350 50  0001 C CNN
	1    3250 3350
	1    0    0    -1  
$EndComp
Text GLabel 3250 3500 3    50   Input ~ 0
GND
Text GLabel 3800 3500 3    50   Input ~ 0
GND
Wire Wire Line
	4400 2750 4400 3300
Wire Wire Line
	4400 3300 4750 3300
Wire Wire Line
	4250 2900 4250 3400
Wire Wire Line
	4250 3400 4750 3400
Wire Wire Line
	2950 2900 3800 2900
Wire Wire Line
	3250 3200 3250 2750
Wire Wire Line
	2850 2750 3250 2750
Connection ~ 3250 2750
Wire Wire Line
	3250 2750 4400 2750
Connection ~ 3800 2900
Wire Wire Line
	3800 2900 4250 2900
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
	3800 2900 3800 3200
$Comp
L Connector_Generic:Conn_01x03 J3
U 1 1 61EF795E
P 8550 1900
F 0 "J3" H 8630 1942 50  0000 L CNN
F 1 "GND" H 8630 1851 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 8550 1900 50  0001 C CNN
F 3 "~" H 8550 1900 50  0001 C CNN
	1    8550 1900
	1    0    0    -1  
$EndComp
Text GLabel 7950 1850 0    50   Input ~ 0
GND
Wire Wire Line
	7950 1850 8200 1850
Wire Wire Line
	8200 1850 8200 1800
Wire Wire Line
	8200 1800 8350 1800
Wire Wire Line
	8350 1900 8200 1900
Wire Wire Line
	8200 1900 8200 1850
Connection ~ 8200 1850
Wire Wire Line
	8350 2000 8200 2000
Wire Wire Line
	8200 2000 8200 1900
Connection ~ 8200 1900
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
P 2850 3200
F 0 "J5" V 2912 3244 50  0000 L CNN
F 1 "Encoder 1" V 2800 3000 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 2850 3200 50  0001 C CNN
F 3 "~" H 2850 3200 50  0001 C CNN
	1    2850 3200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2850 2750 2850 3000
Wire Wire Line
	2950 2900 2950 3000
Wire Wire Line
	7650 2500 7950 2500
Wire Wire Line
	7650 2600 7950 2600
Wire Wire Line
	6800 1850 6800 2100
Wire Wire Line
	6800 2100 7900 2100
Wire Wire Line
	7900 2100 7900 2300
Wire Wire Line
	7900 2300 7650 2300
Wire Wire Line
	7850 1950 7850 2400
Wire Wire Line
	7850 2400 7650 2400
Wire Wire Line
	4600 1950 7850 1950
Text GLabel 6900 2500 0    50   Input ~ 0
GND
Text GLabel 6900 2600 0    50   Input ~ 0
Vcc
Wire Wire Line
	7150 2500 6900 2500
Wire Wire Line
	7150 2600 6900 2600
$EndSCHEMATC
