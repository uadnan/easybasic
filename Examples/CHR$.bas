10 clear 
20 width 80
30 key off
40 cls
50 qoute$ = CHR$(34)
60 heading$ = " CHR$ "
70 gosub 200
80 print "Demonstration of the CHR$ function,"
90 print "which produces the character for"
100 print "any ASCII number (0 to 255)"
110 print
120 input "ASCII number"; N
125 if n < 0 OR N> 255 or n<> INT(N) then 120
127 ' ----------------------------------
128 ' Display number and it's character
129 ' ----------------------------------
130 print
155 quote$ = CHR$(34)
160 print TAB(12) "CHR$("; N; ") = "; quote$; CHR$(N); quote$
165 print
190 goto 120
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