10 clear 
20 screen 1
30 color 0,7
40 key off
50 cls
60 DEFINT a - z
70 ' -------------------------
80 ' Sample Lines to be drawn
90 ' -------------------------
100 while x1 <> 999
110     read x1, y1, x2, y2
120     if x1 <> 999 then gosub 340
130 wend
140 ' -----------------
150 ' Empty Key buffer
160 ' -----------------
170 while INKEY$ <> ""
180 wend
190 ' -------------------------------------
200 ' Wait for a key press before quitting
210 ' -------------------------------------
220 while INKEY$ = ""
230 wend
240 end
250 ' ----------------------
260 ' Data for sample lines
270 ' ----------------------
280 DATA 0, 0, 319, 0
290 DATA 0, 0, 0, 199
300 DATA 319, 199, 319, 0
310 DATA 319, 199, 0, 199
320 DATA 0, 0, 319, 199
325 DATA 319, 0, 0, 199
330 DATA 999, 0, 0, 0
340 ' --------------------------------------------
350 ' Subroutine, draw line from x1, y1 to x2, y2
360 ' --------------------------------------------
370 dx = x2 - x1
380 dy = y2 - y1
390 xi = 1
400 yi = 1
410 if dx >= 0 then 440
420 dx = -dx
430 xi = -1
440 if dy >= 0 then 470
450 dy = -dy
460 yi = -1
470 if dx < dy then 600
480 xp = x1 
490 yp = y1
500 cx = dx \ 2
510 while xp <> x2
520     pset (xp, yp)
530     cx = cx+dy
540     if cx < dx then 570
550     cx = cx - dx
560     yp = yp + yi
570     xp = xp + xi
580 wend
590 goto 710
600 xp = x1
610 yp = y1
620 cy = dy \ 2
630 while yp <> y2
640     pset(xp, yp)
650     cy = cy + dx
660     if cy < dy then 690
670     cy = cy - dy
680     xp = xp + xi
690     yp = yp + yi
700 wend
710 pset (x2, y2)
720 return