10 ' --------------------------------------------
20 '           ANIMATION (using XOR)
30 ' --------------------------------------------
40 CLEAR :CLS :KEY OFF
50 '
60 DIM IMAGE%(150)
70 SCREEN 1
80 CLS
90 '
100 CIRCLE (20, 20), 6
110 PAINT (20, 20)
120 DRAW "D16 NE8 NH8 D4 NF8 NG8"
130 GET (8, 8) - (31, 55), IMAGE%
140 CLS
150 '
160 'Draw background of 4 coloured boxes
170 LINE (100, 60) - STEP(20, 20), 1, BF
180 LINE (150, 60) - STEP(20, 20), 3, BF
190 LINE (100, 90) - STEP(20, 20), 3, B
200 LINE (150, 90) - STEP(20, 20), 2, BF
210 '
220 FOR X% = 20 TO 200 STEP 2
230    PUT (X%, 60), IMAGE%, XOR     'Draw a stick figure
240       NOW! = TIMER
250       WHILE (TIMER - NOW!) < .15 'Pause for .15 seconds
260       WEND
270    PUT (X%, 60), IMAGE%, XOR     'Erase stick figure
280 NEXT X%
290 SCREEN 2 :SCREEN 0
300 END