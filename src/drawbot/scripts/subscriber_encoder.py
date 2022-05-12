#! /usr/bin/env python3

# Print the encoder value that receive from the arduino node
# Prova di commento

import rospy
from std_msgs.msg import Float32

def callback(msg):
	print(msg.data)

rospy.init_node('reader_encoder_value')
sub = rospy.Subscriber('/pub_encoder', Float32, callback)

rospy.spin()
