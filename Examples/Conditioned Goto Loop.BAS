10  ' This is the example showing Goto loop in GwBasic
20  ' Syntax:
30  ' goto [line num]
40  x = 0
50  print x
60  x = x + 1
70  if x = 10 then End ' You can also use stop
80  goto 50
90  END