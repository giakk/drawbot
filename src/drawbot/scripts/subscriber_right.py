#! /usr/bin/env python3

import rospy
from std_msgs.msg import Int16

def callback(msg):
	print(msg.data)

rospy.init_node('reader_encoder_value')
sub = rospy.Subscriber('/encoder_read', Int16, callback)

rospy.spin()
