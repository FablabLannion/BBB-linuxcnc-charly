EESchema Schematic File Version 2
LIBS:pololu
LIBS:boneheader
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
LIBS:special
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
LIBS:noname-cache
LIBS:ST
EELAYER 27 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title "servocontrol"
Date "12 mar 2015"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L GND #PWR01
U 1 1 526FDCB9
P 1400 1200
F 0 "#PWR01" H 1400 1200 30  0001 C CNN
F 1 "GND" H 1400 1130 30  0001 C CNN
F 2 "" H 1400 1200 60  0001 C CNN
F 3 "" H 1400 1200 60  0001 C CNN
	1    1400 1200
	-1   0    0    1   
$EndComp
$Comp
L CONN_3 K1
U 1 1 526FDC70
P 2100 950
F 0 "K1" V 2050 950 50  0000 C CNN
F 1 "CONN_3" V 2150 950 40  0000 C CNN
F 2 "" H 2100 950 60  0001 C CNN
F 3 "" H 2100 950 60  0001 C CNN
	1    2100 950 
	0    -1   -1   0   
$EndComp
$Comp
L CONN_3 K3
U 1 1 526FDC5E
P 2650 950
F 0 "K3" V 2600 950 50  0000 C CNN
F 1 "CONN_3" V 2700 950 40  0000 C CNN
F 2 "" H 2650 950 60  0001 C CNN
F 3 "" H 2650 950 60  0001 C CNN
	1    2650 950 
	0    -1   -1   0   
$EndComp
$Comp
L RJ45 Y
U 1 1 526FDC1F
P 1050 9600
F 0 "Y" H 1250 10100 60  0000 C CNN
F 1 "RJ45" H 900 10100 60  0000 C CNN
F 2 "" H 1050 9600 60  0001 C CNN
F 3 "" H 1050 9600 60  0001 C CNN
	1    1050 9600
	0    -1   -1   0   
$EndComp
$Comp
L R R3
U 1 1 526FCCC6
P 5150 2900
F 0 "R3" V 5230 2900 50  0000 C CNN
F 1 "R" V 5150 2900 50  0000 C CNN
F 2 "" H 5150 2900 60  0001 C CNN
F 3 "" H 5150 2900 60  0001 C CNN
	1    5150 2900
	0    1    1    0   
$EndComp
$Comp
L R R2
U 1 1 526FCCB3
P 5150 3300
F 0 "R2" V 5230 3300 50  0000 C CNN
F 1 "R" V 5150 3300 50  0000 C CNN
F 2 "" H 5150 3300 60  0001 C CNN
F 3 "" H 5150 3300 60  0001 C CNN
	1    5150 3300
	0    1    1    0   
$EndComp
$Comp
L DIODE D1
U 1 1 526FCB2E
P 5600 3350
F 0 "D1" H 5600 3450 40  0000 C CNN
F 1 "DIODE" H 5600 3250 40  0000 C CNN
F 2 "" H 5600 3350 60  0001 C CNN
F 3 "" H 5600 3350 60  0001 C CNN
	1    5600 3350
	0    1    1    0   
$EndComp
$Comp
L VSS #PWR07
U 1 1 526FC9F6
P 1550 2100
F 0 "#PWR07" H 1550 2100 30  0001 C CNN
F 1 "VSS" H 1550 2030 30  0000 C CNN
F 2 "" H 1550 2100 60  0001 C CNN
F 3 "" H 1550 2100 60  0001 C CNN
	1    1550 2100
	-1   0    0    1   
$EndComp
$Comp
L C C6
U 1 1 526FC8E8
P 4850 2450
F 0 "C6" H 4900 2550 50  0000 L CNN
F 1 "C" H 4900 2350 50  0000 L CNN
F 2 "" H 4850 2450 60  0001 C CNN
F 3 "" H 4850 2450 60  0001 C CNN
	1    4850 2450
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 526FC8E4
P 4500 2450
F 0 "C5" H 4550 2550 50  0000 L CNN
F 1 "C" H 4550 2350 50  0000 L CNN
F 2 "" H 4500 2450 60  0001 C CNN
F 3 "" H 4500 2450 60  0001 C CNN
	1    4500 2450
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 526FC8DC
P 4700 3700
F 0 "C4" H 4750 3800 50  0000 L CNN
F 1 "C" H 4750 3600 50  0000 L CNN
F 2 "" H 4700 3700 60  0001 C CNN
F 3 "" H 4700 3700 60  0001 C CNN
	1    4700 3700
	0    1    1    0   
$EndComp
$Comp
L C C3
U 1 1 526FC8D8
P 5900 3700
F 0 "C3" H 5950 3800 50  0000 L CNN
F 1 "C" H 5950 3600 50  0000 L CNN
F 2 "" H 5900 3700 60  0001 C CNN
F 3 "" H 5900 3700 60  0001 C CNN
	1    5900 3700
	1    0    0    -1  
$EndComp
$Comp
L C C2
U 1 1 526FC8C8
P 1350 2650
F 0 "C2" H 1400 2750 50  0000 L CNN
F 1 "C" H 1400 2550 50  0000 L CNN
F 2 "" H 1350 2650 60  0001 C CNN
F 3 "" H 1350 2650 60  0001 C CNN
	1    1350 2650
	0    -1   -1   0   
$EndComp
$Comp
L DIODE D2
U 1 1 526FC833
P 5600 4000
F 0 "D2" H 5600 4100 40  0000 C CNN
F 1 "DIODE" H 5600 3900 40  0000 C CNN
F 2 "" H 5600 4000 60  0001 C CNN
F 3 "" H 5600 4000 60  0001 C CNN
	1    5600 4000
	0    1    1    0   
$EndComp
$Comp
L L6205N IC1
U 1 1 526FBBFD
P 3650 3400
F 0 "IC1" V 3050 3950 50  0000 L BNN
F 1 "L6205N" V 3615 3200 50  0000 L BNN
F 2 "st-microelectronics-DIL20" H 3650 3550 50  0001 C CNN
F 3 "" H 3650 3400 60  0001 C CNN
	1    3650 3400
	-1   0    0    1   
$EndComp
$Comp
L C C1
U 1 1 526F862D
P 1350 2400
F 0 "C1" H 1400 2500 50  0000 L CNN
F 1 "C" H 1400 2300 50  0000 L CNN
F 2 "" H 1350 2400 60  0001 C CNN
F 3 "" H 1350 2400 60  0001 C CNN
	1    1350 2400
	0    -1   -1   0   
$EndComp
$Comp
L R R1
U 1 1 526F85E3
P 5300 3700
F 0 "R1" V 5380 3700 50  0000 C CNN
F 1 "R" V 5300 3700 50  0000 C CNN
F 2 "" H 5300 3700 60  0001 C CNN
F 3 "" H 5300 3700 60  0001 C CNN
	1    5300 3700
	0    1    1    0   
$EndComp
$Comp
L RJ45 X
U 1 1 52701D42
P 1050 10750
F 0 "X" H 1250 11250 60  0000 C CNN
F 1 "RJ45" H 900 11250 60  0000 C CNN
F 2 "" H 1050 10750 60  0001 C CNN
F 3 "" H 1050 10750 60  0001 C CNN
	1    1050 10750
	0    -1   -1   0   
$EndComp
$Comp
L RJ45 Z
U 1 1 52701D48
P 1050 8500
F 0 "Z" H 1250 9000 60  0000 C CNN
F 1 "RJ45" H 900 9000 60  0000 C CNN
F 2 "" H 1050 8500 60  0001 C CNN
F 3 "" H 1050 8500 60  0001 C CNN
	1    1050 8500
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR08
U 1 1 527029DA
P 1400 4600
F 0 "#PWR08" H 1400 4600 30  0001 C CNN
F 1 "GND" H 1400 4530 30  0001 C CNN
F 2 "" H 1400 4600 60  0001 C CNN
F 3 "" H 1400 4600 60  0001 C CNN
	1    1400 4600
	-1   0    0    1   
$EndComp
$Comp
L CONN_3 K2
U 1 1 527029E0
P 2100 4350
F 0 "K2" V 2050 4350 50  0000 C CNN
F 1 "CONN_3" V 2150 4350 40  0000 C CNN
F 2 "" H 2100 4350 60  0001 C CNN
F 3 "" H 2100 4350 60  0001 C CNN
	1    2100 4350
	0    -1   -1   0   
$EndComp
$Comp
L CONN_3 K4
U 1 1 527029E6
P 2650 4350
F 0 "K4" V 2600 4350 50  0000 C CNN
F 1 "CONN_3" V 2700 4350 40  0000 C CNN
F 2 "" H 2650 4350 60  0001 C CNN
F 3 "" H 2650 4350 60  0001 C CNN
	1    2650 4350
	0    -1   -1   0   
$EndComp
$Comp
L R R4
U 1 1 527029F2
P 5150 6300
F 0 "R4" V 5230 6300 50  0000 C CNN
F 1 "R" V 5150 6300 50  0000 C CNN
F 2 "" H 5150 6300 60  0001 C CNN
F 3 "" H 5150 6300 60  0001 C CNN
	1    5150 6300
	0    1    1    0   
$EndComp
$Comp
L R R5
U 1 1 527029F8
P 5150 6700
F 0 "R5" V 5230 6700 50  0000 C CNN
F 1 "R" V 5150 6700 50  0000 C CNN
F 2 "" H 5150 6700 60  0001 C CNN
F 3 "" H 5150 6700 60  0001 C CNN
	1    5150 6700
	0    1    1    0   
$EndComp
$Comp
L DIODE D3
U 1 1 52702A10
P 5600 6750
F 0 "D3" H 5600 6850 40  0000 C CNN
F 1 "DIODE" H 5600 6650 40  0000 C CNN
F 2 "" H 5600 6750 60  0001 C CNN
F 3 "" H 5600 6750 60  0001 C CNN
	1    5600 6750
	0    1    1    0   
$EndComp
$Comp
L VSS #PWR014
U 1 1 52702A1C
P 1550 5500
F 0 "#PWR014" H 1550 5500 30  0001 C CNN
F 1 "VSS" H 1550 5430 30  0000 C CNN
F 2 "" H 1550 5500 60  0001 C CNN
F 3 "" H 1550 5500 60  0001 C CNN
	1    1550 5500
	-1   0    0    1   
$EndComp
$Comp
L C C11
U 1 1 52702A22
P 4850 5850
F 0 "C11" H 4900 5950 50  0000 L CNN
F 1 "C" H 4900 5750 50  0000 L CNN
F 2 "" H 4850 5850 60  0001 C CNN
F 3 "" H 4850 5850 60  0001 C CNN
	1    4850 5850
	1    0    0    -1  
$EndComp
$Comp
L C C9
U 1 1 52702A28
P 4500 5850
F 0 "C9" H 4550 5950 50  0000 L CNN
F 1 "C" H 4550 5750 50  0000 L CNN
F 2 "" H 4500 5850 60  0001 C CNN
F 3 "" H 4500 5850 60  0001 C CNN
	1    4500 5850
	1    0    0    -1  
$EndComp
$Comp
L C C10
U 1 1 52702A2E
P 4700 7100
F 0 "C10" H 4750 7200 50  0000 L CNN
F 1 "C" H 4750 7000 50  0000 L CNN
F 2 "" H 4700 7100 60  0001 C CNN
F 3 "" H 4700 7100 60  0001 C CNN
	1    4700 7100
	0    1    1    0   
$EndComp
$Comp
L C C14
U 1 1 52702A34
P 5900 7100
F 0 "C14" H 5950 7200 50  0000 L CNN
F 1 "C" H 5950 7000 50  0000 L CNN
F 2 "" H 5900 7100 60  0001 C CNN
F 3 "" H 5900 7100 60  0001 C CNN
	1    5900 7100
	1    0    0    -1  
$EndComp
$Comp
L DIODE D4
U 1 1 52702A40
P 5600 7400
F 0 "D4" H 5600 7500 40  0000 C CNN
F 1 "DIODE" H 5600 7300 40  0000 C CNN
F 2 "" H 5600 7400 60  0001 C CNN
F 3 "" H 5600 7400 60  0001 C CNN
	1    5600 7400
	0    1    1    0   
$EndComp
$Comp
L L6205N IC2
U 1 1 52702A46
P 3650 6800
F 0 "IC2" V 3050 7350 50  0000 L BNN
F 1 "L6205N" V 3615 6600 50  0000 L BNN
F 2 "st-microelectronics-DIL20" H 3650 6950 50  0001 C CNN
F 3 "" H 3650 6800 60  0001 C CNN
	1    3650 6800
	-1   0    0    1   
$EndComp
$Comp
L R R6
U 1 1 52702A52
P 5300 7100
F 0 "R6" V 5380 7100 50  0000 C CNN
F 1 "R" V 5300 7100 50  0000 C CNN
F 2 "" H 5300 7100 60  0001 C CNN
F 3 "" H 5300 7100 60  0001 C CNN
	1    5300 7100
	0    1    1    0   
$EndComp
$Comp
L BONE_P8 P8
U 1 1 55015D2C
P 13950 5950
F 0 "P8" H 13950 7150 60  0000 C CNN
F 1 "BONE_P8" V 13950 5850 50  0000 C CNN
F 2 "" H 13950 5950 60  0000 C CNN
F 3 "" H 13950 5950 60  0000 C CNN
	1    13950 5950
	1    0    0    -1  
$EndComp
$Comp
L BONE_P8 P9
U 1 1 55015D3B
P 13950 9100
F 0 "P9" H 13950 10300 60  0000 C CNN
F 1 "BONE_P8" V 13950 9000 50  0000 C CNN
F 2 "" H 13950 9100 60  0000 C CNN
F 3 "" H 13950 9100 60  0000 C CNN
	1    13950 9100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 550160DC
P 1550 8850
F 0 "#PWR?" H 1550 8850 30  0001 C CNN
F 1 "GND" H 1550 8780 30  0001 C CNN
F 2 "" H 1550 8850 60  0000 C CNN
F 3 "" H 1550 8850 60  0000 C CNN
	1    1550 8850
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR?
U 1 1 550160EE
P 1500 8750
F 0 "#PWR?" H 1500 8840 20  0001 C CNN
F 1 "+5V" H 1500 8840 30  0000 C CNN
F 2 "" H 1500 8750 60  0000 C CNN
F 3 "" H 1500 8750 60  0000 C CNN
	1    1500 8750
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR?
U 1 1 55016128
P 1500 9850
F 0 "#PWR?" H 1500 9940 20  0001 C CNN
F 1 "+5V" H 1500 9940 30  0000 C CNN
F 2 "" H 1500 9850 60  0000 C CNN
F 3 "" H 1500 9850 60  0000 C CNN
	1    1500 9850
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR?
U 1 1 55016131
P 1500 11000
F 0 "#PWR?" H 1500 11090 20  0001 C CNN
F 1 "+5V" H 1500 11090 30  0000 C CNN
F 2 "" H 1500 11000 60  0000 C CNN
F 3 "" H 1500 11000 60  0000 C CNN
	1    1500 11000
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 55016138
P 1550 9950
F 0 "#PWR?" H 1550 9950 30  0001 C CNN
F 1 "GND" H 1550 9880 30  0001 C CNN
F 2 "" H 1550 9950 60  0000 C CNN
F 3 "" H 1550 9950 60  0000 C CNN
	1    1550 9950
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 5501613E
P 1550 11100
F 0 "#PWR?" H 1550 11100 30  0001 C CNN
F 1 "GND" H 1550 11030 30  0001 C CNN
F 2 "" H 1550 11100 60  0000 C CNN
F 3 "" H 1550 11100 60  0000 C CNN
	1    1550 11100
	0    1    1    0   
$EndComp
$Comp
L GND #PWR?
U 1 1 5501614A
P 700 10150
F 0 "#PWR?" H 700 10150 30  0001 C CNN
F 1 "GND" H 700 10080 30  0001 C CNN
F 2 "" H 700 10150 60  0000 C CNN
F 3 "" H 700 10150 60  0000 C CNN
	1    700  10150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 55016150
P 700 9000
F 0 "#PWR?" H 700 9000 30  0001 C CNN
F 1 "GND" H 700 8930 30  0001 C CNN
F 2 "" H 700 9000 60  0000 C CNN
F 3 "" H 700 9000 60  0000 C CNN
	1    700  9000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 55016158
P 700 7900
F 0 "#PWR?" H 700 7900 30  0001 C CNN
F 1 "GND" H 700 7830 30  0001 C CNN
F 2 "" H 700 7900 60  0000 C CNN
F 3 "" H 700 7900 60  0000 C CNN
	1    700  7900
	1    0    0    -1  
$EndComp
$Comp
L OPTO-HCPL0531-SO8 U?
U 1 1 55017087
P 7050 10400
F 0 "U?" H 7250 10700 60  0000 C CNN
F 1 "OPTO-HCPL0531-SO8" H 7050 9550 60  0000 C CNN
F 2 "" H 7050 10400 60  0000 C CNN
F 3 "" H 7050 10400 60  0000 C CNN
	1    7050 10400
	1    0    0    -1  
$EndComp
$Comp
L OPTO-HCPL0531-SO8 U?
U 1 1 55017096
P 7000 9150
F 0 "U?" H 7200 9450 60  0000 C CNN
F 1 "OPTO-HCPL0531-SO8" H 7000 8300 60  0000 C CNN
F 2 "" H 7000 9150 60  0000 C CNN
F 3 "" H 7000 9150 60  0000 C CNN
	1    7000 9150
	1    0    0    -1  
$EndComp
$Comp
L OPTO-HCPL0531-SO8 U?
U 1 1 550170A5
P 4900 8350
F 0 "U?" H 5100 8650 60  0000 C CNN
F 1 "OPTO-HCPL0531-SO8" H 4900 7500 60  0000 C CNN
F 2 "" H 4900 8350 60  0000 C CNN
F 3 "" H 4900 8350 60  0000 C CNN
	1    4900 8350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 550170B2
P 6350 10500
F 0 "#PWR?" H 6350 10500 30  0001 C CNN
F 1 "GND" H 6350 10430 30  0001 C CNN
F 2 "" H 6350 10500 60  0000 C CNN
F 3 "" H 6350 10500 60  0000 C CNN
	1    6350 10500
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR?
U 1 1 550170CC
P 6350 10700
F 0 "#PWR?" H 6350 10700 30  0001 C CNN
F 1 "GND" H 6350 10630 30  0001 C CNN
F 2 "" H 6350 10700 60  0000 C CNN
F 3 "" H 6350 10700 60  0000 C CNN
	1    6350 10700
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR?
U 1 1 550170D2
P 6300 9450
F 0 "#PWR?" H 6300 9450 30  0001 C CNN
F 1 "GND" H 6300 9380 30  0001 C CNN
F 2 "" H 6300 9450 60  0000 C CNN
F 3 "" H 6300 9450 60  0000 C CNN
	1    6300 9450
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR?
U 1 1 550170D8
P 6300 9250
F 0 "#PWR?" H 6300 9250 30  0001 C CNN
F 1 "GND" H 6300 9180 30  0001 C CNN
F 2 "" H 6300 9250 60  0000 C CNN
F 3 "" H 6300 9250 60  0000 C CNN
	1    6300 9250
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR?
U 1 1 550170DE
P 4200 8650
F 0 "#PWR?" H 4200 8650 30  0001 C CNN
F 1 "GND" H 4200 8580 30  0001 C CNN
F 2 "" H 4200 8650 60  0000 C CNN
F 3 "" H 4200 8650 60  0000 C CNN
	1    4200 8650
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR?
U 1 1 550170E4
P 4200 8450
F 0 "#PWR?" H 4200 8450 30  0001 C CNN
F 1 "GND" H 4200 8380 30  0001 C CNN
F 2 "" H 4200 8450 60  0000 C CNN
F 3 "" H 4200 8450 60  0000 C CNN
	1    4200 8450
	0    -1   -1   0   
$EndComp
$Comp
L +5V #PWR?
U 1 1 55017412
P 1500 10500
F 0 "#PWR?" H 1500 10590 20  0001 C CNN
F 1 "+5V" H 1500 10590 30  0000 C CNN
F 2 "" H 1500 10500 60  0000 C CNN
F 3 "" H 1500 10500 60  0000 C CNN
	1    1500 10500
	0    1    1    0   
$EndComp
Connection ~ 2100 1400
Wire Wire Line
	2650 1400 2650 1300
Wire Wire Line
	1400 1400 2650 1400
Wire Wire Line
	2200 1300 2200 4000
Wire Wire Line
	2200 4000 2650 4000
Wire Wire Line
	2750 1300 2800 1300
Wire Wire Line
	2800 1300 2800 3000
Wire Wire Line
	2550 1300 2550 1750
Wire Wire Line
	2550 1750 2700 1750
Connection ~ 3750 2700
Wire Wire Line
	3550 2700 3850 2700
Connection ~ 4500 2900
Wire Wire Line
	4350 2900 4900 2900
Wire Wire Line
	4500 2900 4500 2650
Wire Wire Line
	4500 2150 4500 2250
Connection ~ 5600 2300
Wire Wire Line
	1950 2300 5900 2300
Wire Wire Line
	5900 2300 5900 3500
Wire Wire Line
	4350 3800 4350 4200
Connection ~ 5600 3700
Wire Wire Line
	5600 3550 5600 3800
Wire Wire Line
	5600 3700 5550 3700
Wire Wire Line
	2650 4000 2650 3500
Wire Wire Line
	2650 3500 2950 3500
Wire Wire Line
	2950 3100 2700 3100
Connection ~ 1150 2900
Connection ~ 1550 2650
Connection ~ 2800 3200
Wire Wire Line
	1550 3200 2950 3200
Wire Wire Line
	1550 2100 1550 3200
Wire Wire Line
	2950 3700 2800 3700
Wire Wire Line
	2800 3700 2800 3200
Connection ~ 1550 2400
Connection ~ 1150 2400
Wire Wire Line
	1150 2100 1150 3400
Wire Wire Line
	1150 3400 2950 3400
Connection ~ 1150 2650
Wire Wire Line
	2800 3000 2950 3000
Wire Wire Line
	2950 3600 2750 3600
Wire Wire Line
	4350 3700 4500 3700
Wire Wire Line
	4900 3700 5050 3700
Wire Wire Line
	5600 2300 5600 3150
Wire Wire Line
	1950 2300 1950 3200
Connection ~ 1950 3200
Wire Wire Line
	4350 4200 5900 4200
Wire Wire Line
	5900 4200 5900 3900
Connection ~ 5600 4200
Wire Wire Line
	1000 2900 2950 2900
Wire Wire Line
	4850 2150 4850 2250
Wire Wire Line
	4850 2650 4850 3300
Wire Wire Line
	4350 3300 4900 3300
Connection ~ 4850 3300
Connection ~ 3650 2700
Wire Wire Line
	3700 2700 3700 2450
Connection ~ 3700 2700
Wire Wire Line
	2700 3100 2700 1750
Wire Wire Line
	2000 1300 2000 4150
Wire Wire Line
	2000 4150 2750 4150
Wire Wire Line
	2750 4150 2750 3600
Wire Wire Line
	1400 1400 1400 1200
Wire Wire Line
	2100 1400 2100 1300
Connection ~ 2100 4800
Wire Wire Line
	2650 4800 2650 4700
Wire Wire Line
	1400 4800 2650 4800
Wire Wire Line
	2200 4700 2200 7400
Wire Wire Line
	2200 7400 2650 7400
Wire Wire Line
	2750 4700 2800 4700
Wire Wire Line
	2800 4700 2800 6400
Wire Wire Line
	2550 4700 2550 5150
Wire Wire Line
	2550 5150 2700 5150
Connection ~ 3750 6100
Wire Wire Line
	3550 6100 3850 6100
Connection ~ 4500 6300
Wire Wire Line
	4350 6300 4900 6300
Wire Wire Line
	4500 6300 4500 6050
Wire Wire Line
	4500 5550 4500 5650
Connection ~ 5600 5700
Wire Wire Line
	1950 5700 5900 5700
Wire Wire Line
	5900 5700 5900 6900
Wire Wire Line
	4350 7200 4350 7600
Connection ~ 5600 7100
Wire Wire Line
	5600 6950 5600 7200
Wire Wire Line
	5600 7100 5550 7100
Wire Wire Line
	2650 7400 2650 6900
Wire Wire Line
	2650 6900 2950 6900
Wire Wire Line
	2950 6500 2700 6500
Connection ~ 1150 6300
Connection ~ 1550 6050
Connection ~ 2800 6600
Wire Wire Line
	1550 6600 2950 6600
Wire Wire Line
	1550 5500 1550 6600
Wire Wire Line
	2950 7100 2800 7100
Wire Wire Line
	2800 7100 2800 6600
Connection ~ 1550 5800
Connection ~ 1150 5800
Wire Wire Line
	1150 5500 1150 6800
Wire Wire Line
	1150 6800 2950 6800
Connection ~ 1150 6050
Wire Wire Line
	2800 6400 2950 6400
Wire Wire Line
	2950 7000 2750 7000
Wire Wire Line
	4350 7100 4500 7100
Wire Wire Line
	4900 7100 5050 7100
Wire Wire Line
	5600 5700 5600 6550
Wire Wire Line
	1950 5700 1950 6600
Connection ~ 1950 6600
Wire Wire Line
	4350 7600 5900 7600
Wire Wire Line
	5900 7600 5900 7300
Connection ~ 5600 7600
Wire Wire Line
	1000 6300 2950 6300
Wire Wire Line
	4850 5550 4850 5650
Wire Wire Line
	4850 6050 4850 6700
Wire Wire Line
	4350 6700 4900 6700
Connection ~ 4850 6700
Connection ~ 3650 6100
Wire Wire Line
	3700 6100 3700 5850
Connection ~ 3700 6100
Wire Wire Line
	2700 6500 2700 5150
Wire Wire Line
	2000 4700 2000 7550
Wire Wire Line
	2000 7550 2750 7550
Wire Wire Line
	2750 7550 2750 7000
Wire Wire Line
	1400 4800 1400 4600
Wire Wire Line
	2100 4800 2100 4700
Wire Wire Line
	4350 3500 6950 3500
Wire Wire Line
	4350 3400 6950 3400
Wire Wire Line
	4350 6400 6950 6400
Wire Wire Line
	4350 6500 7000 6500
Wire Wire Line
	1500 10800 6300 10800
Wire Wire Line
	6300 10800 6300 10200
Wire Wire Line
	6300 10200 6400 10200
Wire Wire Line
	1500 10900 6300 10900
Wire Wire Line
	6300 10900 6300 11000
Wire Wire Line
	6300 11000 6400 11000
Wire Wire Line
	1500 10400 6250 10400
Wire Wire Line
	6250 10400 6250 9750
Wire Wire Line
	6250 9750 6350 9750
$Comp
L OPTO-HCPL0531-SO8 U?
U 1 1 55017906
P 4900 9550
F 0 "U?" H 5100 9850 60  0000 C CNN
F 1 "OPTO-HCPL0531-SO8" H 4900 8700 60  0000 C CNN
F 2 "" H 4900 9550 60  0000 C CNN
F 3 "" H 4900 9550 60  0000 C CNN
	1    4900 9550
	1    0    0    -1  
$EndComp
$Comp
L OPTO-HCPL0531-SO8 U?
U 1 1 5501790C
P 2800 7900
F 0 "U?" H 3000 8200 60  0000 C CNN
F 1 "OPTO-HCPL0531-SO8" H 2800 7050 60  0000 C CNN
F 2 "" H 2800 7900 60  0000 C CNN
F 3 "" H 2800 7900 60  0000 C CNN
	1    2800 7900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 55017912
P 2100 8200
F 0 "#PWR?" H 2100 8200 30  0001 C CNN
F 1 "GND" H 2100 8130 30  0001 C CNN
F 2 "" H 2100 8200 60  0000 C CNN
F 3 "" H 2100 8200 60  0000 C CNN
	1    2100 8200
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR?
U 1 1 55017918
P 2100 8000
F 0 "#PWR?" H 2100 8000 30  0001 C CNN
F 1 "GND" H 2100 7930 30  0001 C CNN
F 2 "" H 2100 8000 60  0000 C CNN
F 3 "" H 2100 8000 60  0000 C CNN
	1    2100 8000
	0    -1   -1   0   
$EndComp
$Comp
L OPTO-HCPL0531-SO8 U?
U 1 1 5501791E
P 2800 9100
F 0 "U?" H 3000 9400 60  0000 C CNN
F 1 "OPTO-HCPL0531-SO8" H 2800 8250 60  0000 C CNN
F 2 "" H 2800 9100 60  0000 C CNN
F 3 "" H 2800 9100 60  0000 C CNN
	1    2800 9100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1500 9750 1700 9750
Wire Wire Line
	1700 9750 1700 10300
Wire Wire Line
	1700 10300 4100 10300
Wire Wire Line
	4100 10300 4100 10150
Wire Wire Line
	4100 10150 4250 10150
$Comp
L GND #PWR?
U 1 1 550179DB
P 4200 9850
F 0 "#PWR?" H 4200 9850 30  0001 C CNN
F 1 "GND" H 4200 9780 30  0001 C CNN
F 2 "" H 4200 9850 60  0000 C CNN
F 3 "" H 4200 9850 60  0000 C CNN
	1    4200 9850
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR?
U 1 1 550179E1
P 4200 9650
F 0 "#PWR?" H 4200 9650 30  0001 C CNN
F 1 "GND" H 4200 9580 30  0001 C CNN
F 2 "" H 4200 9650 60  0000 C CNN
F 3 "" H 4200 9650 60  0000 C CNN
	1    4200 9650
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR?
U 1 1 550179E7
P 2100 9400
F 0 "#PWR?" H 2100 9400 30  0001 C CNN
F 1 "GND" H 2100 9330 30  0001 C CNN
F 2 "" H 2100 9400 60  0000 C CNN
F 3 "" H 2100 9400 60  0000 C CNN
	1    2100 9400
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR?
U 1 1 550179F7
P 2100 9200
F 0 "#PWR?" H 2100 9200 30  0001 C CNN
F 1 "GND" H 2100 9130 30  0001 C CNN
F 2 "" H 2100 9200 60  0000 C CNN
F 3 "" H 2100 9200 60  0000 C CNN
	1    2100 9200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1500 9650 1800 9650
Wire Wire Line
	1800 9650 1800 10200
Wire Wire Line
	1800 10200 4000 10200
Wire Wire Line
	4000 10200 4000 9350
Wire Wire Line
	4000 9350 4250 9350
Wire Wire Line
	4250 8950 3900 8950
Wire Wire Line
	3900 8950 3900 10100
Wire Wire Line
	3900 10100 1900 10100
Wire Wire Line
	1900 10100 1900 9250
Wire Wire Line
	1900 9250 1500 9250
$Comp
L +5V #PWR?
U 1 1 55017B7A
P 1500 9350
F 0 "#PWR?" H 1500 9440 20  0001 C CNN
F 1 "+5V" H 1500 9440 30  0000 C CNN
F 2 "" H 1500 9350 60  0000 C CNN
F 3 "" H 1500 9350 60  0000 C CNN
	1    1500 9350
	0    1    1    0   
$EndComp
Wire Wire Line
	1500 8650 1950 8650
Wire Wire Line
	1950 8650 1950 9700
Wire Wire Line
	1950 9700 2150 9700
Wire Wire Line
	1500 8550 2000 8550
Wire Wire Line
	2000 8550 2000 8900
Wire Wire Line
	2000 8900 2150 8900
Wire Wire Line
	1500 8150 2050 8150
Wire Wire Line
	2050 8150 2050 8500
Wire Wire Line
	2050 8500 2150 8500
$Comp
L +5V #PWR?
U 1 1 55017DD5
P 1500 8250
F 0 "#PWR?" H 1500 8340 20  0001 C CNN
F 1 "+5V" H 1500 8340 30  0000 C CNN
F 2 "" H 1500 8250 60  0000 C CNN
F 3 "" H 1500 8250 60  0000 C CNN
	1    1500 8250
	0    1    1    0   
$EndComp
$Comp
L +3,3V #PWR?
U 1 1 55017DDD
P 3400 7700
F 0 "#PWR?" H 3400 7660 30  0001 C CNN
F 1 "+3,3V" H 3400 7810 30  0000 C CNN
F 2 "" H 3400 7700 60  0000 C CNN
F 3 "" H 3400 7700 60  0000 C CNN
	1    3400 7700
	0    1    1    0   
$EndComp
$Comp
L +3,3V #PWR?
U 1 1 55017E03
P 3400 8900
F 0 "#PWR?" H 3400 8860 30  0001 C CNN
F 1 "+3,3V" H 3400 9010 30  0000 C CNN
F 2 "" H 3400 8900 60  0000 C CNN
F 3 "" H 3400 8900 60  0000 C CNN
	1    3400 8900
	0    1    1    0   
$EndComp
$Comp
L +3,3V #PWR?
U 1 1 55017E1D
P 5500 8150
F 0 "#PWR?" H 5500 8110 30  0001 C CNN
F 1 "+3,3V" H 5500 8260 30  0000 C CNN
F 2 "" H 5500 8150 60  0000 C CNN
F 3 "" H 5500 8150 60  0000 C CNN
	1    5500 8150
	0    1    1    0   
$EndComp
$Comp
L +3,3V #PWR?
U 1 1 55017E23
P 5500 9350
F 0 "#PWR?" H 5500 9310 30  0001 C CNN
F 1 "+3,3V" H 5500 9460 30  0000 C CNN
F 2 "" H 5500 9350 60  0000 C CNN
F 3 "" H 5500 9350 60  0000 C CNN
	1    5500 9350
	0    1    1    0   
$EndComp
$Comp
L +3,3V #PWR?
U 1 1 55017E29
P 7600 8950
F 0 "#PWR?" H 7600 8910 30  0001 C CNN
F 1 "+3,3V" H 7600 9060 30  0000 C CNN
F 2 "" H 7600 8950 60  0000 C CNN
F 3 "" H 7600 8950 60  0000 C CNN
	1    7600 8950
	0    1    1    0   
$EndComp
$Comp
L +3,3V #PWR?
U 1 1 55017E2F
P 7650 10200
F 0 "#PWR?" H 7650 10160 30  0001 C CNN
F 1 "+3,3V" H 7650 10310 30  0000 C CNN
F 2 "" H 7650 10200 60  0000 C CNN
F 3 "" H 7650 10200 60  0000 C CNN
	1    7650 10200
	0    1    1    0   
$EndComp
$Comp
L GNDA #PWR?
U 1 1 55017E46
P 5550 9050
F 0 "#PWR?" H 5550 9050 40  0001 C CNN
F 1 "GNDA" H 5550 8980 40  0000 C CNN
F 2 "" H 5550 9050 60  0000 C CNN
F 3 "" H 5550 9050 60  0000 C CNN
	1    5550 9050
	0    1    1    0   
$EndComp
$Comp
L GNDA #PWR?
U 1 1 55017E53
P 5550 10250
F 0 "#PWR?" H 5550 10250 40  0001 C CNN
F 1 "GNDA" H 5550 10180 40  0000 C CNN
F 2 "" H 5550 10250 60  0000 C CNN
F 3 "" H 5550 10250 60  0000 C CNN
	1    5550 10250
	0    1    1    0   
$EndComp
$Comp
L GNDA #PWR?
U 1 1 55017E59
P 7650 9850
F 0 "#PWR?" H 7650 9850 40  0001 C CNN
F 1 "GNDA" H 7650 9780 40  0000 C CNN
F 2 "" H 7650 9850 60  0000 C CNN
F 3 "" H 7650 9850 60  0000 C CNN
	1    7650 9850
	0    1    1    0   
$EndComp
$Comp
L GNDA #PWR?
U 1 1 55017E5F
P 7700 11100
F 0 "#PWR?" H 7700 11100 40  0001 C CNN
F 1 "GNDA" H 7700 11030 40  0000 C CNN
F 2 "" H 7700 11100 60  0000 C CNN
F 3 "" H 7700 11100 60  0000 C CNN
	1    7700 11100
	0    1    1    0   
$EndComp
$Comp
L GNDA #PWR?
U 1 1 55017E6F
P 3450 9800
F 0 "#PWR?" H 3450 9800 40  0001 C CNN
F 1 "GNDA" H 3450 9730 40  0000 C CNN
F 2 "" H 3450 9800 60  0000 C CNN
F 3 "" H 3450 9800 60  0000 C CNN
	1    3450 9800
	0    1    1    0   
$EndComp
$Comp
L GNDA #PWR?
U 1 1 55017E75
P 3450 8600
F 0 "#PWR?" H 3450 8600 40  0001 C CNN
F 1 "GNDA" H 3450 8530 40  0000 C CNN
F 2 "" H 3450 8600 60  0000 C CNN
F 3 "" H 3450 8600 60  0000 C CNN
	1    3450 8600
	0    1    1    0   
$EndComp
Wire Wire Line
	14350 9000 15100 9000
Wire Wire Line
	15100 9000 15100 10400
Wire Wire Line
	15100 10400 8900 10400
Wire Wire Line
	8900 10400 8900 10800
Wire Wire Line
	8900 10800 7650 10800
Wire Wire Line
	13550 9000 13000 9000
Wire Wire Line
	13000 9000 13000 10300
Wire Wire Line
	13000 10300 7650 10300
Wire Wire Line
	14350 6550 14800 6550
Wire Wire Line
	14800 6550 14800 7700
Wire Wire Line
	14800 7700 11950 7700
Wire Wire Line
	11950 7700 11950 8550
Wire Wire Line
	11950 8550 6050 8550
Wire Wire Line
	6050 8550 6050 9950
Wire Wire Line
	6050 9950 5500 9950
Wire Wire Line
	14350 6450 14700 6450
Wire Wire Line
	14700 6450 14700 7600
Wire Wire Line
	14700 7600 11850 7600
Wire Wire Line
	11850 7600 11850 8450
Wire Wire Line
	11850 8450 5900 8450
Wire Wire Line
	5900 8450 5900 9450
Wire Wire Line
	5900 9450 5500 9450
Wire Wire Line
	14350 6850 14500 6850
Wire Wire Line
	14500 6850 14500 7450
Wire Wire Line
	14500 7450 11700 7450
Wire Wire Line
	11700 7450 11700 8000
Wire Wire Line
	11700 8000 3750 8000
Wire Wire Line
	3750 8000 3750 9500
Wire Wire Line
	3750 9500 3400 9500
Wire Wire Line
	13550 5750 13250 5750
Wire Wire Line
	13250 5750 13250 7300
Wire Wire Line
	13250 7300 11500 7300
Wire Wire Line
	11500 7300 11500 7950
Wire Wire Line
	11500 7950 3700 7950
Wire Wire Line
	3700 7950 3700 9000
Wire Wire Line
	3700 9000 3400 9000
$Comp
L DGND #PWR?
U 1 1 550183E5
P 1150 5450
F 0 "#PWR?" H 1150 5450 40  0001 C CNN
F 1 "DGND" H 1150 5380 40  0000 C CNN
F 2 "" H 1150 5450 60  0000 C CNN
F 3 "" H 1150 5450 60  0000 C CNN
	1    1150 5450
	1    0    0    -1  
$EndComp
$Comp
L DGND #PWR?
U 1 1 550183FC
P 950 6300
F 0 "#PWR?" H 950 6300 40  0001 C CNN
F 1 "DGND" H 950 6230 40  0000 C CNN
F 2 "" H 950 6300 60  0000 C CNN
F 3 "" H 950 6300 60  0000 C CNN
	1    950  6300
	0    -1   -1   0   
$EndComp
$Comp
L DGND #PWR?
U 1 1 55018413
P 3700 5800
F 0 "#PWR?" H 3700 5800 40  0001 C CNN
F 1 "DGND" H 3700 5730 40  0000 C CNN
F 2 "" H 3700 5800 60  0000 C CNN
F 3 "" H 3700 5800 60  0000 C CNN
	1    3700 5800
	1    0    0    -1  
$EndComp
$Comp
L DGND #PWR?
U 1 1 55018422
P 4500 5500
F 0 "#PWR?" H 4500 5500 40  0001 C CNN
F 1 "DGND" H 4500 5430 40  0000 C CNN
F 2 "" H 4500 5500 60  0000 C CNN
F 3 "" H 4500 5500 60  0000 C CNN
	1    4500 5500
	1    0    0    -1  
$EndComp
$Comp
L DGND #PWR?
U 1 1 55018431
P 4850 5500
F 0 "#PWR?" H 4850 5500 40  0001 C CNN
F 1 "DGND" H 4850 5430 40  0000 C CNN
F 2 "" H 4850 5500 60  0000 C CNN
F 3 "" H 4850 5500 60  0000 C CNN
	1    4850 5500
	1    0    0    -1  
$EndComp
$Comp
L DGND #PWR?
U 1 1 55018440
P 950 2900
F 0 "#PWR?" H 950 2900 40  0001 C CNN
F 1 "DGND" H 950 2830 40  0000 C CNN
F 2 "" H 950 2900 60  0000 C CNN
F 3 "" H 950 2900 60  0000 C CNN
	1    950  2900
	0    -1   -1   0   
$EndComp
$Comp
L DGND #PWR?
U 1 1 5501844F
P 1150 2050
F 0 "#PWR?" H 1150 2050 40  0001 C CNN
F 1 "DGND" H 1150 1980 40  0000 C CNN
F 2 "" H 1150 2050 60  0000 C CNN
F 3 "" H 1150 2050 60  0000 C CNN
	1    1150 2050
	1    0    0    -1  
$EndComp
$Comp
L DGND #PWR?
U 1 1 55018468
P 3700 2400
F 0 "#PWR?" H 3700 2400 40  0001 C CNN
F 1 "DGND" H 3700 2330 40  0000 C CNN
F 2 "" H 3700 2400 60  0000 C CNN
F 3 "" H 3700 2400 60  0000 C CNN
	1    3700 2400
	1    0    0    -1  
$EndComp
$Comp
L DGND #PWR?
U 1 1 55018477
P 4850 2100
F 0 "#PWR?" H 4850 2100 40  0001 C CNN
F 1 "DGND" H 4850 2030 40  0000 C CNN
F 2 "" H 4850 2100 60  0000 C CNN
F 3 "" H 4850 2100 60  0000 C CNN
	1    4850 2100
	1    0    0    -1  
$EndComp
$Comp
L DGND #PWR?
U 1 1 55018486
P 4500 2100
F 0 "#PWR?" H 4500 2100 40  0001 C CNN
F 1 "DGND" H 4500 2030 40  0000 C CNN
F 2 "" H 4500 2100 60  0000 C CNN
F 3 "" H 4500 2100 60  0000 C CNN
	1    4500 2100
	1    0    0    -1  
$EndComp
$Comp
L OPTO-HCPL0531-SO8 U?
U 1 1 55018495
P 7850 5800
F 0 "U?" H 8050 6100 60  0000 C CNN
F 1 "OPTO-HCPL0531-SO8" H 7850 4950 60  0000 C CNN
F 2 "" H 7850 5800 60  0000 C CNN
F 3 "" H 7850 5800 60  0000 C CNN
	1    7850 5800
	-1   0    0    1   
$EndComp
$Comp
L OPTO-HCPL0531-SO8 U?
U 1 1 550184A2
P 7850 7150
F 0 "U?" H 8050 7450 60  0000 C CNN
F 1 "OPTO-HCPL0531-SO8" H 7850 6300 60  0000 C CNN
F 2 "" H 7850 7150 60  0000 C CNN
F 3 "" H 7850 7150 60  0000 C CNN
	1    7850 7150
	-1   0    0    1   
$EndComp
Wire Wire Line
	4350 6900 6900 6900
Wire Wire Line
	6900 6900 6900 7250
Wire Wire Line
	6900 7250 7250 7250
Wire Wire Line
	4350 6800 7200 6800
Wire Wire Line
	7200 6800 7200 6750
Wire Wire Line
	7200 6750 7250 6750
Wire Wire Line
	7000 6500 7000 5900
Wire Wire Line
	7000 5900 7250 5900
Wire Wire Line
	6950 6400 6950 5400
Wire Wire Line
	6950 5400 7250 5400
$Comp
L OPTO-HCPL0531-SO8 U?
U 1 1 55018822
P 7750 2400
F 0 "U?" H 7950 2700 60  0000 C CNN
F 1 "OPTO-HCPL0531-SO8" H 7750 1550 60  0000 C CNN
F 2 "" H 7750 2400 60  0000 C CNN
F 3 "" H 7750 2400 60  0000 C CNN
	1    7750 2400
	-1   0    0    1   
$EndComp
$Comp
L OPTO-HCPL0531-SO8 U?
U 1 1 55018828
P 7750 3700
F 0 "U?" H 7950 4000 60  0000 C CNN
F 1 "OPTO-HCPL0531-SO8" H 7750 2850 60  0000 C CNN
F 2 "" H 7750 3700 60  0000 C CNN
F 3 "" H 7750 3700 60  0000 C CNN
	1    7750 3700
	-1   0    0    1   
$EndComp
Wire Wire Line
	6950 3500 6950 3800
Wire Wire Line
	6950 3800 7150 3800
Wire Wire Line
	6950 3400 6950 3300
Wire Wire Line
	6950 3300 7150 3300
Wire Wire Line
	4350 3100 6750 3100
Wire Wire Line
	6750 3100 6750 2500
Wire Wire Line
	6750 2500 7150 2500
Wire Wire Line
	4350 3000 6650 3000
Wire Wire Line
	6650 3000 6650 2000
Wire Wire Line
	6650 2000 7150 2000
Wire Wire Line
	5400 2900 5400 3600
Wire Wire Line
	5400 3600 5000 3600
Wire Wire Line
	5000 3600 5000 4850
Connection ~ 5400 3300
Connection ~ 5400 6300
Connection ~ 5400 6700
$Comp
L OPTO-HCPL0531-SO8 U?
U 1 1 55019185
P 9350 4750
F 0 "U?" H 9550 5050 60  0000 C CNN
F 1 "OPTO-HCPL0531-SO8" H 9350 3900 60  0000 C CNN
F 2 "" H 9350 4750 60  0000 C CNN
F 3 "" H 9350 4750 60  0000 C CNN
	1    9350 4750
	-1   0    0    1   
$EndComp
Wire Wire Line
	5000 4850 8750 4850
Connection ~ 5400 4850
Wire Wire Line
	5400 4850 5400 6700
$Comp
L CONN_3 K?
U 1 1 55019510
P 10700 1750
F 0 "K?" V 10650 1750 50  0000 C CNN
F 1 "CONN_3" V 10750 1750 40  0000 C CNN
F 2 "~" H 10700 1750 60  0000 C CNN
F 3 "~" H 10700 1750 60  0000 C CNN
	1    10700 1750
	0    -1   -1   0   
$EndComp
$Comp
L CONN_3 K?
U 1 1 5501951F
P 11400 1800
F 0 "K?" V 11350 1800 50  0000 C CNN
F 1 "CONN_3" V 11450 1800 40  0000 C CNN
F 2 "~" H 11400 1800 60  0000 C CNN
F 3 "~" H 11400 1800 60  0000 C CNN
	1    11400 1800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8400 1800 10300 1800
Wire Wire Line
	10300 1800 10300 2250
Wire Wire Line
	10300 2250 10700 2250
Wire Wire Line
	10700 2250 10700 2100
Wire Wire Line
	8400 2600 11400 2600
Wire Wire Line
	11400 2600 11400 2150
$Comp
L CONN_3 K?
U 1 1 550196F6
P 11400 3050
F 0 "K?" V 11350 3050 50  0000 C CNN
F 1 "CONN_3" V 11450 3050 40  0000 C CNN
F 2 "~" H 11400 3050 60  0000 C CNN
F 3 "~" H 11400 3050 60  0000 C CNN
	1    11400 3050
	1    0    0    -1  
$EndComp
$Comp
L CONN_3 K?
U 1 1 55019705
P 11400 3450
F 0 "K?" V 11350 3450 50  0000 C CNN
F 1 "CONN_3" V 11450 3450 40  0000 C CNN
F 2 "~" H 11400 3450 60  0000 C CNN
F 3 "~" H 11400 3450 60  0000 C CNN
	1    11400 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	11050 3450 8650 3450
Wire Wire Line
	8650 3450 8650 3900
Wire Wire Line
	8650 3900 8400 3900
Wire Wire Line
	11050 3050 8400 3050
Wire Wire Line
	8400 3050 8400 3100
$Comp
L POLOLU_A4988 U?
U 1 1 550198E6
P 13000 1150
F 0 "U?" H 13000 1600 60  0000 C CNN
F 1 "POLOLU_A4988" V 13000 1150 50  0000 C CNN
F 2 "" H 13000 1150 60  0000 C CNN
F 3 "" H 13000 1150 60  0000 C CNN
	1    13000 1150
	1    0    0    -1  
$EndComp
$Comp
L POLOLU_A4988 U?
U 1 1 550198F3
P 13000 2500
F 0 "U?" H 13000 2950 60  0000 C CNN
F 1 "POLOLU_A4988" V 13000 2500 50  0000 C CNN
F 2 "" H 13000 2500 60  0000 C CNN
F 3 "" H 13000 2500 60  0000 C CNN
	1    13000 2500
	1    0    0    -1  
$EndComp
$Comp
L OPTO-HCPL0531-SO8 U?
U 1 1 550198F9
P 14900 1800
F 0 "U?" H 15100 2100 60  0000 C CNN
F 1 "OPTO-HCPL0531-SO8" H 14900 950 60  0000 C CNN
F 2 "" H 14900 1800 60  0000 C CNN
F 3 "" H 14900 1800 60  0000 C CNN
	1    14900 1800
	-1   0    0    1   
$EndComp
$Comp
L OPTO-HCPL0531-SO8 U?
U 1 1 550198FF
P 15000 3100
F 0 "U?" H 15200 3400 60  0000 C CNN
F 1 "OPTO-HCPL0531-SO8" H 15000 2250 60  0000 C CNN
F 2 "" H 15000 3100 60  0000 C CNN
F 3 "" H 15000 3100 60  0000 C CNN
	1    15000 3100
	-1   0    0    1   
$EndComp
Wire Wire Line
	13600 800  14050 800 
Wire Wire Line
	14050 800  14050 1400
Wire Wire Line
	14050 1400 14300 1400
Wire Wire Line
	13600 900  13950 900 
Wire Wire Line
	13950 900  13950 1900
Wire Wire Line
	13950 1900 14300 1900
Wire Wire Line
	13600 2150 14200 2150
Wire Wire Line
	14200 2150 14200 2700
Wire Wire Line
	14200 2700 14400 2700
Wire Wire Line
	13600 2250 14100 2250
Wire Wire Line
	14100 2250 14100 3200
Wire Wire Line
	14100 3200 14400 3200
Wire Wire Line
	8550 4850 8550 5100
Wire Wire Line
	8550 5100 12400 5100
Wire Wire Line
	12400 5100 12400 3700
Wire Wire Line
	13800 3700 12400 3700
Wire Wire Line
	13800 1500 13800 3700
Wire Wire Line
	13800 2850 13600 2850
Connection ~ 8550 4850
Wire Wire Line
	13800 1500 13600 1500
Connection ~ 13800 2850
$EndSCHEMATC
