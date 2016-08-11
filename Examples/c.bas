1 ' "x-ray.bas"
9 CLS
10 PRINT "    X-Ray Diffraction d-spacing to 2 Theta Conversion Utility"
11 PRINT"                       by Phillip K. Bigelow"
20 PRINT:PRINT:PRINT
30 PRINT "This program uses the relationship:"
35 PRINT "(n)*(wavelength) = (2)*(d)*(sin theta)":PRINT
36 PRINT "Where wavelength = 1.5418 angstroms (copper target)":PRINT "And where d= atomic spacing in angstroms":PRINT
37 PRINT "so the equations are: 2 theta = (2)*(InverseSIN (0.7709/d))"
38 PRINT "                 and: d = 1.5418/(2*SIN(theta))":PRINT:PRINT:PRINT:PRINT
39 PRINT"                           MENU":PRINT "Convert d-spacing to degrees 2 theta (t), Convert degrees 2 theta"
40 PRINT"         to d-spacing (d), or exit to System/Windows (x)":JH$=INPUT$(1)
41 IF JH$="x" THEN SYSTEM
42 IF JH$="d" THEN 80
43 IF JH$<>"t" AND JH$<>"x" AND JH$<>"D" THEN GOTO 9
44 CLS:INPUT "What is the d-spacing (in Angstroms) that you want converted to 2 theta";D:IF D<.7709 THEN BEEP:IF D<.7709 THEN PRINT "Two theta is more than 180 degrees!":PRINT:IF D<.7709 THEN GOTO 39:PRINT
45 ' Solve for theta
46 ' SIN(theta)=wavelength/(2*d)
47 ' SIN(theta)=1.5418/(2*d)
48 ' theta=InverseSIN(.7709/d)
50 LET T=(.7709/D)
51 ' What is the BASIC command for inverseSIN (for degrees)?
52 ' InverseSIN(x)=(180/pi)*atn(x/sqr(1-x*x))  (for degrees)
55 LET THA= (180/3.14159265#)*ATN(T/SQR(1-T*T))
57 ' Copyright Hell Creek Life, 1987-2009 Phillip Bigelow
60 LET B=2*THA
65 PRINT D;"angstroms  =";"  ";B;"  degrees two theta"
70 PRINT:PRINT:GOTO 39
71 '
72 '
73 '
80 CLS:INPUT "What is the 2 theta angle (in degrees) you want converted to d-spacing";TT:PRINT
81 LET TR=TT/2
85 LET Q=180/3.14159265#
86 LET HH=SIN(TR/Q)
90 LET DD=1.5418/(2*HH)
100 PRINT TT;"degrees 2 theta =";"    ";DD;"  angstroms"
110 PRINT:PRINT
120 GOTO 39
