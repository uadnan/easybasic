10 ' Write your basic code here
15 PLAY "MF"
20 for freq = 40 to 500 step 100
30 sound freq, 10
35 n = 0
40 while 1=1: n= n+1: if n=1000 then goto 50: print freq: WEND
50 next freq 