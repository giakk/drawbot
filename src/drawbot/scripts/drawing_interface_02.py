#! /usr/bin/env python3

# Source: https://pythonguides.com/python-turtle-mouse/
# Alternative: https://www.techwithtim.net/tutorials/python-module-walk-throughs/turtle-module/drawing-with-mouse/

from turtle import *
import turtle
import rospy
from drawbot.msg import Custom_interface
from std_msgs.msg import Int16

WIDTH, HEIGHT = 800, 400

screen = turtle.Screen()
screen.setup(WIDTH + 4, HEIGHT + 8)  # fudge factors due to window borders & title bar
screen.setworldcoordinates(0, 0, WIDTH, HEIGHT)


rospy.init_node('Graphic_interface')
pub = rospy.Publisher('interface_goal', Custom_interface, queue_size=10)
goal=Custom_interface

def func(i, j):
  global goal
  turtle.goto(i, j)
  goal.x = int(i)
  goal.y = int(j)
  turtle.write("x="+str(goal.x)+"\ny="+str(goal.y))
  print(goal.x, goal.y)
  pub.publish(goal)
  

screen.onclick(func)
screen.mainloop()
