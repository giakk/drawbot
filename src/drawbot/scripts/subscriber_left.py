#! /usr/bin/env python3

import rospy
from std_msgs.msg import Float64

def callback(msg):
	print(msg.data)

rospy.init_node('reader_left_motor_velocity')
sub = rospy.Subscriber('/left_motor_velocity', Float64, callback)

rospy.spin()
