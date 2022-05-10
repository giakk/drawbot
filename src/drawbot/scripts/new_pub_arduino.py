#! /usr/bin/env python3

import rospy
from geometry_msgs.msg import Twist
from std_msgs.msg import Int16
from std_msgs.msg import Bool
from drawbot.msg import Custom

form_rot=0
form_lin=0

def set_velocity(vel_lin, vel_ang):
	global form_rot
	global form_lin
	
	if(vel_ang==0):		
		# We are in a linear motion
		Info=Custom();
		if(form_rot):
			Info.change=1
			form_rot=1
			form_lin=0
		val=vel_lin
		if (val>255):
			val = 255
		if (val<-255):
			val = -255
		val = int(val)
		print("right %d -- left %d" %(val, val))
		Info.motor_r=val
		Info.motor_l=val
	else:
		# We are in a rotational motion
		if(form_lin):
			Info.change=1
			form_rot=0
			form_lin=1
			
		if(vel_ang>0): #Turn left
			right_motor = int(100)
			left_motor = int(-110)
			print("right %d -- left %d" %(right_motor, left_motor))
			Info.motor_r=right_motor
			Info.motor_l=left_motor
		else:
			#Turn right
			right_motor = int(-110)
			left_motor = int(100)
			print("right %d -- left %d" %(right_motor, left_motor))
			Info.motor_r=right_motor
			Info.motor_l=left_motor
	pub.publish(Info)

def callback(msg):
	set_velocity(msg.linear.x, msg.angular.z)

	
rospy.init_node('movement') #define the node called movement

sub = rospy.Subscriber('cmd_vel', Twist, callback) #in this way this node is set as subscriber to the topic cmd_vel of type Twist calling the function callback

pub = rospy.Publisher('chatter', Custom , queue_size=1) #we set this node as publisher, which publish chatter of type Custom

rospy.spin()
