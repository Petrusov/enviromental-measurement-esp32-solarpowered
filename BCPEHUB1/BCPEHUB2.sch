EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Enviromental sensor measuring with ESP32"
Date "2021-07-17"
Rev "B"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:R R5
U 1 1 60E5C127
P 3650 1500
F 0 "R5" V 3730 1500 50  0000 C CNN
F 1 "1k" V 3650 1500 50  0000 C CNN
F 2 "Resistor_SMD:R_1210_3225Metric_Pad1.30x2.65mm_HandSolder" V 3580 1500 50  0001 C CNN
F 3 "" H 3650 1500 50  0001 C CNN
	1    3650 1500
	0    1    1    0   
$EndComp
$Comp
L Device:C C2
U 1 1 60E5C12D
P 2650 2050
F 0 "C2" H 2675 2150 50  0000 L CNN
F 1 "0.1uF" H 2675 1950 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 2688 1900 50  0001 C CNN
F 3 "" H 2650 2050 50  0001 C CNN
	1    2650 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D2
U 1 1 60E5C133
P 3050 1800
F 0 "D2" H 3050 1900 50  0000 C CNN
F 1 "LED" H 3050 1700 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3050 1800 50  0001 C CNN
F 3 "" H 3050 1800 50  0001 C CNN
	1    3050 1800
	-1   0    0    1   
$EndComp
$Comp
L Device:R R6
U 1 1 60E5C139
P 3600 1800
F 0 "R6" V 3680 1800 50  0000 C CNN
F 1 "1k" V 3600 1800 50  0000 C CNN
F 2 "Resistor_SMD:R_1210_3225Metric_Pad1.30x2.65mm_HandSolder" V 3530 1800 50  0001 C CNN
F 3 "" H 3600 1800 50  0001 C CNN
	1    3600 1800
	0    1    1    0   
$EndComp
$Comp
L Device:LED D1
U 1 1 60E5C13F
P 3050 1500
F 0 "D1" H 3050 1600 50  0000 C CNN
F 1 "LED" H 3050 1400 50  0000 C CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3050 1500 50  0001 C CNN
F 3 "" H 3050 1500 50  0001 C CNN
	1    3050 1500
	-1   0    0    1   
$EndComp
$Comp
L Device:R R7
U 1 1 60E5C145
P 5400 1750
F 0 "R7" V 5480 1750 50  0000 C CNN
F 1 "10k" V 5400 1750 50  0000 C CNN
F 2 "Resistor_SMD:R_1210_3225Metric_Pad1.30x2.65mm_HandSolder" V 5330 1750 50  0001 C CNN
F 3 "" H 5400 1750 50  0001 C CNN
	1    5400 1750
	0    1    1    0   
$EndComp
Text GLabel 9400 1500 2    39   Input ~ 0
BAT+
$Comp
L Device:R R8
U 1 1 60E5C14F
P 6750 1950
F 0 "R8" V 6830 1950 50  0000 C CNN
F 1 "1k" V 6750 1950 50  0000 C CNN
F 2 "Resistor_SMD:R_1210_3225Metric_Pad1.30x2.65mm_HandSolder" V 6680 1950 50  0001 C CNN
F 3 "" H 6750 1950 50  0001 C CNN
	1    6750 1950
	-1   0    0    1   
$EndComp
$Comp
L Device:C C4
U 1 1 60E5C155
P 8300 1800
F 0 "C4" H 8325 1900 50  0000 L CNN
F 1 "0.1uF" H 8325 1700 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_8x6.5" H 8338 1650 50  0001 C CNN
F 3 "" H 8300 1800 50  0001 C CNN
	1    8300 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 60E5C15B
P 8800 1500
F 0 "R9" V 8880 1500 50  0000 C CNN
F 1 "100" V 8800 1500 50  0000 C CNN
F 2 "Resistor_SMD:R_1210_3225Metric_Pad1.30x2.65mm_HandSolder" V 8730 1500 50  0001 C CNN
F 3 "" H 8800 1500 50  0001 C CNN
	1    8800 1500
	0    1    1    0   
$EndComp
$Comp
L dw01:DW01 U2
U 1 1 60E5C161
P 7450 1650
F 0 "U2" H 7550 2000 60  0000 C CNN
F 1 "DW01" H 7350 2000 60  0000 C CNN
F 2 "DW01A:SOT23-6" H 7400 1350 60  0001 C CNN
F 3 "" H 7400 1350 60  0001 C CNN
	1    7450 1650
	1    0    0    -1  
$EndComp
$Comp
L tp4056:TP4056 U1
U 1 1 60E5C167
P 4700 1600
F 0 "U1" H 4350 2000 60  0000 L CNN
F 1 "TP4056" H 5050 2000 60  0000 R CNN
F 2 "lib:TP4056_SOP-8-PP" H 4700 1600 60  0001 C CNN
F 3 "" H 4700 1600 60  0000 C CNN
	1    4700 1600
	1    0    0    -1  
$EndComp
NoConn ~ 6900 1500
Text GLabel 9400 1200 2    39   Input ~ 0
CH_OUT+
Text GLabel 9400 2250 2    39   Input ~ 0
BAT-
Text GLabel 9400 2600 2    39   Input ~ 0
GND
Text Notes 4750 2100 0    39   ~ 0
Nastaven?? odporu R3\npro nab??jen?? proudem\n130mA a?? 1A
Wire Wire Line
	3200 1500 3500 1500
Wire Wire Line
	3200 1800 3450 1800
Wire Wire Line
	3800 1500 3800 1650
Wire Wire Line
	3800 1650 4200 1650
Wire Wire Line
	3750 1800 3800 1800
Wire Wire Line
	3800 1800 3800 1750
Wire Wire Line
	3800 1750 4200 1750
Wire Wire Line
	5200 1750 5250 1750
Wire Wire Line
	5200 1350 5950 1350
Wire Wire Line
	3900 1450 4200 1450
Wire Wire Line
	3900 1350 3900 1450
Wire Wire Line
	5200 1650 5650 1650
Wire Wire Line
	5650 1650 5650 1750
Wire Wire Line
	5650 1750 5550 1750
Connection ~ 5650 1750
Wire Wire Line
	2900 1500 2800 1500
Wire Wire Line
	2800 1350 2800 1500
Connection ~ 2800 1350
Wire Wire Line
	2800 1800 2900 1800
Connection ~ 2800 1500
Wire Wire Line
	2650 1900 2650 1350
Wire Wire Line
	2650 2200 2650 2400
Wire Wire Line
	8050 1500 8300 1500
Connection ~ 8300 1500
Wire Wire Line
	8300 1650 8300 1500
Wire Wire Line
	8050 1700 8100 1700
Wire Wire Line
	8100 1700 8100 2250
Wire Wire Line
	6900 1700 6750 1700
Wire Wire Line
	6750 1700 6750 1800
Wire Wire Line
	7000 1350 7000 1200
Wire Wire Line
	7000 1200 9100 1200
Wire Wire Line
	8950 1500 9100 1500
Wire Wire Line
	9100 1200 9100 1500
Connection ~ 9100 1500
Connection ~ 9100 1200
Wire Wire Line
	9250 3650 9250 2600
Wire Wire Line
	9250 2600 9400 2600
Connection ~ 9250 1500
$Comp
L Device:C C3
U 1 1 60E5C1D1
P 5950 1950
F 0 "C3" H 5975 2050 50  0000 L CNN
F 1 "10uF" H 5975 1850 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_8x6.5" H 5988 1800 50  0001 C CNN
F 3 "" H 5950 1950 50  0001 C CNN
	1    5950 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 1800 5950 1350
Connection ~ 5950 1350
Wire Wire Line
	5950 2400 5950 2100
$Comp
L fs8205a:FS8205A U3
U 1 1 60E5C1DB
P 7500 2750
F 0 "U3" H 7550 2750 60  0000 C CNN
F 1 "FS8205A" H 7550 2600 60  0000 C CNN
F 2 "FS8205A:SOP65P640X120-8N" H 8450 3000 60  0001 C CNN
F 3 "" H 8450 3000 60  0001 C CNN
	1    7500 2750
	1    0    0    -1  
$EndComp
NoConn ~ 7700 2350
NoConn ~ 7700 3350
Wire Wire Line
	7300 2350 7300 2150
Wire Wire Line
	7300 2150 7600 2150
Wire Wire Line
	7600 2150 7600 2100
Wire Wire Line
	7300 3350 7050 3350
Wire Wire Line
	7050 3350 7050 2100
Wire Wire Line
	7050 2100 7300 2100
Wire Wire Line
	7400 3350 7500 3350
Wire Wire Line
	7400 2350 7500 2350
Wire Wire Line
	7500 2350 7500 2250
Wire Wire Line
	7500 2250 8100 2250
Connection ~ 7500 2350
Wire Wire Line
	6750 2100 6750 3500
Wire Wire Line
	6750 3500 7150 3500
Wire Wire Line
	7500 3500 7500 3350
Connection ~ 7500 3350
Wire Wire Line
	7150 3500 7150 3650
Connection ~ 7150 3500
Connection ~ 5650 2400
Connection ~ 5950 2400
Connection ~ 8100 2250
Wire Wire Line
	8300 1950 8300 2250
Connection ~ 8300 2250
Connection ~ 9250 2250
Wire Wire Line
	3900 1550 4200 1550
Connection ~ 3900 1450
Text Notes 1950 2100 0    60   ~ 0
\n
Text Notes 8550 1800 0    60   ~ 0
ceramic cap\n
Wire Wire Line
	5650 1750 5650 2400
Wire Wire Line
	2800 1350 3900 1350
Wire Wire Line
	2800 1500 2800 1800
Wire Wire Line
	2650 1350 2800 1350
Wire Wire Line
	8300 1500 8650 1500
Wire Wire Line
	9100 1500 9250 1500
Wire Wire Line
	9250 1500 9400 1500
Wire Wire Line
	5950 1350 7000 1350
Wire Wire Line
	7500 2350 7600 2350
Wire Wire Line
	7500 3350 7600 3350
Wire Wire Line
	7150 3650 9250 3650
Wire Wire Line
	7150 3500 7500 3500
Wire Wire Line
	5650 2400 5950 2400
Wire Wire Line
	5950 2400 6250 2400
Wire Wire Line
	8100 2250 8300 2250
Wire Wire Line
	8300 2250 9250 2250
Wire Wire Line
	9250 2250 9400 2250
Wire Wire Line
	3900 1450 3900 1550
Connection ~ 2650 2400
Connection ~ 2650 1350
Wire Wire Line
	9100 1200 9400 1200
$Comp
L RF_Module:ESP32-WROOM-32D U4
U 1 1 60E42660
P 4000 5200
F 0 "U4" H 4000 6781 50  0000 L CNN
F 1 "ESP32-WROOM-32D" H 4000 6690 50  0000 L CNN
F 2 "RF_Module:ESP32-WROOM-32" H 4000 3700 50  0001 L CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32d_esp32-wroom-32u_datasheet_en.pdf" H 3700 5250 50  0001 C CNN
	1    4000 5200
	1    0    0    -1  
$EndComp
Text GLabel 4150 6850 2    39   Input ~ 0
GND
Wire Wire Line
	4000 6850 4150 6850
Wire Wire Line
	4000 6600 4000 6850
Text GLabel 4300 3400 2    39   Input ~ 0
3,3V+
Wire Wire Line
	4000 3400 4300 3400
Wire Wire Line
	4000 3400 4000 3800
$Comp
L Device:R R3
U 1 1 60EA6DD9
P 5400 6900
F 0 "R3" H 5470 6946 50  0000 L CNN
F 1 "10k" H 5470 6855 50  0000 L CNN
F 2 "Resistor_SMD:R_1210_3225Metric_Pad1.30x2.65mm_HandSolder" V 5330 6900 50  0001 C CNN
F 3 "~" H 5400 6900 50  0001 C CNN
	1    5400 6900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 60EA754F
P 5400 7200
F 0 "R4" H 5470 7246 50  0000 L CNN
F 1 "10k" H 5470 7155 50  0000 L CNN
F 2 "Resistor_SMD:R_1210_3225Metric_Pad1.30x2.65mm_HandSolder" V 5330 7200 50  0001 C CNN
F 3 "~" H 5400 7200 50  0001 C CNN
	1    5400 7200
	1    0    0    -1  
$EndComp
Connection ~ 7150 3650
Wire Wire Line
	6250 2400 6250 3650
Wire Wire Line
	6250 3650 7150 3650
$Comp
L Device:R R1
U 1 1 60EA5E5A
P 5400 6050
F 0 "R1" H 5470 6096 50  0000 L CNN
F 1 "10k" H 5470 6005 50  0000 L CNN
F 2 "Resistor_SMD:R_1210_3225Metric_Pad1.30x2.65mm_HandSolder" V 5330 6050 50  0001 C CNN
F 3 "~" H 5400 6050 50  0001 C CNN
	1    5400 6050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 60EA66E0
P 5400 6350
F 0 "R2" H 5470 6396 50  0000 L CNN
F 1 "10k" H 5470 6305 50  0000 L CNN
F 2 "Resistor_SMD:R_1210_3225Metric_Pad1.30x2.65mm_HandSolder" V 5330 6350 50  0001 C CNN
F 3 "~" H 5400 6350 50  0001 C CNN
	1    5400 6350
	1    0    0    -1  
$EndComp
Text GLabel 5550 6500 2    39   Input ~ 0
BAT-
Wire Wire Line
	5400 6500 5550 6500
Text GLabel 5550 5900 2    39   Input ~ 0
BAT+
Wire Wire Line
	5550 5900 5400 5900
Connection ~ 5400 6200
Wire Wire Line
	4600 6200 5400 6200
Wire Wire Line
	2650 2400 2650 2600
Wire Wire Line
	2650 1350 2650 1100
Wire Wire Line
	2650 1100 2600 1100
$Comp
L Connector:Conn_01x02_Female J1
U 1 1 60EE4A4F
P 1750 1900
F 0 "J1" H 1778 1876 50  0000 L CNN
F 1 "Conn_01x02_Female" H 1778 1785 50  0001 R BNN
F 2 "Connector_JST:JST_EH_B2B-EH-A_1x02_P2.50mm_Vertical" H 1750 1900 50  0001 C CNN
F 3 "~" H 1750 1900 50  0001 C CNN
	1    1750 1900
	-1   0    0    1   
$EndComp
Wire Wire Line
	1950 1800 1950 1350
Wire Wire Line
	1950 1350 2650 1350
Wire Wire Line
	1950 1900 1950 2400
Wire Wire Line
	1950 2400 2650 2400
Text GLabel 5600 7350 2    50   Input ~ 0
SOL-
Wire Wire Line
	5400 6750 5600 6750
Wire Wire Line
	5400 7350 5600 7350
Connection ~ 5400 7050
Wire Wire Line
	5400 7050 4600 7050
Wire Wire Line
	4600 7050 4600 6300
$Comp
L Device:CP C1
U 1 1 60F29839
P 3250 4000
F 0 "C1" V 3368 4046 50  0000 L CNN
F 1 "10uF" V 3368 3955 50  0000 R CNN
F 2 "Capacitor_THT:CP_Radial_D10.0mm_P2.50mm" H 3288 3850 50  0001 C CNN
F 3 "~" H 3250 4000 50  0001 C CNN
	1    3250 4000
	0    1    1    0   
$EndComp
Text GLabel 3100 4000 0    39   Input ~ 0
GND
$Comp
L Connector:Conn_01x02_Female J4
U 1 1 60F415C1
P 9550 1750
F 0 "J4" H 9578 1726 50  0000 L TNN
F 1 "Conn_01x02_Female" H 9578 1635 50  0001 R BNN
F 2 "Connector_JST:JST_EH_B2B-EH-A_1x02_P2.50mm_Vertical" H 9550 1750 50  0001 C CNN
F 3 "~" H 9550 1750 50  0001 C CNN
	1    9550 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 1750 9350 1750
Wire Wire Line
	9250 1500 9250 1750
Wire Wire Line
	9350 1850 9250 1850
Wire Wire Line
	9250 1850 9250 2250
$Comp
L SparkFun-Sensors:BMP180 U5
U 1 1 60F8AB15
P 1400 4300
F 0 "U5" H 1400 4765 50  0000 C CNN
F 1 "BMP180" H 1400 4674 50  0000 C CNN
F 2 "SparkFun-Sensors:BMP180" H 1430 4450 20  0001 C CNN
F 3 "" H 1400 4300 50  0001 C CNN
	1    1400 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 4100 2100 4100
Wire Wire Line
	2100 4100 2100 4300
Wire Wire Line
	800  4700 800  4400
Wire Wire Line
	2350 4800 700  4800
Wire Wire Line
	700  4800 700  4200
Wire Wire Line
	700  4200 800  4200
Wire Wire Line
	3400 5200 2900 5200
Connection ~ 2900 5200
Wire Wire Line
	3250 5300 3250 5400
Wire Wire Line
	3250 5400 3000 5400
Wire Wire Line
	3250 5300 3400 5300
Connection ~ 3000 5400
Wire Wire Line
	3000 5400 2950 5400
Connection ~ 4000 3400
Wire Wire Line
	4000 3400 3400 3400
$Comp
L SparkFun-Sensors:HTU21DSMD U6
U 1 1 60FFE29D
P 1350 5450
F 0 "U6" H 1350 5815 50  0000 C CNN
F 1 "HTU21DSMD" H 1350 5724 50  0000 C CNN
F 2 "SparkFun-Sensors:HTU21D" H 1380 5600 20  0001 C CNN
F 3 "" H 1350 5450 50  0001 C CNN
	1    1350 5450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 4900 700  4900
Wire Wire Line
	700  4900 700  5350
Wire Wire Line
	700  5350 800  5350
Wire Wire Line
	600  4850 600  5450
Wire Wire Line
	600  5450 950  5450
$Comp
L Device:R R10
U 1 1 6100D4FD
P 650 6000
F 0 "R10" H 720 6046 50  0000 L CNN
F 1 "10k" H 720 5955 50  0000 L CNN
F 2 "Resistor_SMD:R_1210_3225Metric_Pad1.30x2.65mm_HandSolder" V 580 6000 50  0001 C CNN
F 3 "~" H 650 6000 50  0001 C CNN
	1    650  6000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 6100DD44
P 900 6000
F 0 "R11" H 970 6046 50  0000 L CNN
F 1 "10k" H 970 5955 50  0000 L CNN
F 2 "Resistor_SMD:R_1210_3225Metric_Pad1.30x2.65mm_HandSolder" V 830 6000 50  0001 C CNN
F 3 "~" H 900 6000 50  0001 C CNN
	1    900  6000
	1    0    0    -1  
$EndComp
$Comp
L eec:NTJD4401NT1 QA1
U 1 1 61020547
P 1150 6750
F 0 "QA1" H 1708 6796 50  0000 L CNN
F 1 "NTJD4401NT1" H 1708 6705 50  0000 L CNN
F 2 "eec:On_Semiconductor-NTJD4401NT1-Manufacturer_Recommended" H 1150 7250 50  0001 L CNN
F 3 "http://www.onsemi.com/pub_link/Collateral/NTJD4401N-D.PDF" H 1150 7350 50  0001 L CNN
F 4 "N Channel" H 1150 7450 50  0001 L CNN "Channel Polarity"
F 5 "33" H 1150 7550 50  0001 L CNN "Ciss Typ pF"
F 6 "Manufacturer URL" H 1150 7650 50  0001 L CNN "Component Link 1 Description"
F 7 "http://www.onsemi.com/" H 1150 7750 50  0001 L CNN "Component Link 1 URL"
F 8 "Package Specification" H 1150 7850 50  0001 L CNN "Component Link 3 Description"
F 9 "http://www.onsemi.com/pub_link/Collateral/SMF05C-D.PDF" H 1150 7950 50  0001 L CNN "Component Link 3 URL"
F 10 "Dual" H 1150 8050 50  0001 L CNN "Configuration"
F 11 "13" H 1150 8150 50  0001 L CNN "Coss Typ pF"
F 12 "2.8" H 1150 8250 50  0001 L CNN "Crss Typ pF"
F 13 "Rev. 6" H 1150 8350 50  0001 L CNN "Datasheet Version"
F 14 "0.63" H 1150 8450 50  0001 L CNN "ID Max A"
F 15 "Surface Mount" H 1150 8550 50  0001 L CNN "Mounting Technology"
F 16 "6-Pin Small Outline Transistor, Body 2 x 1.25 mm, Pitch 0.65 mm" H 1150 8650 50  0001 L CNN "Package Description"
F 17 "SC-88-6 / SC-70-6 / SOT-363-6" H 1150 8750 50  0001 L CNN "Package Type"
F 18 "Rev. W" H 1150 8850 50  0001 L CNN "Package Version"
F 19 "Tape and Reel" H 1150 8950 50  0001 L CNN "Packing"
F 20 "20" H 1150 9050 50  0001 L CNN "VBRDSS Min V"
F 21 "12" H 1150 9150 50  0001 L CNN "VGS Max V"
F 22 "1.5" H 1150 9250 50  0001 L CNN "VGSth Max V"
F 23 "Trans" H 1150 9350 50  0001 L CNN "category"
F 24 "3105405" H 1150 9450 50  0001 L CNN "ciiva ids"
F 25 "fdb461a7d3e2c35a" H 1150 9550 50  0001 L CNN "library id"
F 26 "On Semiconductor" H 1150 9650 50  0001 L CNN "manufacturer"
F 27 "SC70-6-419B-02_W" H 1150 9750 50  0001 L CNN "package"
F 28 "1407149999" H 1150 9850 50  0001 L CNN "release date"
F 29 "37DF8590-CC02-4390-BB14-57BE54C99435" H 1150 9950 50  0001 L CNN "vault revision"
F 30 "yes" H 1150 10050 50  0001 L CNN "imported"
	1    1150 6750
	1    0    0    -1  
$EndComp
$Comp
L eec:NTJD4401NT1 QB1
U 2 1 6102FC4E
P 1150 7300
F 0 "QB1" H 1708 7346 50  0000 L CNN
F 1 "NTJD4401NT1" H 1708 7255 50  0000 L CNN
F 2 "eec:On_Semiconductor-NTJD4401NT1-Manufacturer_Recommended" H 1150 7800 50  0001 L CNN
F 3 "http://www.onsemi.com/pub_link/Collateral/NTJD4401N-D.PDF" H 1150 7900 50  0001 L CNN
F 4 "N Channel" H 1150 8000 50  0001 L CNN "Channel Polarity"
F 5 "33" H 1150 8100 50  0001 L CNN "Ciss Typ pF"
F 6 "Manufacturer URL" H 1150 8200 50  0001 L CNN "Component Link 1 Description"
F 7 "http://www.onsemi.com/" H 1150 8300 50  0001 L CNN "Component Link 1 URL"
F 8 "Package Specification" H 1150 8400 50  0001 L CNN "Component Link 3 Description"
F 9 "http://www.onsemi.com/pub_link/Collateral/SMF05C-D.PDF" H 1150 8500 50  0001 L CNN "Component Link 3 URL"
F 10 "Dual" H 1150 8600 50  0001 L CNN "Configuration"
F 11 "13" H 1150 8700 50  0001 L CNN "Coss Typ pF"
F 12 "2.8" H 1150 8800 50  0001 L CNN "Crss Typ pF"
F 13 "Rev. 6" H 1150 8900 50  0001 L CNN "Datasheet Version"
F 14 "0.63" H 1150 9000 50  0001 L CNN "ID Max A"
F 15 "Surface Mount" H 1150 9100 50  0001 L CNN "Mounting Technology"
F 16 "6-Pin Small Outline Transistor, Body 2 x 1.25 mm, Pitch 0.65 mm" H 1150 9200 50  0001 L CNN "Package Description"
F 17 "SC-88-6 / SC-70-6 / SOT-363-6" H 1150 9300 50  0001 L CNN "Package Type"
F 18 "Rev. W" H 1150 9400 50  0001 L CNN "Package Version"
F 19 "Tape and Reel" H 1150 9500 50  0001 L CNN "Packing"
F 20 "20" H 1150 9600 50  0001 L CNN "VBRDSS Min V"
F 21 "12" H 1150 9700 50  0001 L CNN "VGS Max V"
F 22 "1.5" H 1150 9800 50  0001 L CNN "VGSth Max V"
F 23 "Trans" H 1150 9900 50  0001 L CNN "category"
F 24 "3105405" H 1150 10000 50  0001 L CNN "ciiva ids"
F 25 "fdb461a7d3e2c35a" H 1150 10100 50  0001 L CNN "library id"
F 26 "On Semiconductor" H 1150 10200 50  0001 L CNN "manufacturer"
F 27 "SC70-6-419B-02_W" H 1150 10300 50  0001 L CNN "package"
F 28 "1407149999" H 1150 10400 50  0001 L CNN "release date"
F 29 "37DF8590-CC02-4390-BB14-57BE54C99435" H 1150 10500 50  0001 L CNN "vault revision"
F 30 "yes" H 1150 10600 50  0001 L CNN "imported"
	2    1150 7300
	1    0    0    -1  
$EndComp
Text GLabel 850  7050 0    39   Input ~ 0
3,3V+
Wire Wire Line
	1150 6750 850  6750
Wire Wire Line
	850  7300 1150 7300
Wire Wire Line
	850  6750 850  7300
Wire Wire Line
	900  5850 900  5750
Wire Wire Line
	900  5750 800  5750
Wire Wire Line
	650  5750 650  5850
Wire Wire Line
	800  5750 800  5350
Connection ~ 800  5750
Wire Wire Line
	800  5750 650  5750
Connection ~ 800  5350
Wire Wire Line
	800  5350 950  5350
Wire Wire Line
	1750 5350 2000 5350
Wire Wire Line
	2000 5350 2000 6300
Wire Wire Line
	2000 7600 1550 7600
Wire Wire Line
	1550 7600 1550 7500
Wire Wire Line
	650  6150 650  6300
Wire Wire Line
	650  6300 2000 6300
Connection ~ 2000 6300
Wire Wire Line
	2000 6300 2000 7600
Wire Wire Line
	1750 5450 1900 5450
Wire Wire Line
	1900 5450 1900 6200
Wire Wire Line
	900  6150 900  6200
Wire Wire Line
	900  6200 1900 6200
Connection ~ 1900 6200
Connection ~ 800  4850
Wire Wire Line
	800  4850 600  4850
Wire Wire Line
	2200 4850 800  4850
Wire Wire Line
	800  5150 800  5350
$Comp
L Device:C C5
U 1 1 610AFDE6
P 800 5000
F 0 "C5" H 915 5046 50  0000 L CNN
F 1 "100n" H 915 4955 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric_Pad1.33x2.70mm_HandSolder" H 838 4850 50  0001 C CNN
F 3 "~" H 800 5000 50  0001 C CNN
	1    800  5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 6950 1550 6950
Wire Wire Line
	1900 6200 1900 6950
Wire Wire Line
	1550 7100 2300 7100
Wire Wire Line
	2300 7100 2300 6100
Wire Wire Line
	1550 6550 2150 6550
Wire Wire Line
	2150 6550 2150 6000
Wire Wire Line
	2100 4300 2000 4300
$Comp
L Device:R R12
U 1 1 611072D8
P 700 3300
F 0 "R12" H 770 3346 50  0000 L CNN
F 1 "10k" H 770 3255 50  0000 L CNN
F 2 "Resistor_SMD:R_1210_3225Metric_Pad1.30x2.65mm_HandSolder" V 630 3300 50  0001 C CNN
F 3 "~" H 700 3300 50  0001 C CNN
	1    700  3300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R13
U 1 1 61107BAD
P 1000 3300
F 0 "R13" H 1070 3346 50  0000 L CNN
F 1 "10k" H 1070 3255 50  0000 L CNN
F 2 "Resistor_SMD:R_1210_3225Metric_Pad1.30x2.65mm_HandSolder" V 930 3300 50  0001 C CNN
F 3 "~" H 1000 3300 50  0001 C CNN
	1    1000 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	700  3450 700  4200
Connection ~ 700  4200
Wire Wire Line
	1000 3450 1000 4400
Wire Wire Line
	1000 4400 800  4400
Connection ~ 800  4400
Wire Wire Line
	700  3150 700  3050
Wire Wire Line
	700  3050 1000 3050
Wire Wire Line
	1000 3050 1000 3150
Wire Wire Line
	1000 3050 2100 3050
Connection ~ 1000 3050
Connection ~ 2100 4100
$Comp
L Connector:Conn_01x05_Female J10
U 1 1 6115B708
P 8300 4250
F 0 "J10" V 8192 3962 50  0000 R CNN
F 1 "Conn_01x05_Female" H 8328 4185 50  0001 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x05_P2.54mm_Vertical" H 8300 4250 50  0001 C CNN
F 3 "~" H 8300 4250 50  0001 C CNN
	1    8300 4250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8400 5250 9250 5250
Connection ~ 9250 3650
Text GLabel 8500 4450 3    39   Input ~ 0
3,3V+
Text GLabel 8300 4450 3    39   Input ~ 0
CH_OUT+
Wire Wire Line
	9250 3650 9250 5250
Wire Wire Line
	8400 4450 8400 5250
Text Notes 7350 4100 0    50   ~ 0
Konektor pro Step-Down/Step-Up m??ni??
Wire Wire Line
	4200 1350 3900 1350
Connection ~ 3900 1350
Wire Wire Line
	2650 2400 4700 2400
Wire Wire Line
	4700 2000 4700 2400
Connection ~ 4700 2400
Wire Wire Line
	4700 2400 5650 2400
Text Notes 650  1700 0    50   ~ 0
Vstup nap??t?? ze sol??rn??ch panel??
Text Notes 9850 1650 0    50   ~ 0
Vstup pro akumul??tor Li-Pol
Text GLabel 5600 6750 2    50   Input ~ 0
SOL+
Text GLabel 2600 1100 0    50   Input ~ 0
SOL+
Wire Wire Line
	2650 2600 2600 2600
Text GLabel 2600 2600 0    50   Input ~ 0
SOL-
NoConn ~ 8200 4450
NoConn ~ 8100 4450
NoConn ~ 4600 4000
NoConn ~ 4600 4100
NoConn ~ 4600 4200
NoConn ~ 4600 4300
NoConn ~ 4600 4400
NoConn ~ 4600 4500
NoConn ~ 4600 4600
NoConn ~ 4600 4700
NoConn ~ 4600 4800
NoConn ~ 4600 4900
NoConn ~ 4600 5000
NoConn ~ 4600 5100
NoConn ~ 4600 5200
NoConn ~ 4600 5300
NoConn ~ 4600 5400
NoConn ~ 4600 5500
NoConn ~ 4600 5600
NoConn ~ 4600 5700
NoConn ~ 4600 5800
NoConn ~ 4600 5900
NoConn ~ 4600 6000
NoConn ~ 4600 6100
NoConn ~ 3400 4200
NoConn ~ 3400 4300
NoConn ~ 3400 5400
NoConn ~ 3400 5500
NoConn ~ 3400 5600
NoConn ~ 3400 5700
$Comp
L Device:R R15
U 1 1 610DB86A
P 3400 3700
F 0 "R15" H 3470 3746 50  0000 L CNN
F 1 "10k" H 3470 3655 50  0000 L CNN
F 2 "" V 3330 3700 50  0001 C CNN
F 3 "~" H 3400 3700 50  0001 C CNN
	1    3400 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 3550 3400 3400
Connection ~ 3400 3400
Wire Wire Line
	3400 3400 2800 3400
Wire Wire Line
	3400 3850 3400 4000
Connection ~ 3400 4000
$Comp
L Connector:Conn_01x04_Female J11
U 1 1 610F2B97
P 2550 4700
F 0 "J11" H 2442 4367 50  0000 C CNN
F 1 "Conn_01x04_Female" H 2442 4366 50  0001 C CNN
F 2 "" H 2550 4700 50  0001 C CNN
F 3 "~" H 2550 4700 50  0001 C CNN
	1    2550 4700
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x04_Male J12
U 1 1 611515EA
P 2550 4700
F 0 "J12" H 2522 4628 50  0000 R CNN
F 1 "Conn_01x04_Male" H 2658 4890 50  0001 C CNN
F 2 "" H 2550 4700 50  0001 C CNN
F 3 "~" H 2550 4700 50  0001 C CNN
	1    2550 4700
	-1   0    0    1   
$EndComp
Wire Wire Line
	2800 3400 2800 4500
Wire Wire Line
	800  4700 2350 4700
Wire Wire Line
	2000 4500 2000 4600
Wire Wire Line
	2000 4600 2350 4600
Wire Wire Line
	2100 3050 2100 4100
Wire Wire Line
	2100 4300 2100 4500
Wire Wire Line
	2100 4500 2350 4500
Connection ~ 2100 4300
Wire Wire Line
	3150 6850 4000 6850
Connection ~ 4000 6850
Wire Wire Line
	3150 4600 2750 4600
Wire Wire Line
	2800 4500 2750 4500
Connection ~ 2800 4500
Wire Wire Line
	2750 4800 2900 4800
Wire Wire Line
	2900 4800 2900 5200
Wire Wire Line
	2750 4700 2950 4700
Wire Wire Line
	2950 4700 2950 5400
$Comp
L Connector:Conn_01x04_Female J13
U 1 1 612CF0AB
P 2600 6000
F 0 "J13" H 2492 5667 50  0000 C CNN
F 1 "Conn_01x04_Female" H 2492 5666 50  0001 C CNN
F 2 "" H 2600 6000 50  0001 C CNN
F 3 "~" H 2600 6000 50  0001 C CNN
	1    2600 6000
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x04_Male J14
U 1 1 612CF0B1
P 2600 6000
F 0 "J14" H 2572 5928 50  0000 R CNN
F 1 "Conn_01x04_Male" H 2708 6190 50  0001 C CNN
F 2 "" H 2600 6000 50  0001 C CNN
F 3 "~" H 2600 6000 50  0001 C CNN
	1    2600 6000
	-1   0    0    1   
$EndComp
Wire Wire Line
	3150 4600 3150 5900
Wire Wire Line
	2200 5900 2400 5900
Wire Wire Line
	2200 4850 2200 5900
Wire Wire Line
	2100 5800 2400 5800
Wire Wire Line
	2100 4900 2100 5800
Wire Wire Line
	2800 4500 2800 5800
Wire Wire Line
	2800 5900 3150 5900
Connection ~ 3150 5900
Wire Wire Line
	3150 5900 3150 6850
Wire Wire Line
	2150 6000 2400 6000
Wire Wire Line
	3000 6000 2800 6000
Wire Wire Line
	3000 5400 3000 6000
Wire Wire Line
	2300 6100 2400 6100
Wire Wire Line
	2900 6100 2800 6100
Wire Wire Line
	2900 5200 2900 6100
NoConn ~ 950  5550
$EndSCHEMATC
