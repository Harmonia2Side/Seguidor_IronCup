EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
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
L Device:LED D?
U 1 1 5D80B977
P 9850 -2800
F 0 "D?" H 9841 -2584 50  0000 C CNN
F 1 "LedAzul" H 9841 -2675 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 9850 -2800 50  0001 C CNN
F 3 "~" H 9850 -2800 50  0001 C CNN
	1    9850 -2800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5D80B97E
P 9450 -2800
F 0 "R?" V 9450 -2800 50  0000 C CNN
F 1 "R330LedAzul" V 9350 -2900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9380 -2800 50  0001 C CNN
F 3 "~" H 9450 -2800 50  0001 C CNN
	1    9450 -2800
	0    1    1    0   
$EndComp
Text GLabel 1900 -4950 0    50   Input ~ 0
8.4V
Text GLabel 2300 -2800 2    50   Input ~ 0
GND
NoConn ~ 2600 -4050
Text GLabel 1500 -4250 0    50   Input ~ 0
Encoder1
Text GLabel 1500 -4150 0    50   Input ~ 0
Encoder2
$Comp
L Switch:SW_Push SW?
U 1 1 5D80B98A
P 9550 -1600
F 0 "SW?" H 9550 -1315 50  0000 C CNN
F 1 "SW_comando1" H 9550 -1406 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H5mm" H 9550 -1400 50  0001 C CNN
F 3 "" H 9550 -1400 50  0001 C CNN
	1    9550 -1600
	1    0    0    -1  
$EndComp
Text GLabel 1500 -3250 0    50   Input ~ 0
SensorDir
Text GLabel 1500 -3350 0    50   Input ~ 0
SensorEsq
Text GLabel 1500 -3750 0    50   Input ~ 0
Motor1Dir1
Text GLabel 1500 -3850 0    50   Input ~ 0
Motor1Dir2
Text GLabel 1500 -3650 0    50   Input ~ 0
Motor2Dir1
Text GLabel 1500 -3550 0    50   Input ~ 0
Motor2Dir2
Text GLabel 1500 -4050 0    50   Input ~ 0
Botao1
Text GLabel 2400 -4950 2    50   Input ~ 0
5VArduino
Text GLabel 6750 -4750 0    50   Input ~ 0
5VPonteH
Text GLabel 6750 -4400 0    50   Input ~ 0
Motor1Dir1
Text GLabel 6750 -4300 0    50   Input ~ 0
Motor1Dir2
Text GLabel 6750 -4000 0    50   Input ~ 0
Motor2PWM
Text GLabel 6750 -4500 0    50   Input ~ 0
Motor1PWM
Text GLabel 6750 -4200 0    50   Input ~ 0
Motor2Dir1
Text GLabel 6750 -4100 0    50   Input ~ 0
Motor2Dir2
Text GLabel 6750 -4650 0    50   Input ~ 0
GND
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D80B9A1
P 7050 -4300
F 0 "J?" H 7078 -4274 50  0000 L CNN
F 1 "Conn_01x01_Motor1Dir2" H 7200 -4300 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 7050 -4300 50  0001 C CNN
F 3 "~" H 7050 -4300 50  0001 C CNN
	1    7050 -4300
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D80B9A8
P 7050 -4200
F 0 "J?" H 7078 -4174 50  0000 L CNN
F 1 "Conn_01x01_Motor2Dir1" H 7200 -4200 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 7050 -4200 50  0001 C CNN
F 3 "~" H 7050 -4200 50  0001 C CNN
	1    7050 -4200
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D80B9AF
P 7050 -4100
F 0 "J?" H 7078 -4074 50  0000 L CNN
F 1 "Conn_01x01_Motor2Dir2" H 7200 -4100 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 7050 -4100 50  0001 C CNN
F 3 "~" H 7050 -4100 50  0001 C CNN
	1    7050 -4100
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D80B9B6
P 7050 -4000
F 0 "J?" H 7078 -3974 50  0000 L CNN
F 1 "Conn_01x01_Motor2PWM" H 7200 -4000 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 7050 -4000 50  0001 C CNN
F 3 "~" H 7050 -4000 50  0001 C CNN
	1    7050 -4000
	1    0    0    -1  
$EndComp
Text GLabel 6750 -4850 0    50   Input ~ 0
8.4V
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D80B9BE
P 7050 -4850
F 0 "J?" H 7078 -4824 50  0000 L CNN
F 1 "Conn_01x01_8.4VPonteH" H 7200 -4850 50  0000 L CNN
F 2 "Wire_Pads:SolderWirePad_single_1-2mmDrill" H 7050 -4850 50  0001 C CNN
F 3 "~" H 7050 -4850 50  0001 C CNN
	1    7050 -4850
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D80B9C5
P 7050 -4650
F 0 "J?" H 7078 -4624 50  0000 L CNN
F 1 "Conn_01x01_GNDPonteH" H 7200 -4650 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill1.2mm" H 7050 -4650 50  0001 C CNN
F 3 "~" H 7050 -4650 50  0001 C CNN
	1    7050 -4650
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D80B9CC
P 7050 -4750
F 0 "J?" H 7078 -4724 50  0000 L CNN
F 1 "Conn_01x01_5VPonteH" H 7200 -4750 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill1.2mm" H 7050 -4750 50  0001 C CNN
F 3 "~" H 7050 -4750 50  0001 C CNN
	1    7050 -4750
	1    0    0    -1  
$EndComp
Text Notes 6500 -5000 0    79   ~ 0
Ponte H - Pinos soltos
$Comp
L Mechanical:MountingHole H?
U 1 1 5D80B9D4
P 7550 -2450
F 0 "H?" H 7650 -2404 50  0000 L CNN
F 1 "FurosPonteH" H 7650 -2495 50  0000 L CNN
F 2 "Sensores_e_componentes_SL:Ponte_H_furos" H 7550 -2450 50  0001 C CNN
F 3 "~" H 7550 -2450 50  0001 C CNN
	1    7550 -2450
	1    0    0    -1  
$EndComp
Text Notes 1550 -5050 0    79   ~ 0
Arduino Nano V3.x
NoConn ~ 2200 -4850
Text GLabel 9150 -2800 0    59   Input ~ 0
LedAzul
Text GLabel 10150 -2800 2    59   Input ~ 0
GND
Text Notes 9150 -3100 0    79   ~ 0
Leds da pcb
$Comp
L Device:R R?
U 1 1 5D80B9E0
P 9450 -2400
F 0 "R?" V 9450 -2400 50  0000 C CNN
F 1 "R330LedVerde" V 9350 -2500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9380 -2400 50  0001 C CNN
F 3 "~" H 9450 -2400 50  0001 C CNN
	1    9450 -2400
	0    1    1    0   
$EndComp
$Comp
L Device:LED D?
U 1 1 5D80B9E7
P 9850 -2400
F 0 "D?" H 9841 -2184 50  0000 C CNN
F 1 "LedVerde" H 9841 -2275 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 9850 -2400 50  0001 C CNN
F 3 "~" H 9850 -2400 50  0001 C CNN
	1    9850 -2400
	1    0    0    -1  
$EndComp
Text GLabel 10150 -2400 2    59   Input ~ 0
GND
Text GLabel 9150 -2400 0    59   Input ~ 0
5VArduino
$Comp
L Device:R RPullDown?
U 1 1 5D80B9F0
P 9900 -1350
F 0 "RPullDown?" H 9970 -1304 50  0000 L CNN
F 1 "R10KPullDown" H 9970 -1395 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 9830 -1350 50  0001 C CNN
F 3 "~" H 9900 -1350 50  0001 C CNN
	1    9900 -1350
	1    0    0    -1  
$EndComp
Text GLabel 10000 -1600 2    50   Input ~ 0
Botao1
Text GLabel 9800 -1100 0    59   Input ~ 0
GND
Text Notes 9100 -2000 0    79   ~ 0
Botoes da pcb
Text GLabel 9200 -4500 0    50   Input ~ 0
Encoder1
Text GLabel 9200 -4650 0    50   Input ~ 0
5VArduino
Text GLabel 9200 -4350 0    50   Input ~ 0
GND
Text GLabel 9200 -3850 0    50   Input ~ 0
Encoder2
Text GLabel 9200 -4000 0    50   Input ~ 0
5VArduino
Text GLabel 9200 -3700 0    50   Input ~ 0
GND
Text Notes 8750 -4950 0    79   ~ 0
Encoders - Pads de conexao
Text Notes 8800 -4800 0    39   ~ 0
1 - Esquerda\n
Text Notes 8800 -4150 0    39   ~ 0
2 - Direita
Text GLabel 4400 -4100 0    50   Input ~ 0
Sensor1
Text GLabel 4400 -4200 0    50   Input ~ 0
Sensor2
Text GLabel 4400 -4300 0    50   Input ~ 0
Sensor3
Text GLabel 4400 -4400 0    50   Input ~ 0
Sensor4
Text GLabel 4400 -4500 0    50   Input ~ 0
Sensor5
Text GLabel 4400 -4600 0    50   Input ~ 0
Sensor6
Text GLabel 4400 -4700 0    50   Input ~ 0
Sensor7
Text GLabel 4400 -4000 0    50   Input ~ 0
SensorEsq
Text GLabel 5100 -4000 2    50   Input ~ 0
SensorDir
Text Notes 3900 -3700 0    59   ~ 0
Alimentação da placa de sensores
Text Notes 3750 -4950 0    79   ~ 0
Placa Sensores - Pinos soltos
Text Notes 2300 -1950 0    79   ~ 0
Arduino Nano V3.x - Pinos Extras Soltos
Text GLabel 2700 -3850 2    50   Input ~ 0
Sensor1
Text GLabel 2700 -3750 2    50   Input ~ 0
Sensor2
Text GLabel 2700 -3650 2    50   Input ~ 0
Sensor3
Text GLabel 2700 -3550 2    50   Input ~ 0
Sensor4
Text GLabel 2700 -3450 2    50   Input ~ 0
Sensor5
Text GLabel 2700 -3350 2    50   Input ~ 0
Sensor6
Text GLabel 2700 -3250 2    50   Input ~ 0
Sensor7
Text GLabel 1500 -3150 0    50   Input ~ 0
LedAzul
Text GLabel 1500 -4450 0    50   Input ~ 0
Tx
Text GLabel 1500 -4350 0    50   Input ~ 0
Rx
Text GLabel 3150 -1750 2    50   Input ~ 0
Rx
Text GLabel 3150 -1850 2    50   Input ~ 0
Tx
$Comp
L Connector:Conn_01x02_Female J?
U 1 1 5D80BA1B
P 2800 -1750
F 0 "J?" H 2850 -1800 50  0000 C CNN
F 1 "Conn_01x02_ArduinoTxRx" H 3400 -1800 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 2800 -1750 50  0001 C CNN
F 3 "~" H 2800 -1750 50  0001 C CNN
	1    2800 -1750
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D80BA22
P 2800 -1650
F 0 "J?" H 2800 -1650 50  0000 L CNN
F 1 "Conn_01x01_ArduinoReset" H 2900 -1650 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x01_P2.54mm_Vertical" H 2800 -1650 50  0001 C CNN
F 3 "~" H 2800 -1650 50  0001 C CNN
	1    2800 -1650
	-1   0    0    1   
$EndComp
Text GLabel 2700 -4350 2    50   Input ~ 0
ResetArduino
Text GLabel 3150 -1650 2    50   Input ~ 0
ResetArduino
NoConn ~ 2600 -4450
Text GLabel 5150 -4600 2    50   Input ~ 0
GND
Text GLabel 4850 -3500 2    50   Input ~ 0
VccSensores
Text GLabel 5100 -4100 2    50   Input ~ 0
VccSensores
Text GLabel 4600 -3500 0    50   Input ~ 0
5VArduino
$Comp
L Device:Fuse F?
U 1 1 5D80BA30
P 6900 -2900
F 0 "F?" H 6960 -2854 50  0000 L CNN
F 1 "Fuse-3A" H 6960 -2945 50  0000 L CNN
F 2 "Fuse:Fuseholder_Cylinder-5x20mm_Stelvio-Kontek_PTF78_Horizontal_Open" V 6830 -2900 50  0001 C CNN
F 3 "~" H 6900 -2900 50  0001 C CNN
	1    6900 -2900
	1    0    0    -1  
$EndComp
$Comp
L Device:Fuse F?
U 1 1 5D80BA37
P 7450 -2900
F 0 "F?" H 7510 -2854 50  0000 L CNN
F 1 "Fuse-3A" H 7510 -2945 50  0000 L CNN
F 2 "Fuse:Fuseholder_Cylinder-5x20mm_Stelvio-Kontek_PTF78_Horizontal_Open" V 7380 -2900 50  0001 C CNN
F 3 "~" H 7450 -2900 50  0001 C CNN
	1    7450 -2900
	1    0    0    -1  
$EndComp
Text GLabel 6900 -2700 0    50   Input ~ 0
PCBMotor1_fused
Text GLabel 7450 -3100 2    50   Input ~ 0
PonteHPCBMotor2
Text GLabel 7450 -2700 2    50   Input ~ 0
PCBMotor2_fused
Text GLabel 6900 -3100 0    50   Input ~ 0
PonteHPCBMotor1
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D80BA42
P 7150 -3800
F 0 "J?" H 7178 -3774 50  0000 L CNN
F 1 "Conn_01x01_Motor1PonteHPCB" H 7300 -3800 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill1.5mm" H 7150 -3800 50  0001 C CNN
F 3 "~" H 7150 -3800 50  0001 C CNN
	1    7150 -3800
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D80BA49
P 7150 -3700
F 0 "J?" H 7178 -3674 50  0000 L CNN
F 1 "Conn_01x01_Motor2PonteHPCB" H 7300 -3700 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill1.5mm" H 7150 -3700 50  0001 C CNN
F 3 "~" H 7150 -3700 50  0001 C CNN
	1    7150 -3700
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D80BA50
P 7150 -3550
F 0 "J?" H 7178 -3524 50  0000 L CNN
F 1 "Conn_01x01_Motor1PCBMotor" H 7300 -3550 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill1.5mm" H 7150 -3550 50  0001 C CNN
F 3 "~" H 7150 -3550 50  0001 C CNN
	1    7150 -3550
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D80BA57
P 7150 -3450
F 0 "J?" H 7178 -3424 50  0000 L CNN
F 1 "Conn_01x01_Motor2PCBMotor" H 7300 -3450 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill1.5mm" H 7150 -3450 50  0001 C CNN
F 3 "~" H 7150 -3450 50  0001 C CNN
	1    7150 -3450
	1    0    0    -1  
$EndComp
Text GLabel 6850 -3550 0    50   Input ~ 0
PCBMotor1_fused
Text GLabel 6850 -3800 0    50   Input ~ 0
PonteHPCBMotor1
Text GLabel 6850 -3700 0    50   Input ~ 0
PonteHPCBMotor2
Text GLabel 6850 -3450 0    50   Input ~ 0
PCBMotor2_fused
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D80BA62
P 7050 -4400
F 0 "J?" H 7078 -4374 50  0000 L CNN
F 1 "Conn_01x01_Motor1Dir1" H 7200 -4400 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 7050 -4400 50  0001 C CNN
F 3 "~" H 7050 -4400 50  0001 C CNN
	1    7050 -4400
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D80BA69
P 7050 -4500
F 0 "J?" H 7078 -4474 50  0000 L CNN
F 1 "Conn_01x01_Motor1PWM" H 7200 -4500 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill0.8mm" H 7050 -4500 50  0001 C CNN
F 3 "~" H 7050 -4500 50  0001 C CNN
	1    7050 -4500
	1    0    0    -1  
$EndComp
Text Notes 6550 -3200 0    79   ~ 0
Fusíveis dos Motores
Text Notes 6150 -2450 0    39   ~ 0
Furos da PonteH para fixação na placa:
NoConn ~ 5000 -4500
NoConn ~ 5000 -4400
Wire Wire Line
	2000 -4950 2000 -4850
Wire Wire Line
	2300 -2800 2200 -2800
Wire Wire Line
	2200 -2850 2200 -2800
Wire Wire Line
	2100 -2850 2100 -2800
Wire Wire Line
	2100 -2800 2200 -2800
Connection ~ 2200 -2800
Wire Wire Line
	1900 -4950 2000 -4950
Wire Wire Line
	2400 -4950 2300 -4950
Wire Wire Line
	2300 -4950 2300 -4850
Wire Wire Line
	1500 -4250 1600 -4250
Wire Wire Line
	1500 -4150 1600 -4150
Wire Wire Line
	1500 -4050 1600 -4050
Wire Wire Line
	1500 -3950 1600 -3950
Wire Wire Line
	1500 -3750 1600 -3750
Wire Wire Line
	1500 -3650 1600 -3650
Wire Wire Line
	1500 -3550 1600 -3550
Wire Wire Line
	1500 -3450 1600 -3450
Wire Wire Line
	1500 -3350 1600 -3350
Wire Wire Line
	1500 -3250 1600 -3250
Wire Wire Line
	1500 -3150 1600 -3150
Wire Wire Line
	2700 -3150 2600 -3150
Wire Wire Line
	2600 -3250 2700 -3250
Wire Wire Line
	2600 -3350 2700 -3350
Wire Wire Line
	2600 -3450 2700 -3450
Wire Wire Line
	2600 -3550 2700 -3550
Wire Wire Line
	2600 -3650 2700 -3650
Wire Wire Line
	2600 -3750 2700 -3750
Wire Wire Line
	2600 -3850 2700 -3850
Wire Wire Line
	6750 -4850 6850 -4850
Wire Wire Line
	6850 -4750 6750 -4750
Wire Wire Line
	6750 -4650 6850 -4650
Wire Wire Line
	6750 -4500 6850 -4500
Wire Wire Line
	6750 -4400 6850 -4400
Wire Wire Line
	6750 -4300 6850 -4300
Wire Wire Line
	6750 -4200 6850 -4200
Wire Wire Line
	6750 -4100 6850 -4100
Wire Wire Line
	6750 -4000 6850 -4000
Wire Wire Line
	9150 -2800 9300 -2800
Wire Wire Line
	9600 -2800 9700 -2800
Wire Wire Line
	10000 -2800 10150 -2800
Wire Wire Line
	10000 -2400 10150 -2400
Wire Wire Line
	9700 -2400 9600 -2400
Wire Wire Line
	9150 -2400 9300 -2400
Wire Wire Line
	9750 -1600 9900 -1600
Wire Wire Line
	9900 -1500 9900 -1600
Connection ~ 9900 -1600
Wire Wire Line
	9900 -1600 10000 -1600
Wire Wire Line
	9800 -1100 9900 -1100
Wire Wire Line
	9900 -1100 9900 -1200
Wire Wire Line
	9050 -1600 9350 -1600
Wire Notes Line
	6100 -5150 8250 -5150
Wire Notes Line
	8250 -1600 6100 -1600
Wire Notes Line
	8550 -3300 10550 -3300
Wire Notes Line
	10550 -3300 10550 -900
Wire Notes Line
	950  -2550 950  -5200
Wire Notes Line
	3100 -2550 3100 -5200
Wire Notes Line
	3100 -2550 950  -2550
Wire Notes Line
	950  -5200 3100 -5200
Wire Notes Line
	8550 -5150 10700 -5150
Wire Notes Line
	10700 -5150 10700 -3550
Wire Notes Line
	10700 -3550 8550 -3550
Wire Notes Line
	8550 -3550 8550 -5150
Wire Notes Line
	5800 -3300 3550 -3300
Wire Notes Line
	1700 -2150 5500 -2150
Wire Notes Line
	5500 -300 1700 -300
Wire Wire Line
	1500 -4350 1600 -4350
Wire Wire Line
	1500 -4450 1600 -4450
Wire Wire Line
	3150 -1750 3000 -1750
Wire Wire Line
	3150 -1850 3000 -1850
Wire Wire Line
	2700 -4350 2600 -4350
Wire Wire Line
	3150 -1650 3000 -1650
Wire Notes Line
	3550 -5150 5800 -5150
Wire Wire Line
	4600 -3500 4850 -3500
Wire Notes Line
	5800 -5150 5800 -3300
Wire Notes Line
	3550 -5150 3550 -3300
Wire Wire Line
	6850 -3800 6950 -3800
Wire Wire Line
	6850 -3700 6950 -3700
Wire Wire Line
	6850 -3550 6950 -3550
Wire Wire Line
	6850 -3450 6950 -3450
Wire Wire Line
	6900 -3100 6900 -3050
Wire Wire Line
	7450 -2700 7450 -2750
Wire Wire Line
	7450 -3100 7450 -3050
Wire Wire Line
	6900 -2700 6900 -2750
Wire Wire Line
	4400 -4700 4500 -4700
Wire Wire Line
	4400 -4600 4500 -4600
Wire Wire Line
	4400 -4500 4500 -4500
Wire Wire Line
	4400 -4400 4500 -4400
Wire Wire Line
	4400 -4300 4500 -4300
Wire Wire Line
	4400 -4200 4500 -4200
Wire Wire Line
	4400 -4100 4500 -4100
Wire Wire Line
	4400 -4000 4500 -4000
Wire Wire Line
	5100 -4000 5000 -4000
Wire Notes Line
	1700 -2150 1700 -300
Text Notes 2100 -1350 0    79   ~ 0
Circuito de Alimentação - Pads de Conexão
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D80BAD6
P 3650 -1100
F 0 "J?" H 3678 -1074 50  0000 L CNN
F 1 "Conn_8.4V_PlacaAlimentação" H 3800 -1100 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill1.2mm" H 3650 -1100 50  0001 C CNN
F 3 "~" H 3650 -1100 50  0001 C CNN
	1    3650 -1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 -1100 3450 -1100
$Comp
L Connector:Conn_01x01_Female J?
U 1 1 5D80BADE
P 3650 -700
F 0 "J?" H 3678 -674 50  0000 L CNN
F 1 "Conn_GND_PlacaAlimentação" H 3800 -700 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill1.2mm" H 3650 -700 50  0001 C CNN
F 3 "~" H 3650 -700 50  0001 C CNN
	1    3650 -700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 -700 3450 -700
Text GLabel 2850 -700 0    50   Input ~ 0
GND
Text GLabel 2850 -1100 0    50   Input ~ 0
8.4V
Text GLabel 9050 -1600 0    59   Input ~ 0
5VArduino
$Comp
L Placa_central_v01-rescue:Arduino_Nano_v3.x-MCU_Module A?
U 1 1 5D80BAE9
P 2100 -3850
F 0 "A?" H 2100 -4936 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" H 2100 -5027 50  0000 C CNN
F 2 "Sensores_e_componentes_SL:Arduino_Nano" H 2250 -4800 50  0001 L CNN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 2100 -4850 50  0001 C CNN
	1    2100 -3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 -3850 1500 -3850
Wire Wire Line
	5000 -4100 5100 -4100
$Comp
L Connector_Generic:Conn_02x08_Odd_Even J?
U 1 1 5D80BAF2
P 4700 -4400
F 0 "J?" H 4750 -3883 50  0000 C CNN
F 1 "Conn_02x08_Odd_Even" H 4750 -3974 50  0000 C CNN
F 2 "Connector_IDC:IDC-Header_2x08_P2.54mm_Horizontal" H 4700 -4400 50  0001 C CNN
F 3 "~" H 4700 -4400 50  0001 C CNN
	1    4700 -4400
	1    0    0    -1  
$EndComp
NoConn ~ 5000 -4300
Wire Wire Line
	5000 -4700 5150 -4700
$Comp
L Mechanical:MountingHole H?
U 1 1 5D80BAFB
P 7550 -2050
F 0 "H?" H 7650 -2004 50  0000 L CNN
F 1 "FuroPlaca" H 7650 -2095 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill2.5mm" H 7550 -2050 50  0001 C CNN
F 3 "~" H 7550 -2050 50  0001 C CNN
	1    7550 -2050
	1    0    0    -1  
$EndComp
Text Notes 6190 -2025 0    39   ~ 0
Furos da placa para fixação no acrílico
$Comp
L Mechanical:MountingHole H?
U 1 1 5D80BB03
P 7545 -1790
F 0 "H?" H 7645 -1744 50  0000 L CNN
F 1 "FuroPlaca" H 7645 -1835 50  0000 L CNN
F 2 "Connector_Wire:SolderWirePad_1x01_Drill2.5mm" H 7545 -1790 50  0001 C CNN
F 3 "~" H 7545 -1790 50  0001 C CNN
	1    7545 -1790
	1    0    0    -1  
$EndComp
Text GLabel 2700 -3150 2    50   Input ~ 0
Sensor8
Text GLabel 5150 -4700 2    50   Input ~ 0
Sensor8
Wire Wire Line
	5150 -4600 5000 -4600
NoConn ~ 5000 -4200
Wire Wire Line
	9500 -4650 9500 -4600
Wire Wire Line
	9200 -4650 9500 -4650
Wire Wire Line
	9200 -4500 9500 -4500
Wire Wire Line
	9500 -4350 9500 -4400
Wire Wire Line
	9200 -4350 9500 -4350
Wire Wire Line
	9500 -4000 9500 -3950
Wire Wire Line
	9200 -4000 9500 -4000
Wire Wire Line
	9200 -3850 9500 -3850
Wire Wire Line
	9500 -3700 9500 -3750
Wire Wire Line
	9200 -3700 9500 -3700
$Comp
L Connector:Conn_01x03_Female J?
U 1 1 5D80BB18
P 9700 -4500
F 0 "J?" H 9728 -4474 50  0000 L CNN
F 1 "Conn_01x03_Female" H 9728 -4565 50  0000 L CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-03A_1x03_P2.54mm_Vertical" H 9700 -4500 50  0001 C CNN
F 3 "~" H 9700 -4500 50  0001 C CNN
	1    9700 -4500
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Female J?
U 1 1 5D80BB1F
P 9700 -3850
F 0 "J?" H 9728 -3824 50  0000 L CNN
F 1 "Conn_01x03_Female" H 9728 -3915 50  0000 L CNN
F 2 "Connector_Molex:Molex_KK-254_AE-6410-03A_1x03_P2.54mm_Vertical" H 9700 -3850 50  0001 C CNN
F 3 "~" H 9700 -3850 50  0001 C CNN
	1    9700 -3850
	1    0    0    -1  
$EndComp
Text GLabel 1500 -3950 0    50   Input ~ 0
Motor1PWM
Text GLabel 1500 -3450 0    50   Input ~ 0
Motor2PWM
Wire Notes Line
	6100 -5150 6100 -1600
Wire Notes Line
	8250 -5150 8250 -1600
Wire Notes Line
	5500 -2150 5500 -300
Wire Notes Line
	8500 -3250 8500 -900
Wire Notes Line
	8500 -900 10550 -900
$EndSCHEMATC
