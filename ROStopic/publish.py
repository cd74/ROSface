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
from sensor_msgs.msg import Image
from cv_bridge import CvBridge, CvBridgeError

flag = '0'
bridge = CvBridge()
def imgpub():  #publish image
    # init ros_node
    # queue_size should be small in order to make it 'real_time'
    # or the node will pub the past_frame
    img_pub = rospy.Publisher('campub', Image, queue_size=1)
    rate = rospy.Rate(2) # 5hz
 
    # make a video_object and init the video object
    cap = cv2.VideoCapture(0) #use camera
    # define picture to_down' coefficient of ratio
    scaling_factor = 0.5
    # the 'CVBridge' is a python_class, must have a instance.
    # That means "cv2_to_imgmsg() must be called with CvBridge instance"
 
    if not cap.isOpened():
        sys.stdout.write("Webcam is not available !")
        return -1
 
    count = 0
    # loop until press 'esc' or 'q'
    while not rospy.is_shutdown():
        ret, frame = cap.read()
        # resize the frame
        # if ret:
        #     count = count + 1
        # else:
        #     rospy.loginfo("Capturing image failed.")
        # if count == 2:
            #count = 0
        msg = bridge.cv2_to_imgmsg(frame, encoding="bgr8")
        img_pub.publish(msg)
        print ('** publishing webcam_frame ***')
        rate.sleep()


def callback(data):
    global flag
    frame = bridge.imgmsg_to_cv2(data, "bgr8")
    cv2.imshow("frame" , frame)
    filename = str(time.time())+'.png'
    cv2.imwrite('imgs/'+filename,frame)#save raw image
    print('received')
    str1 = ''
    if(flag=='0'):        
        w,l,h,t = call.detect('imgs/'+filename,frame) #detect face without saving face image
        w,l,h,t = str(w),str(l),str(h),str(t)  # face rectangle
        str1 = ','.join([w,l,h,t])
        if(w is not None):
            rectpub.publish(str1)
        print(str1)
    elif(flag=='1'):  #compare face
        name = call.compare(filename)
        if(name is not None):
            namepub.publish(name)
        flag = '0'
    else:
        w,l,h,t = call.detect('imgs/'+filename,frame,flag) #detect face and save face image
        w,l,h,t = str(w),str(l),str(h),str(t)
        str1 = ','.join([w,l,h,t])
        if(w is not None):
            rectpub.publish(str1)
        flag = '0'

def callback1():
    msg=data.data
    flag = msg

# def talker():
#     pub = rospy.Publisher('facedet', String, queue_size=10)
#     rospy.init_node('face', anonymous=True)
#     rospy.Subscriber('color', String, callback)
#     rate = rospy.Rate(10) # 10hz
#     while not rospy.is_shutdown():
#         str1 = ''
#         #rospy.loginfo(hello_str)
#         pub.publish(str1)
#         rate.sleep()

if __name__ == '__main__':
    try:
        rospy.init_node('cam', anonymous=True)      #publish image(can be in the main process)
        rospy.Subscriber('campub', Image, callback)
        rospy.Subscriber('camctrl', String, callback1)
        namepub = rospy.Publisher('namepub', String)
        rectpub = rospy.Publisher('rect', String, queue_size=1)
        imgpub() #https://blog.csdn.net/LutherK/article/details/80374109
    except rospy.ROSInterruptException:
        pass
