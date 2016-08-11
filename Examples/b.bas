10 ' Write Your basic code here 
20 y: Nauman Umer
10 CLS
12 n = 1: i = 1
13 dim a(50) 
20 INPUT "Enter a Number in Binary :" ; bin$
21 print bin$
30 lenght = len(bin$)
40 bina = fix(val(bin$))
42 ' ------------------------------------
44 '              Step 1
45 ' ------------------------------------
46 a$ = mid$(bin$,n,i)
50 if (a$= "0") or(a$= "1") then print ""; else print "Please Enter Correct Number": end
52 print "( "; a$; " * ("; 2; "^"; lenght - 1; "))";
54 if  lenght = 0 then goto 71 else print " + ";
53 lenght = lenght - 1
60 n = n + 1
70 goto 45
71 ' ------------------------------------
72 '               Step 2
73 ' ------------------------------------ 
74 n = 1: i = 1
75 lenght = len(bin$)
76 print ""
77 a$ = mid$(bin$,n,i)
78 ab = fix(val(a$))
79 lenght = lenght - 1
80 ac = 2 ^ (lenght)
81 print "("; ab; "*"; ac; ")";
82 if  lenght = 0 then goto 90 else print " + ";
84 n = n + 1
86 goto 75
87 ' ------------------------------------
88 '               Step 3
89 ' ------------------------------------
90 n = 1: i = 1
100 lenght = len(bin$)
110 print ""
120 a$ = mid$(bin$,n,i)
130 ab = fix(val(a$))
140 lenght = lenght - 1
150 ac = 2 ^ (lenght)
151 ad = ab * ac
152 a(lenght) = ad
160 print ad;
170 if  lenght = 0 then goto 200 else print " + ";
180 n = n + 1
190 goto 120
191 ' ------------------------------------
192 '               Step 4
196 ' ------------------------------------
200 i = 0
201 lenght = len(bin$)
202 print ""
211 sum = 0
212 sum = sum + a(i)
230 i = i + 1
220 if i = (lenght - 1) then 250
240 goto 212
250 ? sum;
255 ' ------------------------------------
260 '                 END
330 ' ------------------------------------
400 END
405 ' ---------------
407 ' Error handling
408 ' ---------------
410 print "Please Enter Correct Number"
420 goto 20 