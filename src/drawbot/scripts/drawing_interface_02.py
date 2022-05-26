# Source: https://pythonguides.com/python-turtle-mouse/
# Alternative: https://www.techwithtim.net/tutorials/python-module-walk-throughs/turtle-module/drawing-with-mouse/

from turtle import *
import turtle

class Coordinates:
  x: int
  y: int

WIDTH, HEIGHT = 800, 400

screen = turtle.Screen()
screen.setup(WIDTH + 4, HEIGHT + 8)  # fudge factors due to window borders & title bar
screen.setworldcoordinates(0, 0, WIDTH, HEIGHT)

coord = Coordinates()

def func(i, j):
  
  turtle.goto(i, j)
  coord.x = int(i)
  coord.y = int(j)
  turtle.write("x="+str(coord.x)+"\ny="+str(coord.y))
  print(coord.x, coord.y)
  

screen.onclick(func)
screen.mainloop()



