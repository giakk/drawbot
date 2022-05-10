#! /usr/bin/env python3

import rospy
from geometry_msgs.msg import Twist
from std_msgs.msg import UInt8

def callback(msg):
	x_lin = msg.linear.x
	x_ang = msg.angular.z
	val = x_lin*255
	if (val>255):
		val = 255
	val = int(val)
	val_ang = int(x_ang)
	#print(val)
	#print(val_ang)
	print("linear %d -- angular %d" %(val, val_ang))
	pub.publish(val)

rospy.init_node('topic_subscriber')
sub = rospy.Subscriber('/cmd_vel', Twist, callback)
pub = rospy.Publisher('/chatter', UInt8, queue_size=1)
rospy.spin()
