10 cls
20 for char = 0 to 255
30     if char = 0 or char = 7 or char = 9 or char = 10 or char = 11 or char = 12 or char = 13 or char = 28 or char = 29 or char = 30 or char = 31 then 70
40     for  row =1 to 25
50         print STRING$(79, char)
60     next row
70 next char
80 end 