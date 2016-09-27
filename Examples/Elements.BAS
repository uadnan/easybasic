3 CLEAR
5 REM Copyright (C) Pierre Baradat 1983 for IBM
7 REM Special thanks to Rodney Elin
10 KEY OFF:CLS:COLOR 10,0
15 PRINT "                     Periodic Table Of The Elements"
20 LOCATE 3,10:PRINT " H                                                  He    "
30 LOCATE 5,10:PRINT " Li Be                               B  C  N  O  F  Ne "
35 LOCATE 5,46:PRINT CHR$(179):LOCATE 6,46:PRINT CHR$(192)+STRING$(2,196)+CHR$(191)
40 LOCATE 7,10:PRINT " Na Mg                               Al Si P  S  Cl Ar "
45 LOCATE 7,49:PRINT CHR$(179)
50 LOCATE 9,10:PRINT " K  Ca Sc Ti V  Cr Mn Fe Co Ni Cu Zn Ga Ge As Se Br Kr"
55 LOCATE 8,49:PRINT CHR$(192)+STRING$(2,196)+CHR$(191)
60 LOCATE 11,10:PRINT " Rb Sr Y  Zr Nb Mo Tc Ru Rh Pd Ag Cd In Sn Sb Te I  Xe"
65 LOCATE 9,52:PRINT CHR$(179)
70 LOCATE 13,10:PRINT " Cs Ba La"+CHR$(179)+"Hf Ta W  Re Os Ir Pt Au Hg Tl Pb Bi Po At Rn"
75 LOCATE 10,52:PRINT CHR$(192)+STRING$(2,196)+CHR$(191)
80 LOCATE 15,10:PRINT " Fr Ra Ac"+CHR$(179)+"Kh Ha E1O6 E1O7 E1O8* E1O9**"
85 LOCATE 11,55:PRINT CHR$(179)
90 LOCATE 18,22:PRINT " Ce Pr Nd Pm Sm Eu Gd Tb Dy Ho Er Tm Yb Lu"
95 LOCATE 12,55:PRINT CHR$(192)+STRING$(2,196)+CHR$(191)
100 LOCATE 20,22:PRINT " Th Pa U  Np Pu Am Cm Bk Cf Es Fm Md No Lw"
105 LOCATE 13,58:PRINT CHR$(179):LOCATE 14,58:PRINT CHR$(192)+STRING$(2,196)
110 LOCATE 22,10:PRINT " * - Undiscovered."
120 LOCATE 23,10:PRINT " ** - Discovered August 29, 1982."
130 LOCATE 17,10:PRINT "Lanthanide":LOCATE 18,12:PRINT "Series:"
140 LOCATE 19,11:PRINT "Actinide":LOCATE 20,12:PRINT "Series:"
160 GOTO 1310
170 DATA 1,1.00797,"H","Hydrogen","Alkali Metals"
180 DATA 2,4.0026,"He","Helium","Noble Gases"
190 DATA 3,6.939,"Li","Lithium","Alkali Metals"
200 DATA 4,9.0122,"Be","Beryllium","Alkaline Earth Metals"
210 DATA 5,10.811,"B","Boron","Boron Family"
220 DATA 6,12.01115,"C","Carbon","Carbon Family"
230 DATA 7,14.0067,"N","Nitrogen","Nitrogen Family"
240 DATA 8,15.9994,"O","Oxygen","Oxygen Family"
250 DATA 9,18.9984,"F","Fluorine","Halogens"
260 DATA 10,20.183,"Ne","Neon","Noble Gases"
270 DATA 11,22.9898,"Na","Sodium","Alkali Metals"
280 DATA 12,24.312,"Mg","Magnesium","Alkaline Earth Metals"
290 DATA 13,26.9815,"Al","Aluminum","Boron Family"
300 DATA 14,28.086,"Si","Silicon","Carbon Family"
310 DATA 15,30.9738,"P","Phosphorus","Nitrogen Family"
320 DATA 16,32.064,"S","Sulfur","Oxygen Family"
330 DATA 17,35.453,"Cl","Chlorine","Halogens"
340 DATA 18,39.948,"Ar","Argon","Noble Gases"
350 DATA 19,39.102,"K","Potassium","Alkali Metals"
360 DATA 20,40.08,"Ca","Calcium","Alkaline Earth Metals"
370 DATA 21,44.956,"Sc","Scandium","Transition Elements"
380 DATA 22,47.9,"Ti","Titanium","Transition Elements"
390 DATA 23,50.942,"V","Vanadium","Transition Elements"
400 DATA 24,51.996,"Cr","Chromium","Transition Elements"
410 DATA 25,54.938,"Mn","Manganese","Transition Elements"
420 DATA 26,55.847,"Fe","Iron","Transition Elements"
430 DATA 27,58.9332,"Co","Cobalt","Transition Elements"
440 DATA 28,58.71,"Ni","Nickel","Transition Elements"
450 DATA 29,63.54,"Cu","Copper","Transition Elements"
460 DATA 30,65.37,"Zn","Zinc","Transition Elements"
470 DATA 31,69.72,"Ga","Gallium","Boron Family"
480 DATA 32,72.59,"Ge","Germanium","Carbon Family"
490 DATA 33,74.9216,"As","Arsenic","Nitrogen Family"
500 DATA 34,78.96,"Se","Selenium","Oxygen Family"
510 DATA 35,79.909,"Br","Bromine","Halogens"
520 DATA 36,83.8,"Kr","Krypton","Noble Gases"
530 DATA 37,85.47,"Rb","Rubidium","Alkali Metals"
540 DATA 38,87.62,"Sr","Strontium","Alkaline Earth Metals"
550 DATA 39,88.905,"Y","Yttrium","Transition Elements"
560 DATA 40,91.22,"Zr","Zirconium","Transition Elements"
570 DATA 41,92.906,"Nb","Niobium","Transition Elements"
580 DATA 42,95.94,"Mo","Molybdenum","Transition Elements"
590 DATA 43,98,"Tc","Technetium","Transition Elements"
600 DATA 44,101.07,"Ru","Ruthenium","Transition Elements"
610 DATA 45,102.905,"Rh","Rhodium","Transition Elements"
620 DATA 46,106.4,"Pd","Palladium","Transition Elements"
630 DATA 47,107.87,"Ag","Silver","Transition Elements"
640 DATA 48,112.4,"Cd","Cadmium","Transition Elements"
650 DATA 49,114.82,"In","Indium","Boron Family"
660 DATA 50,118.69,"Sn","Tin","Carbon Family"
670 DATA 51,121.75,"Sb","Antimony","Nitrogen Family"
680 DATA 52,127.6,"Te","Tellurium","Oxygen Family"
690 DATA 53,126.9044,"I","Iodine","Halogens"
700 DATA 54,131.3,"Xe","Xenon","Noble Gases"
710 DATA 55,132.905,"Cs","Cesium","Alkali Metals"
720 DATA 56,137.34,"Ba","Barium","Alkaline Earth Metals"
730 DATA 57,138.91,"La","Lanthanum","Transition Elements"
740 DATA 58,140.12,"Ce","Cerium","Lanthanide Series"
750 DATA 59,140.907,"Pr","Praseodymium","Lanthanide Series"
760 DATA 60,144.24,"Nd","Neodymium","Lanthanide Series"
770 DATA 61,147,"Pm","Promethium","Lanthanide Series"
780 DATA 62,150.35,"Sm","Samarium","Lanthanide Series"
790 DATA 63,151.96,"Eu","Europium","Lanthanide Series"
800 DATA 64,157.25,"Gd","Gadolinium","Lanthanide Series"
810 DATA 65,158.924,"Tb","Terbium","Lanthanide Series"
820 DATA 66,162.5,"Dy","Dysprosium","Lanthanide Series"
830 DATA 67,164.93,"Ho","Holmium","Lanthanide Series"
840 DATA 68,167.26,"Er","Erbium","Lanthanide Series"
850 DATA 69,168.934,"Tm","Thulium","Lanthanide Series"
860 DATA 70,173.04,"Yb","Ytterbium","Lanthanide Series"
870 DATA 71,174.97,"Lu","Lutetium","Lanthanide Series"
880 DATA 72,178.49,"Hf","Hafnium","Transition Elements"
890 DATA 73,180.948,"Ta","Tantalum","Transition Elements"
900 DATA 74,183.85,"W","Tungsten","Transition Elements"
910 DATA 75,186.2,"Re","Rhenium","Transition Elements"
920 DATA 76,190.2,"Os","Osmium","Transition Elements"
930 DATA 77,192.2,"Ir","Iridium","Transition Elements"
940 DATA 78,195.09,"Pt","Platinum","Transition Elements"
950 DATA 79,196.967,"Au","Gold","Transition Elements"
960 DATA 80,200.59,"Hg","Mercury","Transition Elements"
970 DATA 81,204.37,"Tl","Thallium","Boron Family"
980 DATA 82,207.19,"Pb","Lead","Carbon Family"
990 DATA 83,208.98,"Bi","Bismuth","Nitrogen Family"
1000 DATA 84,210,"Po","Polonium","Oxygen Family"
1010 DATA 85,210,"At","Astatine","Halogens"
1020 DATA 86,222,"Rn","Radon","Noble Gases"
1030 DATA 87,223,"Fr","Francium","Alkali Metals"
1040 DATA 88,226,"Ra","Radium","Alkaline Earth Metals"
1050 DATA 89,227,"Ac","Actinium","Transition Elements"
1060 DATA 90,232.04,"Th","Thorium","Actinide Series"
1070 DATA 91,231,"Pa","Protactinium","Actinide Series"
1080 DATA 92,238.03,"U","Uranium","Actinide Series"
1090 DATA 93,237,"Np","Neptunium","Actinide Series"
1100 DATA 94,242,"Pu","Plutonium","Actinide Series"
1110 DATA 95,243,"Am","Americium","Actinide Series"
1120 DATA 96,247,"Cm","Curium","Actinide Series"
1130 DATA 97,247,"Bk","Berkelium","Actinide Series"
1140 DATA 98,249,"Cf","Californium","Actinide Series"
1150 DATA 99,254,"Es","Einsteinium","Actinide Series"
1160 DATA 100,253,"Fm","Fermium","Actinide Series"
1170 DATA 101,256,"Md","Mendelevium","Actinide Series"
1180 DATA 102,254,"No","Nobelium","Actinide Series"
1190 DATA 103,257,"Lw","Lawrencium","Actinide Series"
1200 DATA 104,260,"Kh","Kurchatovium","Transition Elements"
1210 DATA 105,260,"Ha","Hahnium","Transition Elements"
1220 DATA 106,0,"Symbol Unknown","Name Unknown","Transition Elements"
1230 DATA 107,0,"Symbol Unknown","Name Unknown","Transition Elements"
1240 DATA 108,0,"Symbol Unknown","Undiscovered","Probably Transition Elements"
1250 DATA 109,0,"Symbol Unknown","Name Unknown","Transition Elements"
1310 DIM X$(109,5),X(109,5)
1320 FOR L=1 TO 109
1330 READ X(L,1),X(L,2),X$(L,3),X$(L,4),X$(L,5)
1340 NEXT
1350 A$=INKEY$:IF A$="" THEN 1350
1400 REM Elements
1420 CLS
1430 REM Insert instructions here
1440 REM Elements
1480 CLS:LOCATE 6,20:PRINT "What would you like to search by?"
1490 LOCATE 9,22:PRINT "   [1]  Atomic Number."
1500 LOCATE 11,22:PRINT "   [2]  Atomic Weight."
1510 LOCATE 13,22:PRINT "   [3]  Element Name."
1520 LOCATE 15,22:PRINT "   [4]  Element Symbol."
1530 LOCATE 17,22:PRINT "   [5]  Element Family."
1540 P$=INKEY$:IF P$="" THEN 1540
1560 P = VAL (P$):IF P < 1 OR P > 5 THEN 1540
1570 PRINT P
1580 ON P GOTO 1595,1755,1895,1946,1967
1590 GOTO 1600
1595 CLS
1600 LOCATE 12:LINE INPUT "Enter Atomic Number:  ";M$:M=VAL(M$)
1610 IF M<1 OR M>109 THEN CLS:LOCATE 14:PRINT "Invalid choice, try again.":GOTO 1590
1620 GOSUB 1640
1630 GOTO 1400
1640 CLS:LOCATE 4:PRINT "Element:",X$(M,4)
1645 IF X$(M,4) = "" THEN LOCATE 4,16:PRINT "Name Unknown"
1650 LOCATE 8:PRINT "Symbol:",X$(M,3)
1655 IF X$(M,3) = "" THEN LOCATE 8,16:PRINT "Symbol Unknown"
1660 LOCATE 12:PRINT "Number:",X(M,1)
1665 IF X(M,1) = 0 THEN LOCATE 12,16:PRINT "Number Unknown"
1670 IF X(M,2) = 0 THEN 1680
1680 LOCATE 16:PRINT "Weight:",X(M,2)
1685 IF X(M,2) = 0 THEN LOCATE 16,16:PRINT "Weight Unknown"
1690 GOTO 1710
1700 LOCATE 16:PRINT "Weight:","Unstable Element"
1710 IF X$(M,5) = "LAN" THEN X$(M,5) = "Lanthanide Series."
1720 IF X$(M,5) = "ACT" THEN X$(M,5) = "Actinide Series."
1730 LOCATE 20:PRINT "Family:",X$(M,5)
1735 IF X$(M,5) = "" THEN LOCATE 20,16:PRINT "Family Unknown"
1740 GOSUB 2565
1750 RETURN
1755 CLS
1760 LOCATE 12:LINE INPUT "Enter Atomic Weight:  ";N2$:N2=VAL(N2$)
1765 IF N2<=0 OR N2>260 THEN CLS:LOCATE 14:PRINT "Invalid choice, try again.":GOTO 1760
1770 N2 = INT (N2)
1780 N1 = N2 - 1:N3 = N2 + 1
1790 FOR N = 1 TO 109
1800 IF INT(X(N,2)) = N1 THEN M = N:GOSUB 1640
1810 IF INT(X(N,2)) = N2 THEN M = N:GOSUB 1640
1820 IF INT(X(N,2)) = N3 THEN M = N:GOSUB 1640
1830 NEXT
1840 GOTO 1400
1870 IF X$(N,4) = N$ THEN M = N:GOTO 1890
1880 NEXT
1883 CLEAR
1885 GOTO 1400
1890 GOSUB 1640
1895 CLS
1910 LOCATE 12:LINE INPUT "Enter Element Name:  ";N$
1920 FOR N = 1 TO 109
1930 IF X$(N,4) = N$ THEN M = N
1940 NEXT
1945 GOTO 1640
1946 CLS
1947 LOCATE 12:LINE INPUT "Enter Element Symbol:  ";N$
1950 FOR N = 1 TO 109
1955 IF X$(N,3) = N$ THEN M = N
1960 NEXT
1965 GOTO 1640
1967 CLS
1970 LOCATE 12:LINE INPUT "Enter Element Family:  ";N$
1975 CLS:LOCATE 7,5:PRINT N$
1980 PRINT:PRINT
1990 FOR N = 1 TO 109
2000 IF X$(N,5) <> N$ THEN PRINT CHR$(30)
2010 IF X$(N,5) = N$ THEN PRINT X$(N,3)"   "X$(N,4)"   "X(N,1)"   "X(N,2)
2020 NEXT:GOTO 2565
2565 A$=INKEY$:IF A$="" THEN 2565
2585 CLS:LOCATE 8,30:PRINT "What do you want to do?"
2587 LOCATE 11,30:PRINT "S - See Periodic Table."
2590 LOCATE 13,30:PRINT "C - Choose Again."
2595 LOCATE 15,30:PRINT "E - Exit Program."
2600 A$=INKEY$:IF A$ = "" THEN GOTO 2600
2610 IF A$ = "s" THEN GOTO 3
2620 IF A$ = "c" THEN GOTO 1420
2630 IF A$ = "e" THEN GOTO 2640
2640 CLS:LOCATE 12,26:PRINT "Do you want to go to samples?"
2660 B$=INKEY$:IF B$ = "" THEN 2660
2670 IF B$ = "y" THEN CHAIN "SAMPLES"