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
from face1.srv import FaceSrv1,FaceSrv1Response

absolutepath='/home/c/catkin_ws/src/face1/scripts/'

flag = 'stop'
#bridge = CvBridge()

def imgprocess():
    global flag
    global cap
    #cap1 = cv2.VideoCapture(0)
    ret1, frame1 = cap.read()
    #cv2.imshow("frame" , frame)
    filename1 = str(time.time())[:10]+'p.png'
    cv2.imwrite('/home/c/catkin_ws/src/face1/scripts/imgs/'+filename1,frame1)#save raw image
    print('process')
    str2 = ''
    if(flag=='1'):  #compare face
        name = call.compare('/home/c/catkin_ws/src/face1/scripts/imgs/'+filename1)
        #rt = ()
        #if(name is not None):
        return  'name_'+name if(name is not None) else 'name_none'
        #else:
        #    return 'name_none'
    else:
        w,l,h,t = call.detect('/home/c/catkin_ws/src/face1/scripts/imgs/'+filename1,frame1,flag,absolutepath+'faceimg/') #detect face and save face image
        if(w is None):
            return  'noneface'
        w,l,h,t = str(w),str(l),str(h),str(t)
        str2 = ','.join([w,l,h,t])
        #if(w is not None):
        return 'saved' 
        #else:
            #return 'noneface'

def handle(req):
    global flag
    flag = req.ctrl
    if(flag=='0'):
        return('start face')
    if(flag=='stop'):
        return('stop face')
    return(imgprocess())

#if __name__ == '__main__':
rospy.init_node('face_server')
s = rospy.Service('face1', FaceSrv1, handle)
print ("Face Server Ready")
cap = cv2.VideoCapture(0)
while(1):
    if(flag=='0'):
        ret, frame = cap.read()
        #cv2.imshow("frame" , frame)
        filename = str(time.time())+'.png'
        cv2.imwrite('/home/c/catkin_ws/src/face1/scripts/imgs/'+filename,frame)#save raw image
        print('received')
        str1 = ''      
        w,l,h,t = call.detect('/home/c/catkin_ws/src/face1/scripts/imgs/'+filename,frame) #detect face without saving face image
        cv2.rectangle(frame,(l,t),(l+w,t+h),(0,255,0), 5)
        cv2.imshow(' ',frame)
        cv2.imwrite('/home/c/catkin_ws/src/face1/scripts/imgs/'+filename,frame)
        if w is not None:
            w,l,h,t = str(w),str(l),str(h),str(t)  # face rectangle
            str1 = ','.join([w,l,h,t])
            print(str1)
        if cv2.waitKey(1) & 0xFF == ord('a'): 
            break
        if (flag=='stop'): 
            cap.release()
            break
rospy.spin()
