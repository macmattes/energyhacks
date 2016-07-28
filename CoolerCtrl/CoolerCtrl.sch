EESchema Schematic File Version 2
LIBS:power
LIBS:device
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
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Fan Regulator"
Date "2016-06-05"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L BC636 Q2
U 1 1 5754381B
P 7350 3050
F 0 "Q2" H 7550 3125 50  0000 L CNN
F 1 "BC636" H 7550 3050 50  0000 L CNN
F 2 "TO-92" H 7550 2975 50  0000 L CIN
F 3 "" H 7350 3050 50  0000 L CNN
	1    7350 3050
	0    1    -1   0   
$EndComp
$Comp
L BC547 Q1
U 1 1 575438BA
P 7250 3850
F 0 "Q1" H 7450 3925 50  0000 L CNN
F 1 "BC547" H 7450 3850 50  0000 L CNN
F 2 "TO-92" H 7450 3775 50  0000 L CIN
F 3 "" H 7250 3850 50  0000 L CNN
	1    7250 3850
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 57543923
P 4200 4100
F 0 "C2" H 4225 4200 50  0000 L CNN
F 1 "C" H 4225 4000 50  0000 L CNN
F 2 "" H 4238 3950 50  0000 C CNN
F 3 "" H 4200 4100 50  0000 C CNN
	1    4200 4100
	1    0    0    -1  
$EndComp
$Comp
L CP C1
U 1 1 575439F9
P 3200 4100
F 0 "C1" H 3225 4200 50  0000 L CNN
F 1 "CP" H 3225 4000 50  0000 L CNN
F 2 "" H 3238 3950 50  0000 C CNN
F 3 "" H 3200 4100 50  0000 C CNN
	1    3200 4100
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 57543A6A
P 6750 3850
F 0 "R1" V 6830 3850 50  0000 C CNN
F 1 "R" V 6750 3850 50  0000 C CNN
F 2 "" V 6680 3850 50  0000 C CNN
F 3 "" H 6750 3850 50  0000 C CNN
	1    6750 3850
	0    1    1    0   
$EndComp
$Comp
L R R3
U 1 1 57543ACB
P 7350 3450
F 0 "R3" V 7430 3450 50  0000 C CNN
F 1 "R" V 7350 3450 50  0000 C CNN
F 2 "" V 7280 3450 50  0000 C CNN
F 3 "" H 7350 3450 50  0000 C CNN
	1    7350 3450
	1    0    0    -1  
$EndComp
$Comp
L INDUCTOR L1
U 1 1 57543B2C
P 8050 2950
F 0 "L1" V 8000 2950 50  0000 C CNN
F 1 "INDUCTOR" V 8150 2950 50  0000 C CNN
F 2 "" H 8050 2950 50  0000 C CNN
F 3 "" H 8050 2950 50  0000 C CNN
	1    8050 2950
	0    1    1    0   
$EndComp
$Comp
L D_Schottky D1
U 1 1 57543B79
P 7750 3450
F 0 "D1" H 7750 3550 50  0000 C CNN
F 1 "D_Schottky" H 7750 3350 50  0000 C CNN
F 2 "" H 7750 3450 50  0000 C CNN
F 3 "" H 7750 3450 50  0000 C CNN
	1    7750 3450
	0    1    1    0   
$EndComp
$Comp
L ATTINY13-P IC1
U 1 1 57543BDA
P 5450 4100
F 0 "IC1" H 4650 4500 50  0000 C CNN
F 1 "ATTINY13-P" H 6100 3700 50  0000 C CNN
F 2 "DIP8" H 6100 4100 50  0000 C CIN
F 3 "" H 4650 4450 50  0000 C CNN
	1    5450 4100
	-1   0    0    -1  
$EndComp
$Comp
L 78L05 U1
U 1 1 57543C17
P 3750 3900
F 0 "U1" H 3900 3704 50  0000 C CNN
F 1 "78L05" H 3750 4100 50  0000 C CNN
F 2 "" H 3750 3900 50  0000 C CNN
F 3 "" H 3750 3900 50  0000 C CNN
	1    3750 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 3850 4450 3850
Wire Wire Line
	3750 4150 3750 4350
Wire Wire Line
	2850 4350 4450 4350
Wire Wire Line
	4200 3950 4200 3850
Connection ~ 4200 3850
Wire Wire Line
	4200 4250 4200 4800
Connection ~ 4200 4350
Wire Wire Line
	3200 4250 3200 4350
Connection ~ 3750 4350
Wire Wire Line
	2850 3850 3350 3850
Wire Wire Line
	3200 2800 3200 3950
Wire Wire Line
	6450 3850 6600 3850
Wire Wire Line
	6900 3850 7050 3850
Wire Wire Line
	8550 4650 4200 4650
Wire Wire Line
	7350 4650 7350 4050
Wire Wire Line
	7350 3250 7350 3300
Wire Wire Line
	7350 3600 7350 3650
Wire Wire Line
	7550 2950 7750 2950
Wire Wire Line
	7750 2950 7750 3300
Connection ~ 7750 2950
Wire Wire Line
	7750 4650 7750 3600
Connection ~ 7350 4650
Wire Wire Line
	3200 2950 7150 2950
Connection ~ 3200 3850
$Comp
L CP C3
U 1 1 57544854
P 8350 3450
F 0 "C3" H 8375 3550 50  0000 L CNN
F 1 "CP" H 8375 3350 50  0000 L CNN
F 2 "" H 8388 3300 50  0000 C CNN
F 3 "" H 8350 3450 50  0000 C CNN
	1    8350 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 3300 8350 2950
Wire Wire Line
	8350 4650 8350 3600
Connection ~ 7750 4650
$Comp
L R R2
U 1 1 57544D7A
P 6950 3100
F 0 "R2" V 7030 3100 50  0000 C CNN
F 1 "R" V 6950 3100 50  0000 C CNN
F 2 "" V 6880 3100 50  0000 C CNN
F 3 "" H 6950 3100 50  0000 C CNN
	1    6950 3100
	1    0    0    -1  
$EndComp
Connection ~ 6950 2950
Wire Wire Line
	6950 3250 7350 3250
Connection ~ 7350 3250
$Comp
L GND #PWR2
U 1 1 57545030
P 4200 4800
F 0 "#PWR2" H 4200 4550 50  0001 C CNN
F 1 "GND" H 4200 4650 50  0000 C CNN
F 2 "" H 4200 4800 50  0000 C CNN
F 3 "" H 4200 4800 50  0000 C CNN
	1    4200 4800
	1    0    0    -1  
$EndComp
Connection ~ 4200 4650
$Comp
L CONN_01X02 P1
U 1 1 57545569
P 2650 3900
F 0 "P1" H 2650 4050 50  0000 C CNN
F 1 "CONN_01X02" V 2750 3900 50  0000 C CNN
F 2 "" H 2650 3900 50  0000 C CNN
F 3 "" H 2650 3900 50  0000 C CNN
	1    2650 3900
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2850 3950 2850 4350
Connection ~ 3200 4350
$Comp
L CONN_01X02 P3
U 1 1 5754572C
P 8750 3000
F 0 "P3" H 8750 3150 50  0000 C CNN
F 1 "CONN_01X02" V 8850 3000 50  0000 C CNN
F 2 "" H 8750 3000 50  0000 C CNN
F 3 "" H 8750 3000 50  0000 C CNN
	1    8750 3000
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P2
U 1 1 5754579B
P 6750 5150
F 0 "P2" H 6750 5300 50  0000 C CNN
F 1 "CONN_01X02" V 6850 5150 50  0000 C CNN
F 2 "" H 6750 5150 50  0000 C CNN
F 3 "" H 6750 5150 50  0000 C CNN
	1    6750 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 2950 8550 2950
Connection ~ 8350 2950
Wire Wire Line
	8550 3050 8550 4650
Connection ~ 8350 4650
$Comp
L +12V #PWR1
U 1 1 57545A05
P 3200 2800
F 0 "#PWR1" H 3200 2650 50  0001 C CNN
F 1 "+12V" H 3200 2940 50  0000 C CNN
F 2 "" H 3200 2800 50  0000 C CNN
F 3 "" H 3200 2800 50  0000 C CNN
	1    3200 2800
	1    0    0    -1  
$EndComp
Connection ~ 3200 2950
$EndSCHEMATC