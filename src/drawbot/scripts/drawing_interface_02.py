# Source: https://pythonguides.com/python-turtle-mouse/
# Alternative: https://www.techwithtim.net/tutorials/python-module-walk-throughs/turtle-module/drawing-with-mouse/

from turtle import *

import turtle
  

ws = turtle.Screen()
  

def func(i, j):
  turtle.goto(i, j)
  turtle.write(str(i)+","+str(j))
  

ws.onclick(func)
ws.mainloop()



