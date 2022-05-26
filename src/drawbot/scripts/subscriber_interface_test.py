#! /usr/bin/env python3

import rospy
from drawbot.msg import Custom_interface
#from std_msgs.msg import Int16

def callback(msg):
	print(msg.x, msg.y)

rospy.init_node('sub_interface')
sub = rospy.Subscriber('/interface_goal', Custom_interface, callback)

rospy.spin()
