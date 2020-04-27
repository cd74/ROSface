#!/usr/bin/env python
# -*- coding: UTF-8 -*-  
from __future__ import print_function
import time
import roslib
#roslib.load_manifest('my_package')
import sys
import rospy
import cv2
import call
from std_msgs.msg import String
#from sensor_msgs.msg import Image
#from cv_bridge import CvBridge, CvBridgeError
from face1.srv import *

ctrl=['0','1','aaa']
i = 0
#bridge = CvBridge()
def imgpub():  #publish imaget
    #cap = cv2.VideoCapture(0) #use camera
    # define picture to_down' coefficient of ratio
    #scaling_factor = 0.5  
    global i
    rate = rospy.Rate(0.2)
    #if not cap.isOpened():
    #    sys.stdout.write("Webcam is not available !")
    #    return -1 
    #count = 0
    face = rospy.ServiceProxy('face1', FaceSrv1)
    while not rospy.is_shutdown():
        #ret, frame = cap.read()
        #filename = str(time.time())+'.png'
        #cv2.imwrite('imgs/'+filename,frame)#save raw image
        #msg = bridge.cv2_to_imgmsg(frame, encoding="bgr8")
	res = face(ctrl[i])
	print(res.result)
	i =(i+1)%3
        rate.sleep()

if __name__ == "__main__":
    rospy.init_node('faceclient', anonymous=True)
    rospy.wait_for_service('face1')
    imgpub()

