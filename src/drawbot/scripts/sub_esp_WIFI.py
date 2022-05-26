#! /usr/bin/env python3

import rospy
from std_msgs.msg import Int16

def callback(msg):
	print(msg.data)

rospy.init_node('WIFI_ESP8266_receiver')
sub = rospy.Subscriber('/chatter', Int16, callback)

rospy.spin()
