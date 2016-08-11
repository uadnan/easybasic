10 REM flush the keyboard buffer
20 IF INKEY$<> "" THEN GOTO 10
30 PRINT "Press Y or N to continue"
40 LET k$ = INKEY$
50 IF k$ <> "y" AND k$ <> "Y" AND k$ <> "n" AND k$ <> "N" THEN GOTO 40
60 PRINT "The response was "; k$
70 goto 10