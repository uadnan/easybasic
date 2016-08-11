10  CLEAR 
20  SCREEN 9
30  KEY OFF
40  CLS
50  screen.width = 640: screen.height =350
60  ' -----------------------------
70  ' Do a lunch of straight lines
80  ' -----------------------------
90  for i = 0 to 1 step .02
100    x = (screen.width -1)* i: y = (screen.height -1) *i ' upper right hand quadrant
110    line (x, 0)- ((screen.width-1),y), 1 ' lower right hand quadrant
120    line -((screen.width-1)-x, (screen.height-1) ), 2 ' lower left hand quadrant
130    line -(0, (screen.height-1)-y), 2 ' upper left hand quadrant
140    line -(x, 0), 4
150 next
160 ' -------------- 
170 ' Add few Boxes
180 '---------------
190 line.color = 1 ' set the starting line color
200 for i = 4 to 116 step 4
210    line ((screen.width\2)-i, (screen.height\2)-i/2) - ((screen.width\2)+i, (screen.height\2)+ i/2), line.color, b
220    line.color= line.color + 1
230    if line.color > 15 then line.color = 1
240 next
250 ' -------------------------
260 ' Quit at first key stroke
270 ' -------------------------
280 while INKEY$ = "" : wend
290 screen 0,0,0,0
300 width 80
310 END