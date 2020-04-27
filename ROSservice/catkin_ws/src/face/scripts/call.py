# -*- coding: UTF-8 -*-   
# 导入系统库并定义辅助函数
from pprint import pformat
import base64
import cv2
# import PythonSDK
from PythonSDK.facepp import API,File
import os
import time 

# 导入图片处理类
import PythonSDK.ImagePro

# 以下四项是dmeo中用到的图片资源，可根据需要替换
detech_img_url = 'http://bj-mc-prod-asset.oss-cn-beijing.aliyuncs.com/mc-official/images/face/demo-pic11.jpg'
faceSet_img = './imgResource/demo.jpeg'       # 用于创建faceSet
face_search_img = './imgResource/search.png'  # 用于人脸搜索
segment_img = './imgResource/segment.jpg'     # 用于人体抠像
merge_img = './imgResource/merge.jpg'         # 用于人脸融合

api = API()
# -----------------------------------------------------------人脸识别部分-------------------------------------------
# 此方法专用来打印api返回的信息
def print_result(hit, result):
    print(hit)
    print('\n'.join("  " + i for i in pformat(result, width=75).split('\n')))

def printFuctionTitle(title):
    return "\n"+"-"*60+title+"-"*60;

def detect(filename,frame,name=None):
    b1 = File(filename)
    res = api.detect(image_file = b1)#, return_attributes="gender,age,smiling,headpose,facequality,"
    #                                                       "blur,eyestatus,emotion,ethnicity,beauty,"
    #                                                     "mouthstatus,skinstatus")
    #print_result(printFuctionTitle("人脸检测"), res)
    for face in res['faces']:
        rect = face['face_rectangle']     #人脸所在的矩形框  
        w,h,l,t = rect['width'],rect['height'],rect['left'],rect['top']
        #cv2.rectangle(frame,(rect['left'],rect['top']),(rect['left']+rect['width'],rect['top']+rect['height']),(0,255,0), 5)
        #cv2.imwrite(filename,frame)
        if name:
            cv2.imwrite('faceimg/'+name+'.png',frame[t:t+h,l:l+w] )  #保存人脸图像
        return w,h,l,t

def compare(filename):
    imfile = File(filename)
    for root,dir,file in os.walk('faceimg/'):
        for f in file:
            #if('.png' in f):
            cmpres = api.compare(image_file1=imfile, image_file2=File(root+f))  #比较
            name = None
            try:
                if(cmpres['confidence']>80):
                    name = f.split('.')[0]
                    return(name)  #返回文件名
            except:
                pass
        return None

#def saveface(name):
if __name__ == '__main__':
	cv2.namedWindow('MyWindow')
	cap = cv2.VideoCapture(0)
	while(1):
		ret,frame = cap.read()#读取每一帧  
		filename = str(time.time())+'.png'
		cv2.imwrite('imgs/'+filename,frame)#显示每一帧
		detect('imgs/'+filename,frame)
		print(compare('imgs/'+filename))
		cv2.imshow('MyWindow',frame)
		if cv2.waitKey(1) & 0xFF == ord('a'): 
		    break
		# a = input()
		# if(a=='a'):
		# break
	cv2.destroyAllWindows()
	cap.release()
	print(compare('3.jpg'))
# 初始化对象，进行api的调用工作

 #   cmpres = api.compare(image_file1=b1, image_file2=b2)

    
#print_result("compare", cmpres)

# 人脸搜索：https://console.faceplusplus.com.cn/documents/4888381
# 人脸搜索步骤
# 1,创建faceSet:用于存储人脸信息(face_token)
# 2,向faceSet中添加人脸信息(face_token)
# 3，开始搜索

# 删除无用的人脸库，这里删除了，如果在项目中请注意是否要删除
# api.faceset.delete(outer_id='faceplusplus', check_empty=0)
# # 1.创建一个faceSet
# ret = api.faceset.create(outer_id='faceplusplus')
#
# # 2.向faceSet中添加人脸信息(face_token)
# faceResStr=""
# res = api.detect(image_file=File(faceSet_img))
# faceList = res["faces"]
# for index in range(len(faceList)):
#     if(index==0):
#         faceResStr = faceResStr + faceList[index]["face_token"]
#     else:
#         faceResStr = faceResStr + ","+faceList[index]["face_token"]
#
# api.faceset.addface(outer_id='faceplusplus', face_tokens=faceResStr)
#
# # 3.开始搜索相似脸人脸信息
# search_result = api.search(image_file=File(face_search_img), outer_id='faceplusplus')
# print_result('search', search_result)

# -----------------------------------------------------------人体识别部分-------------------------------------------

# 人体抠像:https://console.faceplusplus.com.cn/documents/10071567
# segment_res = api.segment(image_file=File(segment_img))
# f = open('./imgResource/demo-segment.b64', 'w')
# f.write(segment_res["result"])
# f.close()
# print_result("segment", segment_res)
# # 开始抠像
# PythonSDK.ImagePro.ImageProCls.getSegmentImg("./imgResource/demo-segment.b64")

# -----------------------------------------------------------证件识别部分-------------------------------------------
# 身份证识别:https://console.faceplusplus.com.cn/documents/5671702
# ocrIDCard_res = api.ocridcard(image_url="https://gss0.bdstatic.com/94o3dSag_xI4khGkpoWK1HF6hhy/baike/"
#                                         "c0%3Dbaike80%2C5%2C5%2C80%2C26/sign=7a16a1be19178a82da3177f2976a18e8"
#                                         "/902397dda144ad34a1b2dcf5d7a20cf431ad85b7.jpg")
# print_result('ocrIDCard', ocrIDCard_res)

# 银行卡识别:https://console.faceplusplus.com.cn/documents/10069553
# ocrBankCard_res = api.ocrbankcard(image_url="http://pic.5tu.cn/uploads/allimg/1107/191634534200.jpg")
# print_result('ocrBankCard', ocrBankCard_res)

# -----------------------------------------------------------图像识别部分-------------------------------------------
# 人脸融合：https://console.faceplusplus.com.cn/documents/20813963
# template_rectangle参数中的数据要通过人脸检测api来获取
# mergeFace_res = api.mergeface(template_file=File(segment_img), merge_file=File(merge_img),
#                               template_rectangle="130,180,172,172")
# print_result("mergeFace", mergeFace_res)
#
# # 开始融合
# PythonSDK.ImagePro.ImageProCls.getMergeImg(mergeFace_res["result"])
