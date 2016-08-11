0 ' ╔═══════════════════════════════╗
1 ' ║  Decimal to Binary Converter  ║
3 ' ║                               ║
6 ' ║       By: Nauman Umer         ║
8 ' ╚═══════════════════════════════╝
30 cls
40 Input "Enter a no in decimal Number System";deci
50 n=0
60 qout=int(deci/2)
70 remin = deci-(qout*2)
80 if n=o then print else print "------------"
90 if n=0 then print "2 | "; deci
100 if n=0 then print "------------"
110 if qout=1 or qout=0 then print " | ";qout ;" - ";remin else print "2 | ";qout ;" - ";remin
120 deci=qout
130 n=n+1
140 if deci>1 then goto 60
150 end