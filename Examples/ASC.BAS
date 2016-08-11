10 clear 
20 width 40
30 key off
40 cls
50 qoute$ = CHR$(34)
60 heading$ = " ASC.BAS "
70 gosub 200
80 print "Demonstration of the ASC function,"
90 print "which produces the ASCII code number"
100 print "for any character."
110 print
120 print "Type any character ..."
130 print
140 k$ = INKEY$
150 if K$ = "" then 140
155 quote$ = CHR$(34)
160 print TAB(12) "ASC ("; quote$; k$; quote$; ") = "; ASC(k$);
170 if LEN(K$) = 2 then print ASC(RIGHT$(K$, 1));
180 print
190 goto 140
200 ' ------------------------------
210 ' Subroutine, Standard Heading
220 ' ------------------------------
230 LEFTSPACE$ = SPACE$((40-LEN(HEADING$))\2-1)
235 OUTLINE$ = STRING$(LEN(HEADING$), 205)
240 print LEFTSPACE$; CHR$(201); OUTLINE$; CHR$(187)
250 print LEFTSPACE$; CHR$(186); HEADING$; CHR$(186)
260 print LEFTSPACE$; CHR$(200); OUTLINE$; CHR$(188)
270 print
280 RETURN