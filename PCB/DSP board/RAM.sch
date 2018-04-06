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
LIBS:STM32
LIBS:SDRAM
LIBS:CODEC
LIBS:TVS_ARRAY
LIBS:BUCK
LIBS:LDO
LIBS:BOOST
LIBS:CONNECTOR
LIBS:POWER_SW
LIBS:EMI_GASKET
LIBS:LED
LIBS:Main board-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 9
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
L AS4C32M8SA U401
U 1 1 5AB086F2
P 3650 2175
F 0 "U401" H 3550 3725 60  0000 C CNN
F 1 "AS4C32M8SA" H 3600 575 60  0000 C CNN
F 2 "TSSOP:TSSOP-54_P-0.8mm" H 3550 3725 60  0001 C CNN
F 3 "" H 3550 3725 60  0001 C CNN
	1    3650 2175
	1    0    0    -1  
$EndComp
$Comp
L AS4C32M8SA U401
U 2 1 5AB0884F
P 3650 5975
F 0 "U401" H 3550 7525 60  0000 C CNN
F 1 "AS4C32M8SA" H 3600 4375 60  0000 C CNN
F 2 "TSSOP:TSSOP-54_P-0.8mm" H 3550 7525 60  0001 C CNN
F 3 "" H 3550 7525 60  0001 C CNN
	2    3650 5975
	1    0    0    -1  
$EndComp
$Comp
L AS4C32M8SA U401
U 3 1 5AB088F8
P 9050 3850
F 0 "U401" H 8950 5400 60  0000 C CNN
F 1 "AS4C32M8SA" H 9000 2250 60  0000 C CNN
F 2 "TSSOP:TSSOP-54_P-0.8mm" H 8950 5400 60  0001 C CNN
F 3 "" H 8950 5400 60  0001 C CNN
	3    9050 3850
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR033
U 1 1 5AB09085
P 4425 675
F 0 "#PWR033" H 4425 525 50  0001 C CNN
F 1 "+3V3" V 4500 850 50  0000 C CNN
F 2 "" H 4425 675 50  0001 C CNN
F 3 "" H 4425 675 50  0001 C CNN
	1    4425 675 
	0    -1   -1   0   
$EndComp
$Comp
L Ferrite_Bead_Small L401
U 1 1 5AB09469
P 5125 675
F 0 "L401" V 5225 725 50  0000 L CNN
F 1 "220R" V 5000 500 50  0000 L CNN
F 2 "Inductors_SMD:L_0603" V 5055 675 50  0001 C CNN
F 3 "" H 5125 675 50  0001 C CNN
	1    5125 675 
	0    -1   -1   0   
$EndComp
$Comp
L C_Small C401
U 1 1 5AB098BA
P 4550 825
F 0 "C401" H 4560 895 50  0000 L CNN
F 1 "1uF" H 4560 745 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4550 825 50  0001 C CNN
F 3 "" H 4550 825 50  0001 C CNN
	1    4550 825 
	1    0    0    -1  
$EndComp
$Comp
L C_Small C402
U 1 1 5AB0990E
P 4800 825
F 0 "C402" H 4810 895 50  0000 L CNN
F 1 "10nF" H 4810 745 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 4800 825 50  0001 C CNN
F 3 "" H 4800 825 50  0001 C CNN
	1    4800 825 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR034
U 1 1 5AB09981
P 4550 975
F 0 "#PWR034" H 4550 725 50  0001 C CNN
F 1 "GND" H 4550 825 50  0000 C CNN
F 2 "" H 4550 975 50  0001 C CNN
F 3 "" H 4550 975 50  0001 C CNN
	1    4550 975 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR035
U 1 1 5AB099A1
P 4800 975
F 0 "#PWR035" H 4800 725 50  0001 C CNN
F 1 "GND" H 4800 825 50  0000 C CNN
F 2 "" H 4800 975 50  0001 C CNN
F 3 "" H 4800 975 50  0001 C CNN
	1    4800 975 
	1    0    0    -1  
$EndComp
$Comp
L C_Small C403
U 1 1 5AB09CA1
P 5475 825
F 0 "C403" H 5485 895 50  0000 L CNN
F 1 "4.7uF" H 5485 745 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805" H 5475 825 50  0001 C CNN
F 3 "" H 5475 825 50  0001 C CNN
	1    5475 825 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR036
U 1 1 5AB09D89
P 5475 975
F 0 "#PWR036" H 5475 725 50  0001 C CNN
F 1 "GND" H 5475 825 50  0000 C CNN
F 2 "" H 5475 975 50  0001 C CNN
F 3 "" H 5475 975 50  0001 C CNN
	1    5475 975 
	1    0    0    -1  
$EndComp
Wire Wire Line
	4425 675  5025 675 
Wire Wire Line
	4550 675  4550 725 
Wire Wire Line
	4800 675  4800 725 
Connection ~ 4550 675 
Connection ~ 4800 675 
Wire Wire Line
	5225 675  5725 675 
Wire Wire Line
	5475 675  5475 725 
Wire Wire Line
	4550 925  4550 975 
Wire Wire Line
	4800 925  4800 975 
Wire Wire Line
	5475 925  5475 975 
Text GLabel 5725 675  2    60   Output ~ 0
+3V3_RAM
Connection ~ 5475 675 
Text GLabel 7000 675  0    60   Input ~ 0
+3V3_RAM
$Comp
L C_Small C404
U 1 1 5AB0D041
P 7125 850
F 0 "C404" H 7135 920 50  0000 L CNN
F 1 "1uF" H 7135 770 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 7125 850 50  0001 C CNN
F 3 "" H 7125 850 50  0001 C CNN
	1    7125 850 
	1    0    0    -1  
$EndComp
$Comp
L C_Small C405
U 1 1 5AB0D048
P 7400 850
F 0 "C405" H 7410 920 50  0000 L CNN
F 1 "10nF" H 7410 770 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 7400 850 50  0001 C CNN
F 3 "" H 7400 850 50  0001 C CNN
	1    7400 850 
	1    0    0    -1  
$EndComp
$Comp
L C_Small C406
U 1 1 5AB0D04F
P 7725 850
F 0 "C406" H 7735 920 50  0000 L CNN
F 1 "1uF" H 7735 770 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 7725 850 50  0001 C CNN
F 3 "" H 7725 850 50  0001 C CNN
	1    7725 850 
	1    0    0    -1  
$EndComp
$Comp
L C_Small C407
U 1 1 5AB0D056
P 8000 850
F 0 "C407" H 8010 920 50  0000 L CNN
F 1 "10nF" H 8010 770 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 8000 850 50  0001 C CNN
F 3 "" H 8000 850 50  0001 C CNN
	1    8000 850 
	1    0    0    -1  
$EndComp
$Comp
L C_Small C408
U 1 1 5AB0D05D
P 8300 850
F 0 "C408" H 8310 920 50  0000 L CNN
F 1 "1uF" H 8310 770 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 8300 850 50  0001 C CNN
F 3 "" H 8300 850 50  0001 C CNN
	1    8300 850 
	1    0    0    -1  
$EndComp
$Comp
L C_Small C409
U 1 1 5AB0D064
P 8575 850
F 0 "C409" H 8585 920 50  0000 L CNN
F 1 "10nF" H 8585 770 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 8575 850 50  0001 C CNN
F 3 "" H 8575 850 50  0001 C CNN
	1    8575 850 
	1    0    0    -1  
$EndComp
$Comp
L C_Small C410
U 1 1 5AB0D06B
P 8900 850
F 0 "C410" H 8910 920 50  0000 L CNN
F 1 "1uF" H 8910 770 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 8900 850 50  0001 C CNN
F 3 "" H 8900 850 50  0001 C CNN
	1    8900 850 
	1    0    0    -1  
$EndComp
$Comp
L C_Small C411
U 1 1 5AB0D072
P 9200 850
F 0 "C411" H 9210 920 50  0000 L CNN
F 1 "10nF" H 9210 770 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 9200 850 50  0001 C CNN
F 3 "" H 9200 850 50  0001 C CNN
	1    9200 850 
	1    0    0    -1  
$EndComp
$Comp
L C_Small C412
U 1 1 5AB0D079
P 9500 850
F 0 "C412" H 9510 920 50  0000 L CNN
F 1 "1uF" H 9510 770 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 9500 850 50  0001 C CNN
F 3 "" H 9500 850 50  0001 C CNN
	1    9500 850 
	1    0    0    -1  
$EndComp
$Comp
L C_Small C413
U 1 1 5AB0D080
P 9775 850
F 0 "C413" H 9785 920 50  0000 L CNN
F 1 "10nF" H 9785 770 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 9775 850 50  0001 C CNN
F 3 "" H 9775 850 50  0001 C CNN
	1    9775 850 
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR037
U 1 1 5AB0D087
P 9050 1100
F 0 "#PWR037" H 9050 850 50  0001 C CNN
F 1 "GND" H 9050 950 50  0000 C CNN
F 2 "" H 9050 1100 50  0001 C CNN
F 3 "" H 9050 1100 50  0001 C CNN
	1    9050 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9500 750  9500 675 
Connection ~ 9500 675 
Wire Wire Line
	9200 750  9200 675 
Connection ~ 9200 675 
Wire Wire Line
	8900 750  8900 675 
Connection ~ 8900 675 
Wire Wire Line
	8575 750  8575 675 
Connection ~ 8575 675 
Wire Wire Line
	8300 750  8300 675 
Connection ~ 8300 675 
Wire Wire Line
	8000 750  8000 675 
Connection ~ 8000 675 
Wire Wire Line
	7725 750  7725 675 
Connection ~ 7725 675 
Wire Wire Line
	7400 750  7400 675 
Connection ~ 7400 675 
Wire Wire Line
	7125 750  7125 675 
Connection ~ 7125 675 
Wire Wire Line
	7125 950  7125 1025
Wire Wire Line
	9500 950  9500 1025
Connection ~ 9500 1025
Wire Wire Line
	9200 950  9200 1025
Connection ~ 9200 1025
Wire Wire Line
	8900 950  8900 1025
Connection ~ 8900 1025
Wire Wire Line
	8575 950  8575 1025
Connection ~ 8575 1025
Wire Wire Line
	8300 950  8300 1025
Connection ~ 8300 1025
Wire Wire Line
	8000 950  8000 1025
Connection ~ 8000 1025
Wire Wire Line
	7725 950  7725 1025
Connection ~ 7725 1025
Wire Wire Line
	7400 950  7400 1025
Connection ~ 7400 1025
$Comp
L C_Small C414
U 1 1 5AB0E0F3
P 10075 850
F 0 "C414" H 10085 920 50  0000 L CNN
F 1 "1uF" H 10085 770 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 10075 850 50  0001 C CNN
F 3 "" H 10075 850 50  0001 C CNN
	1    10075 850 
	1    0    0    -1  
$EndComp
$Comp
L C_Small C415
U 1 1 5AB0E0F9
P 10350 850
F 0 "C415" H 10360 920 50  0000 L CNN
F 1 "10nF" H 10360 770 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 10350 850 50  0001 C CNN
F 3 "" H 10350 850 50  0001 C CNN
	1    10350 850 
	1    0    0    -1  
$EndComp
$Comp
L C_Small C416
U 1 1 5AB0E0FF
P 10650 850
F 0 "C416" H 10660 920 50  0000 L CNN
F 1 "1uF" H 10660 770 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 10650 850 50  0001 C CNN
F 3 "" H 10650 850 50  0001 C CNN
	1    10650 850 
	1    0    0    -1  
$EndComp
$Comp
L C_Small C417
U 1 1 5AB0E105
P 10925 850
F 0 "C417" H 10935 920 50  0000 L CNN
F 1 "10nF" H 10935 770 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 10925 850 50  0001 C CNN
F 3 "" H 10925 850 50  0001 C CNN
	1    10925 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	10925 675  10925 750 
Wire Wire Line
	10925 1025 10925 950 
Wire Wire Line
	9775 750  9775 675 
Connection ~ 9775 675 
Wire Wire Line
	10075 750  10075 675 
Connection ~ 10075 675 
Wire Wire Line
	10350 750  10350 675 
Connection ~ 10350 675 
Wire Wire Line
	10650 750  10650 675 
Connection ~ 10650 675 
Wire Wire Line
	10650 950  10650 1025
Connection ~ 10650 1025
Wire Wire Line
	10350 950  10350 1025
Connection ~ 10350 1025
Wire Wire Line
	10075 950  10075 1025
Connection ~ 10075 1025
Wire Wire Line
	9775 950  9775 1025
Connection ~ 9775 1025
Wire Wire Line
	7125 1025 10925 1025
Wire Wire Line
	10925 675  7000 675 
Wire Wire Line
	9050 1100 9050 1025
Connection ~ 9050 1025
Text GLabel 1325 775  0    60   BiDi ~ 0
FMC_D0
Text GLabel 1325 875  0    60   BiDi ~ 0
FMC_D1
Text GLabel 1325 975  0    60   BiDi ~ 0
FMC_D2
Text GLabel 1325 1075 0    60   BiDi ~ 0
FMC_D3
Text GLabel 1325 1600 0    60   Input ~ 0
FMC_SDNWE
Text GLabel 1325 1700 0    60   Input ~ 0
FMC_SDNCAS
Text GLabel 1325 1800 0    60   Input ~ 0
FMC_SDNRAS
Text GLabel 1325 1900 0    60   Input ~ 0
FMC_SDNE0
Text GLabel 1325 2425 0    60   Input ~ 0
FMC_BA0
Text GLabel 1325 2525 0    60   Input ~ 0
FMC_BA1
Text GLabel 1325 2625 0    60   Input ~ 0
FMC_A10
Text GLabel 1325 2725 0    60   Input ~ 0
FMC_A0
Text GLabel 1325 3300 0    60   Input ~ 0
FMC_A1
Text GLabel 1325 3400 0    60   Input ~ 0
FMC_A2
Text GLabel 1325 3500 0    60   Input ~ 0
FMC_A3
Text GLabel 1325 4650 0    60   Input ~ 0
FMC_A4
Text GLabel 1325 4750 0    60   Input ~ 0
FMC_A5
Text GLabel 1325 4850 0    60   Input ~ 0
FMC_A6
Text GLabel 1275 7375 0    60   BiDi ~ 0
FMC_D7
Text GLabel 1275 7275 0    60   BiDi ~ 0
FMC_D6
Text GLabel 1275 7175 0    60   BiDi ~ 0
FMC_D5
Text GLabel 1275 7075 0    60   BiDi ~ 0
FMC_D4
Text GLabel 1325 6500 0    60   Input ~ 0
FMC_NBL0
Text GLabel 1325 6400 0    60   Input ~ 0
FMC_SDCLK
Text GLabel 1325 6300 0    60   Input ~ 0
FMC_SDCKE0
Text GLabel 1325 6200 0    60   Input ~ 0
FMC_A12
Text GLabel 1325 5675 0    60   Input ~ 0
FMC_A11
Text GLabel 1325 5575 0    60   Input ~ 0
FMC_A9
Text GLabel 1325 5475 0    60   Input ~ 0
FMC_A8
Text GLabel 1325 5375 0    60   Input ~ 0
FMC_A7
Wire Wire Line
	1275 7375 1925 7375
Wire Wire Line
	1275 7275 1925 7275
Wire Wire Line
	1275 7175 1925 7175
Wire Wire Line
	1275 7075 1925 7075
Wire Wire Line
	1325 6500 1925 6500
Wire Wire Line
	1325 6400 1925 6400
Wire Wire Line
	1325 6300 1925 6300
Wire Wire Line
	1325 6200 1925 6200
Wire Wire Line
	1325 5675 1925 5675
Wire Wire Line
	1325 5575 1925 5575
Wire Wire Line
	1325 5475 1925 5475
Wire Wire Line
	1325 5375 1925 5375
Wire Wire Line
	1325 4850 1925 4850
Wire Wire Line
	1325 4750 1925 4750
Wire Wire Line
	1325 4650 1925 4650
Wire Wire Line
	1325 3500 1925 3500
Wire Wire Line
	1325 3400 1925 3400
Wire Wire Line
	1325 3300 1925 3300
Wire Wire Line
	1325 2725 1925 2725
Wire Wire Line
	1325 2625 1925 2625
Wire Wire Line
	1325 2525 1925 2525
Wire Wire Line
	1325 2425 1925 2425
Wire Wire Line
	1325 1900 1925 1900
Wire Wire Line
	1325 1800 1925 1800
Wire Wire Line
	1325 1700 1925 1700
Wire Wire Line
	1325 1600 1925 1600
Wire Wire Line
	1325 1075 1925 1075
Wire Wire Line
	1325 975  1925 975 
Wire Wire Line
	1325 875  1925 875 
Wire Wire Line
	1325 775  1925 775 
Text GLabel 1925 775  2    60   BiDi ~ 0
RAM_DQ0
Text GLabel 1925 875  2    60   BiDi ~ 0
RAM_DQ1
Text GLabel 1925 975  2    60   BiDi ~ 0
RAM_DQ2
Text GLabel 1925 1075 2    60   BiDi ~ 0
RAM_DQ3
Text GLabel 1925 1600 2    60   Output ~ 0
RAM_WE#
Text GLabel 1925 1700 2    60   Output ~ 0
RAM_CAS#
Text GLabel 1925 1800 2    60   Output ~ 0
RAM_RAS#
Text GLabel 1925 1900 2    60   Output ~ 0
RAM_CS#
Text GLabel 1925 2425 2    60   Output ~ 0
RAM_BA0
Text GLabel 1925 2525 2    60   Output ~ 0
RAM_BA1
Text GLabel 1925 2625 2    60   Output ~ 0
RAM_A10
Text GLabel 1925 2725 2    60   Output ~ 0
RAM_A0
Text GLabel 1925 3300 2    60   Output ~ 0
RAM_A1
Text GLabel 1925 3400 2    60   Output ~ 0
RAM_A2
Text GLabel 1925 3500 2    60   Output ~ 0
RAM_A3
Text GLabel 1925 4650 2    60   Output ~ 0
RAM_A4
Text GLabel 1925 4750 2    60   Output ~ 0
RAM_A5
Text GLabel 1925 4850 2    60   Output ~ 0
RAM_A6
Text GLabel 1925 5375 2    60   Output ~ 0
RAM_A7
Text GLabel 1925 5475 2    60   Output ~ 0
RAM_A8
Text GLabel 1925 5575 2    60   Output ~ 0
RAM_A9
Text GLabel 1925 5675 2    60   Output ~ 0
RAM_A11
Text GLabel 1925 6200 2    60   Output ~ 0
RAM_A12
Text GLabel 1925 6300 2    60   Output ~ 0
RAM_CKE
Text GLabel 1925 6400 2    60   Output ~ 0
RAM_CLK
Text GLabel 1925 6500 2    60   Output ~ 0
RAM_DQM
Text GLabel 1925 7075 2    60   BiDi ~ 0
RAM_DQ4
Text GLabel 1925 7175 2    60   BiDi ~ 0
RAM_DQ5
Text GLabel 1925 7275 2    60   BiDi ~ 0
RAM_DQ6
Text GLabel 1925 7375 2    60   BiDi ~ 0
RAM_DQ7
Text GLabel 3150 4575 0    60   BiDi ~ 0
RAM_DQ0
Text GLabel 3150 4775 0    60   BiDi ~ 0
RAM_DQ1
Text GLabel 3150 4975 0    60   BiDi ~ 0
RAM_DQ2
Text GLabel 3150 5175 0    60   BiDi ~ 0
RAM_DQ3
Text GLabel 3150 5375 0    60   BiDi ~ 0
RAM_DQ4
Text GLabel 3150 5575 0    60   BiDi ~ 0
RAM_DQ5
Text GLabel 3150 5775 0    60   BiDi ~ 0
RAM_DQ6
Text GLabel 3150 5975 0    60   BiDi ~ 0
RAM_DQ7
Text GLabel 3150 6175 0    60   Input ~ 0
RAM_WE#
Text GLabel 3150 6375 0    60   Input ~ 0
RAM_CAS#
Text GLabel 3150 6575 0    60   Input ~ 0
RAM_RAS#
Text GLabel 3150 6775 0    60   Input ~ 0
RAM_CS#
Text GLabel 3150 6975 0    60   Input ~ 0
RAM_CKE
Text GLabel 3150 7175 0    60   Input ~ 0
RAM_CLK
Text GLabel 3150 7375 0    60   Input ~ 0
RAM_DQM
Text GLabel 3150 2175 0    60   Input ~ 0
RAM_A7
Text GLabel 3150 2375 0    60   Input ~ 0
RAM_A8
Text GLabel 3150 2575 0    60   Input ~ 0
RAM_A9
Text GLabel 3150 2975 0    60   Input ~ 0
RAM_A11
Text GLabel 3150 975  0    60   Input ~ 0
RAM_A1
Text GLabel 3150 1175 0    60   Input ~ 0
RAM_A2
Text GLabel 3150 1375 0    60   Input ~ 0
RAM_A3
Text GLabel 3150 1575 0    60   Input ~ 0
RAM_A4
Text GLabel 3150 1775 0    60   Input ~ 0
RAM_A5
Text GLabel 3150 1975 0    60   Input ~ 0
RAM_A6
Text GLabel 3150 3375 0    60   Input ~ 0
RAM_BA0
Text GLabel 3150 3575 0    60   Input ~ 0
RAM_BA1
Text GLabel 3150 2775 0    60   Input ~ 0
RAM_A10
Text GLabel 3150 775  0    60   Input ~ 0
RAM_A0
Text GLabel 3150 3175 0    60   Input ~ 0
RAM_A12
Wire Wire Line
	3150 775  3250 775 
Wire Wire Line
	3150 975  3250 975 
Wire Wire Line
	3250 1175 3150 1175
Wire Wire Line
	3150 1375 3250 1375
Wire Wire Line
	3150 1575 3250 1575
Wire Wire Line
	3250 1775 3150 1775
Wire Wire Line
	3150 1975 3250 1975
Wire Wire Line
	3250 2175 3150 2175
Wire Wire Line
	3150 2375 3250 2375
Wire Wire Line
	3250 2575 3150 2575
Wire Wire Line
	3150 2775 3250 2775
Wire Wire Line
	3150 2975 3250 2975
Wire Wire Line
	3150 3175 3250 3175
Wire Wire Line
	3250 3375 3150 3375
Wire Wire Line
	3150 3575 3250 3575
Wire Wire Line
	3150 4575 3250 4575
Wire Wire Line
	3150 4775 3250 4775
Wire Wire Line
	3250 4975 3150 4975
Wire Wire Line
	3150 5175 3250 5175
Wire Wire Line
	3250 5375 3150 5375
Wire Wire Line
	3150 5575 3250 5575
Wire Wire Line
	3150 5775 3250 5775
Wire Wire Line
	3250 5975 3150 5975
Wire Wire Line
	3150 6175 3250 6175
Wire Wire Line
	3250 6375 3150 6375
Wire Wire Line
	3150 6575 3250 6575
Wire Wire Line
	3250 6775 3150 6775
Wire Wire Line
	3150 6975 3250 6975
Wire Wire Line
	3150 7175 3250 7175
Wire Wire Line
	3150 7375 3250 7375
Text GLabel 8150 2450 0    60   Input ~ 0
+3V3_RAM
Wire Wire Line
	8150 2450 8650 2450
Wire Wire Line
	8650 2650 8450 2650
Connection ~ 8450 2450
Wire Wire Line
	8450 2850 8650 2850
Connection ~ 8450 2650
Wire Wire Line
	8450 3050 8650 3050
Connection ~ 8450 2850
Wire Wire Line
	8450 3250 8650 3250
Connection ~ 8450 3050
Wire Wire Line
	8450 3450 8650 3450
Connection ~ 8450 3250
Wire Wire Line
	8450 3650 8650 3650
Connection ~ 8450 3450
Connection ~ 8450 3650
Wire Wire Line
	8450 2350 8450 3650
$Comp
L GND #PWR038
U 1 1 5AB60DC8
P 8450 5200
F 0 "#PWR038" H 8450 4950 50  0001 C CNN
F 1 "GND" H 8450 5050 50  0000 C CNN
F 2 "" H 8450 5200 50  0001 C CNN
F 3 "" H 8450 5200 50  0001 C CNN
	1    8450 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 5050 8450 5050
Wire Wire Line
	8450 3850 8450 5200
Wire Wire Line
	8650 4850 8450 4850
Connection ~ 8450 5050
Wire Wire Line
	8650 4650 8450 4650
Connection ~ 8450 4850
Wire Wire Line
	8650 4450 8450 4450
Connection ~ 8450 4650
Wire Wire Line
	8650 4250 8450 4250
Connection ~ 8450 4450
Wire Wire Line
	8650 4050 8450 4050
Connection ~ 8450 4250
Wire Wire Line
	8650 3850 8450 3850
Connection ~ 8450 4050
Text Notes 8125 7650 0    60   ~ 0
23/03/2018
Text Notes 10575 7625 0    60   ~ 0
1
Text Notes 7350 7500 0    60   ~ 0
Mini PCI-e Audio Processor
Text Notes 10300 7500 0    60   ~ 0
By Jesse Spiessens
$Comp
L PWR_FLAG #FLG039
U 1 1 5ABDFBF6
P 8450 2350
F 0 "#FLG039" H 8450 2425 50  0001 C CNN
F 1 "PWR_FLAG" H 8450 2500 50  0000 C CNN
F 2 "" H 8450 2350 50  0001 C CNN
F 3 "" H 8450 2350 50  0001 C CNN
	1    8450 2350
	1    0    0    -1  
$EndComp
$EndSCHEMATC
