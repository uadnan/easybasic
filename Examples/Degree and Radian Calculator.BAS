10 ' Delivers the arcsine of a value.
20 ' 
30 ' VariableAssignments:
40 LOCATE,,,0,7   ' block cursor
50 PI=4*ATN(1)    ' establish the value for PI
60 R2D=PI/180     ' convert from radians to degrees
70 '
80 ' Ask4SineValue:
90 INPUT "input sine value: ";SINE
100 ' 
110 ' EstablishValueLimits:
120   IF SINE>1 THEN PRINT "Sine Value too high":GOTO 90
130   IF SINE=1 THEN PRINT "the angle whose sine is 1 is 90 degrees":END
140   IF SINE<0 THEN PRINT "Sine Value too low":GOTO 90
150 '
160 ' Do all the DMS monkey motion:
170 DECIMALDEGREE=ATN(SINE/SQR(-SINE*SINE+1))/R2D
180 DEGREES=INT(DECIMALDEGREE)
190 '
200 DECIMALMINUTES=DECIMALDEGREE-INT(DECIMALDEGREE)
210 MINUTES=INT(DECIMALMINUTES*60)
220 '
230 DECIMALSECONDS=DECIMALMINUTES*60-MINUTES
240 SECONDS=INT(DECIMALSECONDS*60)
250 '
260 ' PrintTheMess:
270 PRINT"the angle whose sine is:";
280 PRINT SINE;"is";
290 PRINT TAB(25) ATN(SINE/SQR(-SINE*SINE+1));"Radians"
300 PRINT TAB(22)"or: "DECIMALDEGREE;"decimal degrees"
310 PRINT TAB(22)"or: "DEGREES;"degrees";MINUTES;"minutes";SECONDS;"seconds"