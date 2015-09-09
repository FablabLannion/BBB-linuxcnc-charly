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
EELAYER 27 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "noname.sch"
Date "21 dec 2013"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L +5V #PWR01
U 1 1 52B5FA59
P 2250 3700
F 0 "#PWR01" H 2250 3790 20  0001 C CNN
F 1 "+5V" H 2250 3790 30  0000 C CNN
F 2 "" H 2250 3700 60  0000 C CNN
F 3 "" H 2250 3700 60  0000 C CNN
	1    2250 3700
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR02
U 1 1 52B5FA77
P 2250 3500
F 0 "#PWR02" H 2250 3500 30  0001 C CNN
F 1 "GND" H 2250 3430 30  0001 C CNN
F 2 "" H 2250 3500 60  0000 C CNN
F 3 "" H 2250 3500 60  0000 C CNN
	1    2250 3500
	0    1    1    0   
$EndComp
$Comp
L DB25 J2
U 1 1 52B5FB03
P 7750 2250
F 0 "J2" H 7800 3600 70  0000 C CNN
F 1 "DB25" H 7700 900 70  0000 C CNN
F 2 "" H 7750 2250 60  0000 C CNN
F 3 "" H 7750 2250 60  0000 C CNN
	1    7750 2250
	0    -1   -1   0   
$EndComp
$Comp
L DB25 J1
U 1 1 52B5FB13
P 4900 2250
F 0 "J1" H 4950 3600 70  0000 C CNN
F 1 "DB25" H 4850 900 70  0000 C CNN
F 2 "" H 4900 2250 60  0000 C CNN
F 3 "" H 4900 2250 60  0000 C CNN
	1    4900 2250
	0    -1   -1   0   
$EndComp
$Comp
L RJ45 J5
U 1 1 52B5FB4D
P 7350 4600
F 0 "J5" H 7550 5100 60  0000 C CNN
F 1 "RJ45" H 7200 5100 60  0000 C CNN
F 2 "" H 7350 4600 60  0000 C CNN
F 3 "" H 7350 4600 60  0000 C CNN
	1    7350 4600
	-1   0    0    1   
$EndComp
$Comp
L RJ45 J4
U 1 1 52B5FC63
P 8700 4600
F 0 "J4" H 8900 5100 60  0000 C CNN
F 1 "RJ45" H 8550 5100 60  0000 C CNN
F 2 "" H 8700 4600 60  0000 C CNN
F 3 "" H 8700 4600 60  0000 C CNN
	1    8700 4600
	-1   0    0    1   
$EndComp
$Comp
L RJ45 J3
U 1 1 52B5FC69
P 9750 4650
F 0 "J3" H 9950 5150 60  0000 C CNN
F 1 "RJ45" H 9600 5150 60  0000 C CNN
F 2 "" H 9750 4650 60  0000 C CNN
F 3 "" H 9750 4650 60  0000 C CNN
	1    9750 4650
	-1   0    0    1   
$EndComp
$Comp
L CONN_2 P1
U 1 1 52B5FCB8
P 2800 3600
F 0 "P1" V 2750 3600 40  0000 C CNN
F 1 "alim" V 2850 3600 40  0000 C CNN
F 2 "" H 2800 3600 60  0000 C CNN
F 3 "" H 2800 3600 60  0000 C CNN
	1    2800 3600
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR03
U 1 1 52B5FCE8
P 4600 3950
F 0 "#PWR03" H 4600 4040 20  0001 C CNN
F 1 "+5V" H 4600 4040 30  0000 C CNN
F 2 "" H 4600 3950 60  0000 C CNN
F 3 "" H 4600 3950 60  0000 C CNN
	1    4600 3950
	0    -1   -1   0   
$EndComp
$Comp
L GND #PWR04
U 1 1 52B5FCEE
P 4600 3850
F 0 "#PWR04" H 4600 3850 30  0001 C CNN
F 1 "GND" H 4600 3780 30  0001 C CNN
F 2 "" H 4600 3850 60  0000 C CNN
F 3 "" H 4600 3850 60  0000 C CNN
	1    4600 3850
	0    1    1    0   
$EndComp
$Comp
L CONN_3 K1
U 1 1 52B5FD20
P 5550 3550
F 0 "K1" V 5500 3550 50  0000 C CNN
F 1 "ctrl-X" V 5600 3550 40  0000 C CNN
F 2 "" H 5550 3550 60  0000 C CNN
F 3 "" H 5550 3550 60  0000 C CNN
	1    5550 3550
	0    1    1    0   
$EndComp
$Comp
L CONN_3 K2
U 1 1 52B5FD2D
P 5050 3550
F 0 "K2" V 5000 3550 50  0000 C CNN
F 1 "ctrl-Y" V 5100 3550 40  0000 C CNN
F 2 "" H 5050 3550 60  0000 C CNN
F 3 "" H 5050 3550 60  0000 C CNN
	1    5050 3550
	0    1    1    0   
$EndComp
$Comp
L CONN_3 K3
U 1 1 52B5FD33
P 4550 3550
F 0 "K3" V 4500 3550 50  0000 C CNN
F 1 "ctrl-Z" V 4600 3550 40  0000 C CNN
F 2 "" H 4550 3550 60  0000 C CNN
F 3 "" H 4550 3550 60  0000 C CNN
	1    4550 3550
	0    1    1    0   
$EndComp
$Comp
L CONN_3 K4
U 1 1 52B5FD39
P 4050 3550
F 0 "K4" V 4000 3550 50  0000 C CNN
F 1 "ctrl-" V 4100 3550 40  0000 C CNN
F 2 "" H 4050 3550 60  0000 C CNN
F 3 "" H 4050 3550 60  0000 C CNN
	1    4050 3550
	0    1    1    0   
$EndComp
Wire Wire Line
	2250 3500 2450 3500
Wire Wire Line
	2250 3700 2450 3700
Wire Wire Line
	4600 3850 10000 3850
Wire Wire Line
	4600 3950 10100 3950
Wire Wire Line
	6100 2700 6100 3200
Wire Wire Line
	6100 3200 5650 3200
Wire Wire Line
	5900 2700 5900 3150
Wire Wire Line
	5900 3150 5550 3150
Wire Wire Line
	5550 3150 5550 3200
Wire Wire Line
	5700 2700 5700 3100
Wire Wire Line
	5700 3100 5450 3100
Wire Wire Line
	5450 3100 5450 3200
Wire Wire Line
	5500 2700 5500 3150
Wire Wire Line
	5500 3150 5150 3150
Wire Wire Line
	5150 3150 5150 3200
Wire Wire Line
	5300 2700 5300 3100
Wire Wire Line
	5300 3100 5050 3100
Wire Wire Line
	5050 3100 5050 3200
Wire Wire Line
	5100 2700 5100 3150
Wire Wire Line
	5100 3150 4950 3150
Wire Wire Line
	4950 3150 4950 3200
Wire Wire Line
	4900 2700 4900 3150
Wire Wire Line
	4900 3150 4650 3150
Wire Wire Line
	4650 3150 4650 3200
Wire Wire Line
	4700 2700 4700 3100
Wire Wire Line
	4700 3100 4550 3100
Wire Wire Line
	4550 3100 4550 3200
Wire Wire Line
	4500 2700 4500 3150
Wire Wire Line
	4500 3150 4450 3150
Wire Wire Line
	4450 3150 4450 3200
Wire Wire Line
	6000 2700 6000 3050
Wire Wire Line
	6000 3050 4150 3050
Wire Wire Line
	4150 3050 4150 3200
Wire Wire Line
	5600 2700 5600 3000
Wire Wire Line
	5600 3000 4050 3000
Wire Wire Line
	4050 3000 4050 3200
Wire Wire Line
	5400 2700 5400 2950
Wire Wire Line
	5400 2950 3950 2950
Wire Wire Line
	3950 2950 3950 3200
Wire Wire Line
	7700 3950 7700 4150
Wire Wire Line
	9050 3950 9050 4150
Connection ~ 7700 3950
Wire Wire Line
	10100 3950 10100 4200
Connection ~ 9050 3950
Wire Wire Line
	7600 3850 7600 4150
Wire Wire Line
	8950 3850 8950 4150
Connection ~ 7600 3850
Wire Wire Line
	10000 3850 10000 4200
Connection ~ 8950 3850
Wire Wire Line
	8750 2700 8750 3750
Wire Wire Line
	8750 3750 9900 3750
Wire Wire Line
	9900 3750 9900 4200
Wire Wire Line
	8550 2700 8550 3700
Wire Wire Line
	8550 3700 9800 3700
Wire Wire Line
	9800 3700 9800 4200
Wire Wire Line
	7950 2700 7950 4050
Wire Wire Line
	7950 4050 8850 4050
Wire Wire Line
	8850 4050 8850 4150
Wire Wire Line
	7750 2700 7750 3800
Wire Wire Line
	7750 3800 8600 3800
Wire Wire Line
	8600 3800 8600 4000
Wire Wire Line
	8600 4000 8750 4000
Wire Wire Line
	8750 4000 8750 4150
Wire Wire Line
	7150 2700 7150 4050
Wire Wire Line
	7150 4050 7500 4050
Wire Wire Line
	7500 4050 7500 4150
Wire Wire Line
	6950 2700 6950 3750
Wire Wire Line
	6950 3750 7400 3750
Wire Wire Line
	7400 3750 7400 4150
Wire Wire Line
	9200 5000 9200 5300
Wire Wire Line
	9200 5300 5100 5300
Wire Wire Line
	5100 5300 5100 3850
Connection ~ 5100 3850
Wire Wire Line
	6800 4950 6800 5300
Connection ~ 6800 5300
Wire Wire Line
	8100 4950 8100 5300
Connection ~ 8100 5300
Wire Wire Line
	8100 4950 8150 4950
$EndSCHEMATC
