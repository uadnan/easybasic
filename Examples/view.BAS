10 clear 
20 screen 2
30 key off
40 cls
50 RANDOMIZE timer
60 ' ------------------------------------
70 ' First let's create the entire image
80 ' ------------------------------------
90 read vx1, vy1, vx2, vy2
100 data 0, 0, 639, 199
110 gosub 310
120 gosub 370
130 ' -----------------------------------------------
140 ' Next create shaded bars using small VIEW ports
150 ' -----------------------------------------------
160 View
170 CLS
180 locate 3, 8
190 print "View... can help draw shaded bar charts!"
200 line (48, 181) - (601, 29),,b
210 line (49, 181) - (600, 29),,b
220 for x = 100 to 500 step 100
230     vx1 = x
240     vx2 = x + 50
250     vy1 = 30 + rnd * 140
260     vy2 = 180
270     gosub 310
280 next x
290 gosub 370
300 ' -------------------------------------------
310 ' Subroutine, create diagonals on the screen
320 ' -------------------------------------------
330 view (vx1, vy1) - (vx2, vy2),,1
340 for xdiag = 0 to 849 step 7
350     line (xdiag, 0) - (xdiag-199, 199)
360 next xdiag
370 ' ---------------------------------
380 ' Subroutine, wait for a key press
390 ' ---------------------------------
400 locate 25, 25
410 print "press any key to continue..."
420 while INKEY$ <> "" ' Empty the key buffer
430 wend
440 while INKEY$ = "" ' Wait for fresh key
450 wend
460 RETURN 