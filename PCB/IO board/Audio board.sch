EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:BOOST
LIBS:BUCK
LIBS:CODEC
LIBS:CONNECTOR
LIBS:EMI_GASKET
LIBS:LDO
LIBS:LED
LIBS:POWER_SW
LIBS:SDRAM
LIBS:STM32
LIBS:TVS_ARRAY
LIBS:LOGIC
LIBS:BATTERY
LIBS:DISCRETE
LIBS:ELECTROMECH
LIBS:WIFI
LIBS:Audio board-cache
EELAYER 25 0
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
S 875  875  1375 1375
U 5AD71B4E
F0 "Inputs" 60
F1 "Inputs.sch" 60
$EndSheet
$Sheet
S 2450 875  1375 1375
U 5ADC64DA
F0 "Outputs" 60
F1 "Outputs.sch" 60
$EndSheet
$Sheet
S 4025 875  1375 1375
U 5ADD1B2B
F0 "Audio Supplies" 60
F1 "Audio Supplies.sch" 60
$EndSheet
$Sheet
S 5600 875  1375 1375
U 5ADF4057
F0 "Battery" 60
F1 "Battery.sch" 60
$EndSheet
$Sheet
S 7175 875  1375 1350
U 5AE0438D
F0 "Supply" 60
F1 "Supply.sch" 60
$EndSheet
$Comp
L Cap'n_MaGee X101
U 1 1 5AE2929F
P 2100 3800
F 0 "X101" H 1800 4750 60  0000 C CNN
F 1 "Cap'n_MaGee" H 2150 2850 60  0000 C CNN
F 2 "PCI-e:Mini_PCI-e_Female" H 1350 3300 60  0001 C CNN
F 3 "" H 1350 3300 60  0001 C CNN
	1    2100 3800
	1    0    0    -1  
$EndComp
$Comp
L Cap'n_MaGee X101
U 2 1 5AE292F4
P 2075 6075
F 0 "X101" H 1775 7025 60  0000 C CNN
F 1 "Cap'n_MaGee" H 2125 5125 60  0000 C CNN
F 2 "PCI-e:Mini_PCI-e_Female" H 1325 5575 60  0001 C CNN
F 3 "" H 1325 5575 60  0001 C CNN
	2    2075 6075
	1    0    0    -1  
$EndComp
Text GLabel 1325 5525 0    60   Output ~ 0
Pad_1
Text GLabel 2825 5525 2    60   Output ~ 0
Impedance_1
Text GLabel 2825 5425 2    60   Output ~ 0
Impedance_2
Text GLabel 1325 5425 0    60   Output ~ 0
Pad_2
Text GLabel 1350 3700 0    60   Output ~ 0
ESP_RX
Text GLabel 2850 3700 2    60   Output ~ 0
ESP_TX
Text GLabel 1350 3500 0    60   BiDi ~ 0
ESP_EN
Text GLabel 2850 3500 2    60   Output ~ 0
+3V3_EN
$Sheet
S 8750 875  1375 1375
U 5AE2D1FA
F0 "IO" 60
F1 "IO.sch" 60
$EndSheet
$Comp
L Screw_Terminal_01x01 J103
U 1 1 5AE3EB9D
P 4475 6050
F 0 "J103" V 4575 6050 50  0000 C CNN
F 1 "Standoff_MaGee" V 4375 5725 50  0000 C CNN
F 2 "ELECTROMECH:Keystone_1560A" H 4475 6050 50  0001 C CNN
F 3 "" H 4475 6050 50  0001 C CNN
	1    4475 6050
	0    -1   -1   0   
$EndComp
NoConn ~ 4475 6250
Text GLabel 1325 5325 0    60   Input ~ 0
SW_3
Text GLabel 2825 5325 2    60   Input ~ 0
ENCODER_3_SW
Text GLabel 2825 5225 2    60   Input ~ 0
ENCODER_3_B
Text GLabel 1325 5225 0    60   Input ~ 0
ENCODER_3_A
Text GLabel 2850 4500 2    60   Input ~ 0
ENCODER_2_SW
Text GLabel 2850 4300 2    60   Input ~ 0
ENCODER_2_B
Text GLabel 1350 4500 0    60   Input ~ 0
SW_2
Text GLabel 1350 4300 0    60   Input ~ 0
ENCODER_2_A
Text GLabel 2850 4100 2    60   Input ~ 0
ENCODER_1_SW
Text GLabel 2850 3900 2    60   Input ~ 0
ENCODER_1_B
Text GLabel 1350 4100 0    60   Input ~ 0
SW_1
Text GLabel 1350 3900 0    60   Input ~ 0
ENCODER_1_A
$Comp
L GND #PWR01
U 1 1 5AE40091
P 2850 3100
F 0 "#PWR01" H 2850 2850 50  0001 C CNN
F 1 "GND" V 2850 2900 50  0000 C CNN
F 2 "" H 2850 3100 50  0001 C CNN
F 3 "" H 2850 3100 50  0001 C CNN
	1    2850 3100
	0    -1   -1   0   
$EndComp
Text GLabel 2850 3300 2    60   Input ~ 0
+5V_BAT
Text GLabel 1350 3300 0    60   Input ~ 0
+5V_AUX
Text GLabel 1350 3100 0    60   Output ~ 0
+5V_USB
Text GLabel 1325 5625 0    60   Output ~ 0
DAC1+
Text GLabel 2825 5625 2    60   Output ~ 0
DAC1-
Text GLabel 1325 5725 0    60   Output ~ 0
DAC2+
Text GLabel 1325 5825 0    60   Output ~ 0
DAC3+
Text GLabel 1325 6425 0    60   Input ~ 0
ADC1+
Text GLabel 1325 6525 0    60   Input ~ 0
ADC2+
Text GLabel 1325 6625 0    60   Input ~ 0
ADC3+
Text GLabel 1325 6725 0    60   Input ~ 0
ADC4+
Text GLabel 2825 6425 2    60   Input ~ 0
ADC1-
Text GLabel 2825 6525 2    60   Input ~ 0
ADC2-
$Comp
L Screw_Terminal_01x01 J101
U 1 1 5AE41CE9
P 4150 5675
F 0 "J101" V 4250 5675 50  0000 C CNN
F 1 "Screen_Standoff" H 4150 5575 50  0000 C CNN
F 2 "ELECTROMECH:HARWIN_R30-1001002" H 4150 5675 50  0001 C CNN
F 3 "" H 4150 5675 50  0001 C CNN
	1    4150 5675
	0    -1   -1   0   
$EndComp
$Comp
L Screw_Terminal_01x01 J102
U 1 1 5AE41DA0
P 4725 5675
F 0 "J102" V 4825 5675 50  0000 C CNN
F 1 "Screen_Standoff" H 4725 5575 50  0000 C CNN
F 2 "ELECTROMECH:HARWIN_R30-1001002" H 4725 5675 50  0001 C CNN
F 3 "" H 4725 5675 50  0001 C CNN
	1    4725 5675
	0    -1   -1   0   
$EndComp
$Comp
L Screw_Terminal_01x01 J104
U 1 1 5AE41DCE
P 4150 6550
F 0 "J104" V 4250 6550 50  0000 C CNN
F 1 "Screen_Standoff" H 4150 6450 50  0000 C CNN
F 2 "ELECTROMECH:HARWIN_R30-1001002" H 4150 6550 50  0001 C CNN
F 3 "" H 4150 6550 50  0001 C CNN
	1    4150 6550
	0    -1   -1   0   
$EndComp
$Comp
L Screw_Terminal_01x01 J105
U 1 1 5AE41E1C
P 4725 6550
F 0 "J105" V 4825 6550 50  0000 C CNN
F 1 "Screen_Standoff" H 4725 6450 50  0000 C CNN
F 2 "ELECTROMECH:HARWIN_R30-1001002" H 4725 6550 50  0001 C CNN
F 3 "" H 4725 6550 50  0001 C CNN
	1    4725 6550
	0    -1   -1   0   
$EndComp
NoConn ~ 4150 5875
NoConn ~ 4725 5875
NoConn ~ 4725 6750
NoConn ~ 4150 6750
Wire Wire Line
	2725 6525 2825 6525
Wire Wire Line
	2725 6425 2825 6425
Wire Wire Line
	1325 6725 1425 6725
Wire Wire Line
	1325 6625 1425 6625
Wire Wire Line
	1325 6525 1425 6525
Wire Wire Line
	1325 6425 1425 6425
Wire Wire Line
	1325 5825 1425 5825
Wire Wire Line
	1325 5725 1425 5725
Wire Wire Line
	2725 5625 2825 5625
Wire Wire Line
	1325 5625 1425 5625
Wire Wire Line
	1350 3300 1450 3300
Wire Wire Line
	1350 3100 1450 3100
Wire Wire Line
	2750 3300 2850 3300
Wire Wire Line
	2750 3100 2850 3100
Wire Wire Line
	2750 3900 2850 3900
Wire Wire Line
	2750 4100 2850 4100
Wire Wire Line
	1350 3900 1450 3900
Wire Wire Line
	1350 4100 1450 4100
Wire Wire Line
	2750 4500 2850 4500
Wire Wire Line
	2750 4300 2850 4300
Wire Wire Line
	1350 4500 1450 4500
Wire Wire Line
	1350 4300 1450 4300
Wire Wire Line
	2725 5225 2825 5225
Wire Wire Line
	1325 5225 1425 5225
Wire Wire Line
	2825 5325 2725 5325
Wire Wire Line
	1325 5325 1425 5325
Wire Wire Line
	2750 3500 2850 3500
Wire Wire Line
	1350 3500 1450 3500
Wire Wire Line
	2750 3700 2850 3700
Wire Wire Line
	1350 3700 1450 3700
Wire Wire Line
	1325 5525 1425 5525
Wire Wire Line
	2725 5425 2825 5425
Wire Wire Line
	2725 5525 2825 5525
Wire Wire Line
	1325 5425 1425 5425
NoConn ~ 1425 5925
NoConn ~ 1425 6025
NoConn ~ 1425 6125
NoConn ~ 1425 6225
NoConn ~ 1425 6325
NoConn ~ 2725 5725
NoConn ~ 2725 5825
NoConn ~ 2725 5925
NoConn ~ 2725 6025
NoConn ~ 2725 6125
NoConn ~ 2725 6225
NoConn ~ 2725 6325
NoConn ~ 2725 6625
NoConn ~ 2725 6725
NoConn ~ 2725 6825
NoConn ~ 2725 6925
NoConn ~ 1425 6825
NoConn ~ 1425 6925
$Sheet
S 8750 2450 1375 1375
U 5AE5F321
F0 "ESP" 60
F1 "ESP.sch" 60
$EndSheet
NoConn ~ 1450 3250
$EndSCHEMATC
