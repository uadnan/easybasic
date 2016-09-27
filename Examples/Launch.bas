10 DIM A(100),A0(100),A1(7),A2(7),A3(6),A4(6)
20 CLS:PRINT "Design and orbit a space ship.  Enter the number of stages up to 6  ";
30 INPUT A5
40 PRINT:PRINT "Verification,";A5;"stages."
50 A6=A5+1
60 PRINT:PRINT "Enter Iteration Time in seconds and Orbit Height in miles."
70 PRINT ".1 seconds is OK and .01 better, but takes more CPU time. ";
80 INPUT A7,A8
90 PRINT:PRINT "Verification, Iteration Time";A7;"seconds, Orbit Height";A8;"miles."
100 PRINT:PRINT "Enter Payload weight in pounds:  ";
110 INPUT A2(A6)
120 A1(A6)=0
130 PRINT:PRINT "Verification, Payload weight";A2(A6);"pounds."
140 FOR A9=1 TO A5
150 B=A6-A9
160 B0=B+1
170 PRINT:PRINT "Enter stage";B;"fuel and hull weights in pounds ";
180 INPUT A1(B),A2(B)
190 PRINT:PRINT "Stage";B;":  Fuel";A1(B);"pounds, Hull";A2(B);"pounds."
200 A2(B)=A2(B)+A2(B0)+A1(B0)
210 B1=A2(B)+A1(B)
220 PRINT:PRINT "Enter stage";B;"thrust; at least";B1;"pounds.";
230 INPUT A3(B)
240 PRINT:PRINT "Stage";B;"thrust";A3(B);"pounds."
250 PRINT:PRINT "Enter Specific Impulse of stage";B;"fuel oxidizer."
260 PRINT "This is the thrust-to-burn rate ratio."
270 PRINT "For Gasoline = 250, Peroxide = 300, Liquid Hydrogen = 500 ";
280 INPUT A4(B)
290 PRINT:PRINT "Verification, stage";B;"Specific Impulse";A4(B);"."
300 NEXT A9
310 B2=10
320 B3=B2*A7
330 B4=360
340 B5=B3/100
350 B6=5280*.3048
360 B7=6.67E-11*5.983E+24
370 B8=ATN(1)/45
380 B9=90
390 C=1
400 C0=SQR(B7/9.80665)
410 C1=C0
420 C2=SQR(B7/(C0+B6*A8))/.3048
430 C3=0
440 C4=0
450 C5=0
460 C6=0
470 C7=0
480 C8=0
490 C9=0
500 D=0
510 D0=0
520 D1=0
530 D2=0
540 D3=0
550 PRINT:PRINT "The ship can swivel";B2;"degrees/second."
560 PRINT "Earth's gravity is 32.174 feet/sec/sec."
570 PRINT "Forward velocity needed for orbit is";C2;"feet/sec."
580 D=D+1
590 D4=A2(D)/2.2046
600 D5=A3(D)/A4(D)/2.2046
610 D6=A1(D)/2.2046
620 D7=D6
630 D8=A3(D)/2.2046*9.80665
640 PRINT:PRINT "Ignition of stage";D;".  Enter the stage number:  ";
645 INPUT X1
650 GOTO 1090
660 PRINT "Enter Throttle Setting in %  from 0 to 100,"
670 PRINT "Thrust angle in degrees from -";B4;"to";B4;"
680 PRINT "And burn time in seconds";
690 INPUT D9,E,E0
700 D9=ABS(D9/100)
710 E1=D9*D8
720 E2=D9*D5*A7
730 E3=E2/100
740 E4=E0-(A7/100)
750 E5=C5*C1
760 E6=0
770 IF E0=0 THEN 1080
780 IF C1<C0 THEN 1080
790 E6=E6+A7
800 E7=D7-E2
810 E8=E1/(D4+(D7+E7)/2)
820 IF E7=>E3 THEN 850
830 E7=0
840 E8=0
850 IF ABS(E-B9)<B5 THEN 930
860 IF E<B9 THEN 890
870 B9=B9+B3
880 GOTO 900
890 B9=B9-B3
900 E9=B9*B8
910 C4=COS(E9)
920 C=SIN(E9)
930 F=E8*C4
940 F0=E8*C
950 F1=C5+F*A7
960 C6=(C5+F1)/2
970 C7=C7+C6*A7
980 F2=F0+C6*2/C1-B7/C1*2
990 F3=C8+F2*A7
1000 F4=C1+(C8+F3)/2*A7
1010 IF D9<>0 THEN 1030
1020 F1=E5/F4
1030 D7=E7
1040 C5=F1
1050 C8=F3
1060 C1=F4
1070 IF E6<E4 THEN 770
1080 C3=C3+E6
1090 D2=D2+1
1100 A(D2)=(C1-C0)/.3048
1110 IF C9=>A(D2) THEN 1130
1120 C9=A(D2)
1130 IF A(D2)=>0 THEN 1150
1140 A(D2)=0
1150 IF A(D2)<400000! THEN 1170
1160 D3=D3+1
1170 F5=A(D2)/5280
1180 F6=C8/.3048
1190 F7=F6*15/22
1200 F8=C5/.3048
1210 F9=F8*15/22
1220 A0(D2)=C7/B6
1230 G=100*D7/D6
1240 G0=D7/D5
1250 G1=B7/C1*2-C6*2/C1
1260 G2=D8/(D4+D7)/.3048
1270 G3=G2*15/22
1280 G4=G2-(G1/.3048)
1290 G5=G4*15/22
1300 G6=G1/.3048/G2
1310 G7=100*G6
1320 G8=90
1330 IF G6=>1 THEN 1350
1340 G8=ATN(G6/SQR(1-G6*2))/B8
1350 G9=SQR(ABS(B7/C1))/.3048
1360 H=100*F8/C2
1370 H0=100*A(D2)/(A8*5280)
1380 H1=100*F8/G9
1390 H2=(C2-F8)/G2
1400 H3=(G9-F8)/G2
1410 IF F6=0 THEN 1440
1420 H4=(A8*5280-A(D2))/F6
1430 IF H4<=9999.99 THEN 1460
1440 H4=9999.99
1450 REM Times over 9999.99 set to 9999.99 to not exceed display."
1460 IF D3<>1 THEN 1480
1470 PRINT:PRINT "4OOK feet achieved, you are in vacuum."
1480 PRINT "Flight time","Fuel left","At full throttle","Ship angle"
1490 PRINT C3;"Sec,",G;"%",G0;"sec,",B9;"degrees"
1500 PRINT "  "
1510 PRINT "Altitude","Ascent rate","Forward V.","Range"
1520 PRINT A(D2);"Feet",F6;"feet/sec",F8;"feet/sec",A0(D2);"miles"
1530 PRINT F5;"miles",F7;"miles/hour",F9;"miles/hour"
1540 PRINT "  "
1550 PRINT "Max accel","Max vert accel","Angle(C.A.)","Throt(C.A.)"
1560 REM Angle(C.A.), Critical Angle for constant ascent at full throttle.
1570 REM Throttle(C.A.), Critical throttle of constant ascent at 90 degrees.
1580 PRINT INT(G2);"feet/sec/sec",INT(G4);"feet/sec/sec","Full throttle","Vertical Position"
1590 PRINT INT(G3);"miles/hour/sec",INT(G5);"miles/hour/sec",INT(G8);"degrees",INT(G7);"%"
1600 PRINT "  "
1610 PRINT H;"%  Orbital velocity",H0;"%  Orbital height."
1620 PRINT H1;"%  Velocity needed for orbit at current altitude."
1630 PRINT "  "
1640 PRINT " "," ","Time to achieve:"
1650 PRINT "Orb. Alt.","Orb. Vel.","Cur. Alt. Orb. Vel."
1660 PRINT "At Cur. Rate","At full throt.","At full throt."
1670 PRINT INT(H4);"Sec.",INT(H2);"Sec.",INT(H3);"Sec."
1680 PRINT "  "
1690 IF H<100 THEN 1760
1700 IF H0<100 THEN 1760
1710 D0=D0+1
1720 IF D0>1 THEN 1760
1730 PRINT:PRINT "In desired orbit.  To continue enter 1, to plot enter 2  ";
1740 INPUT H5
1750 IF H5=2 THEN 1920
1760 IF C3=0 THEN 660
1770 IF D7<=E3 THEN 1800
1780 IF A(D2)<0 THEN 1800
1790 GOTO 660
1800 IF A(D2)=0 THEN 1890
1810 IF D<A5 THEN 580
1820 D1=D1+1
1830 IF D1<>1 THEN 1850
1840 PRINT:PRINT "Last stage shutdown."
1850 IF D0<>0 THEN 1880
1860 IF A(D2)<=0 THEN 1880
1870 GOTO 660
1880 IF A(D2)>0 THEN 1920
1890 H6=INT(SQR(F6*2+F8*2)+.5)
1900 H7=INT(SQR(F7*2+F9*2)+.5)
1910 PRINT:PRINT "You crashed at";H6;"feet/second,";H7;"miles/hour"
1920 PRINT "after";D2;"plot points:"
1930 FOR H8=1 TO D2
1940 REM Plot A(H8) Y-Axis, VS. A0(H8) X-Axis, Altitude VS. Range.
1950 NEXT H8
1960 H9=25
1970 REM Lower 25% cutoff of altitude for a blowup plot.
1980 I=C9*H9/100*1.0001
1990 I0=D2+1
2000 I0=I0-1
2010 IF A(I0)>I THEN 2000
2020 I1=100*A0(I0)/A0(D2)
2030 PRINT:PRINT "Lower";H9;"%  or";I;"miles of maximum altitude attained."
2040 PRINT "First";I1;"%  or";A0(I0);"miles of total range."
2050 PRINT "With";I0;"steps:"
2060 FOR I2=1 TO I0
2070 REM Plot A(I2) Y-Axis, VS. A0(I2) X-Axis, Lower altitude VS. range.
2080 NEXT I2
2090 END