EESchema Schematic File Version 4
EELAYER 26 0
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
L MCU_Module:Arduino_Nano_v3.x A?
U 1 1 5C812F31
P 3250 2750
F 0 "A?" H 3250 1664 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" H 3250 1573 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 3400 1800 50  0001 L CNN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 3250 1750 50  0001 C CNN
	1    3250 2750
	1    0    0    -1  
$EndComp
$Comp
L cyclophone:TCRT5000 U?
U 1 1 5C812FD5
P 9450 2400
F 0 "U?" H 9450 2550 60  0000 C CNN
F 1 "TCRT5000" H 9450 2650 60  0000 C CNN
F 2 "" H 9450 2400 60  0000 C CNN
F 3 "" H 9450 2400 60  0000 C CNN
	1    9450 2400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5C8132E2
P 10150 2450
F 0 "R?" V 9943 2450 50  0000 C CNN
F 1 "330" V 10034 2450 50  0000 C CNN
F 2 "" V 10080 2450 50  0001 C CNN
F 3 "~" H 10150 2450 50  0001 C CNN
	1    10150 2450
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5C813322
P 10150 2700
F 0 "R?" V 9943 2700 50  0000 C CNN
F 1 "11k" V 10034 2700 50  0000 C CNN
F 2 "" V 10080 2700 50  0001 C CNN
F 3 "~" H 10150 2700 50  0001 C CNN
	1    10150 2700
	0    1    1    0   
$EndComp
Text GLabel 10400 2450 2    50   Input ~ 0
GND
Wire Wire Line
	10400 2450 10300 2450
Text GLabel 10400 2700 2    50   Input ~ 0
GND
Wire Wire Line
	10400 2700 10300 2700
Wire Wire Line
	9950 2450 10000 2450
Wire Wire Line
	9950 2700 10000 2700
$Comp
L cyclophone:TCRT5000 U?
U 1 1 5C8139FF
P 9450 1450
F 0 "U?" H 9450 1600 60  0000 C CNN
F 1 "TCRT5000" H 9450 1700 60  0000 C CNN
F 2 "" H 9450 1450 60  0000 C CNN
F 3 "" H 9450 1450 60  0000 C CNN
	1    9450 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5C813A06
P 10150 1500
F 0 "R?" V 9943 1500 50  0000 C CNN
F 1 "330" V 10034 1500 50  0000 C CNN
F 2 "" V 10080 1500 50  0001 C CNN
F 3 "~" H 10150 1500 50  0001 C CNN
	1    10150 1500
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5C813A0D
P 10150 1750
F 0 "R?" V 9943 1750 50  0000 C CNN
F 1 "11k" V 10034 1750 50  0000 C CNN
F 2 "" V 10080 1750 50  0001 C CNN
F 3 "~" H 10150 1750 50  0001 C CNN
	1    10150 1750
	0    1    1    0   
$EndComp
Text GLabel 10400 1500 2    50   Input ~ 0
GND
Wire Wire Line
	10400 1500 10300 1500
Text GLabel 10400 1750 2    50   Input ~ 0
GND
Wire Wire Line
	10400 1750 10300 1750
Wire Wire Line
	9950 1500 10000 1500
Wire Wire Line
	9950 1750 10000 1750
Wire Wire Line
	9950 1750 9950 1950
Wire Wire Line
	9950 1950 10050 1950
Connection ~ 9950 1750
Wire Wire Line
	9950 2700 9950 2900
Wire Wire Line
	9950 2900 10050 2900
Connection ~ 9950 2700
Text GLabel 8850 2450 0    50   Input ~ 0
5V
Text GLabel 8850 1500 0    50   Input ~ 0
5V
Wire Wire Line
	8850 1500 8950 1500
Wire Wire Line
	8950 1500 8950 1400
Wire Wire Line
	8950 1500 8950 1650
Connection ~ 8950 1500
Wire Wire Line
	8950 2450 8950 2350
Wire Wire Line
	8850 2450 8950 2450
Wire Wire Line
	8950 2450 8950 2600
Connection ~ 8950 2450
Text GLabel 10050 1950 2    50   Input ~ 0
Encoder1
Text GLabel 10050 2900 2    50   Input ~ 0
Encoder2
$Comp
L Regulator_Linear:L7805 U?
U 1 1 5C81568D
P 9600 3550
F 0 "U?" H 9600 3792 50  0000 C CNN
F 1 "L7805" H 9600 3701 50  0000 C CNN
F 2 "" H 9625 3400 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 9600 3500 50  0001 C CNN
	1    9600 3550
	1    0    0    -1  
$EndComp
Text GLabel 10250 3950 2    50   Input ~ 0
GND
$Comp
L cyclophone:C C?
U 1 1 5C81583B
P 9150 3750
F 0 "C?" H 9265 3788 40  0000 L CNN
F 1 "0.33uF" H 9265 3712 40  0000 L CNN
F 2 "" H 9188 3600 30  0000 C CNN
F 3 "" H 9150 3750 60  0000 C CNN
	1    9150 3750
	1    0    0    -1  
$EndComp
$Comp
L cyclophone:C C?
U 1 1 5C8158B3
P 10050 3750
F 0 "C?" H 10165 3788 40  0000 L CNN
F 1 "0.1uF" H 10165 3712 40  0000 L CNN
F 2 "" H 10088 3600 30  0000 C CNN
F 3 "" H 10050 3750 60  0000 C CNN
	1    10050 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 3950 10050 3950
Connection ~ 10050 3950
Wire Wire Line
	10050 3950 9150 3950
Wire Wire Line
	9300 3550 9150 3550
Connection ~ 9150 3550
Wire Wire Line
	9900 3550 10050 3550
Connection ~ 10050 3550
Wire Wire Line
	10050 3550 10250 3550
Text GLabel 10250 3550 2    50   Input ~ 0
5V
Text GLabel 9000 3550 0    50   Input ~ 0
8.4V
Wire Wire Line
	9000 3550 9150 3550
$Comp
L Device:LED D?
U 1 1 5C81702D
P 9500 4850
F 0 "D?" H 9491 5066 50  0000 C CNN
F 1 "LED" H 9491 4975 50  0000 C CNN
F 2 "" H 9500 4850 50  0001 C CNN
F 3 "~" H 9500 4850 50  0001 C CNN
	1    9500 4850
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 5C81727F
P 10000 4850
F 0 "D?" H 9991 5066 50  0000 C CNN
F 1 "LED" H 9991 4975 50  0000 C CNN
F 2 "" H 10000 4850 50  0001 C CNN
F 3 "~" H 10000 4850 50  0001 C CNN
	1    10000 4850
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_BCE Q?
U 1 1 5C8175BD
P 9450 5400
F 0 "Q?" H 9641 5446 50  0000 L CNN
F 1 "Q_NPN_BCE" H 9641 5355 50  0000 L CNN
F 2 "" H 9650 5500 50  0001 C CNN
F 3 "~" H 9450 5400 50  0001 C CNN
	1    9450 5400
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_BCE Q?
U 1 1 5C81765A
P 9950 5400
F 0 "Q?" H 10141 5446 50  0000 L CNN
F 1 "Q_NPN_BCE" H 10141 5355 50  0000 L CNN
F 2 "" H 10150 5500 50  0001 C CNN
F 3 "~" H 9950 5400 50  0001 C CNN
	1    9950 5400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5C817C0F
P 9500 5100
F 0 "R?" V 9293 5100 50  0000 C CNN
F 1 "330" V 9384 5100 50  0000 C CNN
F 2 "" V 9430 5100 50  0001 C CNN
F 3 "~" H 9500 5100 50  0001 C CNN
	1    9500 5100
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5C817CFF
P 10000 5100
F 0 "R?" V 9793 5100 50  0000 C CNN
F 1 "330" V 9884 5100 50  0000 C CNN
F 2 "" V 9930 5100 50  0001 C CNN
F 3 "~" H 10000 5100 50  0001 C CNN
	1    10000 5100
	0    1    1    0   
$EndComp
Text GLabel 3150 1650 1    50   Input ~ 0
8.4V
Wire Wire Line
	3150 1650 3150 1750
Text GLabel 3450 3800 2    50   Input ~ 0
GND
Wire Wire Line
	3450 3800 3350 3800
Wire Wire Line
	3350 3750 3350 3800
NoConn ~ 2750 2250
NoConn ~ 2750 2150
NoConn ~ 3750 2550
Text GLabel 2650 2350 0    50   Input ~ 0
Encoder1
Text GLabel 2650 2450 0    50   Input ~ 0
Encoder2
Wire Wire Line
	2650 2350 2750 2350
Wire Wire Line
	2650 2450 2750 2450
$Comp
L Device:LED D?
U 1 1 5C81CEED
P 10500 4850
F 0 "D?" H 10491 5066 50  0000 C CNN
F 1 "LED" H 10491 4975 50  0000 C CNN
F 2 "" H 10500 4850 50  0001 C CNN
F 3 "~" H 10500 4850 50  0001 C CNN
	1    10500 4850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5C81CF31
P 10500 5100
F 0 "R?" V 10293 5100 50  0000 C CNN
F 1 "330" V 10384 5100 50  0000 C CNN
F 2 "" V 10430 5100 50  0001 C CNN
F 3 "~" H 10500 5100 50  0001 C CNN
	1    10500 5100
	0    1    1    0   
$EndComp
$Comp
L Device:Q_NPN_BCE Q?
U 1 1 5C81CFAB
P 10450 5400
F 0 "Q?" H 10641 5446 50  0000 L CNN
F 1 "Q_NPN_BCE" H 10641 5355 50  0000 L CNN
F 2 "" H 10650 5500 50  0001 C CNN
F 3 "~" H 10450 5400 50  0001 C CNN
	1    10450 5400
	1    0    0    -1  
$EndComp
Wire Notes Line
	8650 3000 8650 950 
Wire Notes Line
	8650 950  10650 950 
Wire Notes Line
	10650 950  10650 3000
Wire Notes Line
	10650 3000 8650 3000
Text Notes 8650 1100 0    98   ~ 0
Encoder
Wire Notes Line
	8650 3200 10650 3200
Wire Notes Line
	10650 3200 10650 4100
Wire Notes Line
	10650 4100 8650 4100
Wire Notes Line
	8650 4100 8650 3200
Text Notes 8650 3300 0    79   ~ 0
Regulador de tensão +5V
$Comp
L Switch:SW_Push SW?
U 1 1 5C81F63E
P 8350 5400
F 0 "SW?" H 8350 5685 50  0000 C CNN
F 1 "SW_Push" H 8350 5594 50  0000 C CNN
F 2 "" H 8350 5600 50  0001 C CNN
F 3 "" H 8350 5600 50  0001 C CNN
	1    8350 5400
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 5C81F7C0
P 7650 5400
F 0 "SW?" H 7650 5685 50  0000 C CNN
F 1 "SW_Push" H 7650 5594 50  0000 C CNN
F 2 "" H 7650 5600 50  0001 C CNN
F 3 "" H 7650 5600 50  0001 C CNN
	1    7650 5400
	1    0    0    -1  
$EndComp
Text GLabel 2650 2550 0    50   Input ~ 0
Sensor1
Text GLabel 2650 2650 0    50   Input ~ 0
Sensor2
Text GLabel 2650 2750 0    50   Input ~ 0
Sensor3
Text GLabel 2650 2850 0    50   Input ~ 0
Sensor4
Text GLabel 2650 2950 0    50   Input ~ 0
Sensor5
Text GLabel 2650 3050 0    50   Input ~ 0
Sensor6
Text GLabel 2650 3150 0    50   Input ~ 0
Sensor7
Text GLabel 2650 3350 0    50   Input ~ 0
SensorDir
Text GLabel 2650 3250 0    50   Input ~ 0
SensorEsq
Text GLabel 3900 2750 2    50   Input ~ 0
Botao1
$EndSCHEMATC