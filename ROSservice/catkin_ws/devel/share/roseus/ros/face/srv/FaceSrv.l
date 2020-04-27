;; Auto-generated. Do not edit!


(when (boundp 'face::FaceSrv)
  (if (not (find-package "FACE"))
    (make-package "FACE"))
  (shadow 'FaceSrv (find-package "FACE")))
(unless (find-package "FACE::FACESRV")
  (make-package "FACE::FACESRV"))
(unless (find-package "FACE::FACESRVREQUEST")
  (make-package "FACE::FACESRVREQUEST"))
(unless (find-package "FACE::FACESRVRESPONSE")
  (make-package "FACE::FACESRVRESPONSE"))

(in-package "ROS")





(defclass face::FaceSrvRequest
  :super ros::object
  :slots (_ctrl ))

(defmethod face::FaceSrvRequest
  (:init
   (&key
    ((:ctrl __ctrl) "")
    )
   (send-super :init)
   (setq _ctrl (string __ctrl))
   self)
  (:ctrl
   (&optional __ctrl)
   (if __ctrl (setq _ctrl __ctrl)) _ctrl)
  (:serialization-length
   ()
   (+
    ;; string _ctrl
    4 (length _ctrl)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _ctrl
       (write-long (length _ctrl) s) (princ _ctrl s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _ctrl
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _ctrl (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass face::FaceSrvResponse
  :super ros::object
  :slots (_result ))

(defmethod face::FaceSrvResponse
  (:init
   (&key
    ((:result __result) "")
    )
   (send-super :init)
   (setq _result (string __result))
   self)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; string _result
    4 (length _result)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _result
       (write-long (length _result) s) (princ _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _result
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _result (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass face::FaceSrv
  :super ros::object
  :slots ())

(setf (get face::FaceSrv :md5sum-) "d8ddc17a1c61e760f5c4f563a497654c")
(setf (get face::FaceSrv :datatype-) "face/FaceSrv")
(setf (get face::FaceSrv :request) face::FaceSrvRequest)
(setf (get face::FaceSrv :response) face::FaceSrvResponse)

(defmethod face::FaceSrvRequest
  (:response () (instance face::FaceSrvResponse :init)))

(setf (get face::FaceSrvRequest :md5sum-) "d8ddc17a1c61e760f5c4f563a497654c")
(setf (get face::FaceSrvRequest :datatype-) "face/FaceSrvRequest")
(setf (get face::FaceSrvRequest :definition-)
      "string ctrl
---
string result

")

(setf (get face::FaceSrvResponse :md5sum-) "d8ddc17a1c61e760f5c4f563a497654c")
(setf (get face::FaceSrvResponse :datatype-) "face/FaceSrvResponse")
(setf (get face::FaceSrvResponse :definition-)
      "string ctrl
---
string result

")



(provide :face/FaceSrv "d8ddc17a1c61e760f5c4f563a497654c")


