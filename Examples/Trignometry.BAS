1  'Ways of returning the Sine, Cosine & Tangent in degree values
2 '
3 'Method #1:    ***Create Variables***
4 'PI=355/113
5 '    or
6 PI=4*ATN(1)    'establish PI - probably the best method
7 '   then
8 ' r2d= 2*pi/360   'since there are 2PI radians in a circle, we simply divide
9 '                  360 into (2 x 3.1415926535) to get the value for 1 degree
10 '                  or reducing the fraction, pi/180
11 '    so
12 R2D=PI/180     'convert from Radians to Degrees
13 '
14 'Method #2:    ***Define FN functions***
15 DEF FNSINE(X)=SIN(X*4*ATN(1)/180)    'or use the def fn function
16 DEF FNCOSINE(X)=COS(X*4*ATN(1)/180)  'to create your own translation method
17 DEF FNTANGENT(X)=TAN(X*4*ATN(1)/180)'fnsine, fncosine, fntangent
18 '
19 'Method #3:   Straight Declaration
20 'PI=3.1415926535
21 'R2D= pi/180
22 '
23 CLS:INPUT "Input Degrees: ",X:PRINT "      Values are in Degrees"
24 '
25 PRINT "  sine          cosine        tangent"
26 '
27 PRINT FNSINE(X), FNCOSINE(X), FNTANGENT(X)       'sin/cos/tan using FN
28 '
29 PRINT SIN(X*PI/180),COS(X*PI/180), TAN(X*PI/180) 'sin/cos/tan varibles
30 '
31 PRINT SIN(X*R2D),COS(X*R2D), TAN(X*R2D)          'sin/cos/tan w r2d variable
32 '     save   "trig.bas",a
33 ' or you could just buy a cheap calculator  :-)