#! /usr/bin/env python3

import rospy
from std_msgs.msg import Float64

rospy.init_node('state_topic_publisher_tmp')
pub = rospy.Publisher('state', Float64, queue_size=1)

rate = rospy.Rate(2)


while not rospy.is_shutdown():
	msg_str = float(input("State value: "))
	pub.publish(msg_str)
	rate.sleep()
