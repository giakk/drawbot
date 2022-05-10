#! /usr/bin/env python3

import rospy
from geometry_msgs.msg import Twist
from std_msgs.msg import Int16

def publish_on_right(val):
	pub_r.publish(val)	
	
def publish_on_left(val):
	pub_l.publish(val)


def set_velocity(vel_lin, vel_ang):
	if(vel_ang==0):
		# We are in a linear motion
		val=vel_lin
		if (val>255):
			val = 255
		if (val<-255):
			val = -255
		val = int(val)
		print("right %d -- left %d" %(val, val))
		publish_on_right(val)
		publish_on_left(val)
	else:
		# We are in a rotational motion
		if(vel_ang>0): #Turn left
			right_motor = int(100)
			left_motor = int(-110)
			print("right %d -- left %d" %(right_motor, left_motor))
			publish_on_right(right_motor)
			publish_on_left(left_motor)
		else:
			#Turn right
			right_motor = int(-110)
			left_motor = int(100)
			print("right %d -- left %d" %(right_motor, left_motor))
			publish_on_right(right_motor)
			publish_on_left(left_motor)
		

def callback(msg):
	set_velocity(msg.linear.x, msg.angular.z)
	
	
rospy.init_node('topic_subscriber')

sub = rospy.Subscriber('/cmd_vel', Twist, callback)

pub_l = rospy.Publisher('/chatter_l', Int16, queue_size=1)
pub_r = rospy.Publisher('/chatter_r', Int16, queue_size=1)

rospy.spin()
