10 cls
20 input"Enter First Number";x
30 input"Enter Second Number";y
50 print"1 for *"
60 print"2 for /"
70 print"3 for + "
75 input"select any one from above";c
80 if c = 1 goto 120
90 if c = 2 goto 150
100 if c = 3 goto 180 else goto 110
110 print"wrong input the program is terminated"
115 end
120 z = x * y
130 print x"*"y"="z
140 end
150 z = x / y
160 print x"/"y"="z
170 end
180 z = x + y
190 print x "+" y "=" z
200 end