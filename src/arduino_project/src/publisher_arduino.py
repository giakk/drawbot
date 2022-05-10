#! /usr/bin/env python3

import rospy
import roslib
from std_msgs.msg import UInt8

roslib.load_manifest('arduino_project')

rospy.init_node('publisher_arduino')
pub = rospy.Publisher('chatter', UInt8, queue_size=1)

rate = rospy.Rate(2)

while not rospy.is_shutdown():
	var = int(input("Motor speed: "))
	pub.publish(var)
	rate.sleep()
