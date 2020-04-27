;; Auto-generated. Do not edit!


(when (boundp 'face1::FaceSrv1)
  (if (not (find-package "FACE1"))
    (make-package "FACE1"))
  (shadow 'FaceSrv1 (find-package "FACE1")))
(unless (find-package "FACE1::FACESRV1")
  (make-package "FACE1::FACESRV1"))
(unless (find-package "FACE1::FACESRV1REQUEST")
  (make-package "FACE1::FACESRV1REQUEST"))
(unless (find-package "FACE1::FACESRV1RESPONSE")
  (make-package "FACE1::FACESRV1RESPONSE"))

(in-package "ROS")





(defclass face1::FaceSrv1Request
  :super ros::object
  :slots (_ctrl ))

(defmethod face1::FaceSrv1Request
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

(defclass face1::FaceSrv1Response
  :super ros::object
  :slots (_result ))

(defmethod face1::FaceSrv1Response
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

(defclass face1::FaceSrv1
  :super ros::object
  :slots ())

(setf (get face1::FaceSrv1 :md5sum-) "d8ddc17a1c61e760f5c4f563a497654c")
(setf (get face1::FaceSrv1 :datatype-) "face1/FaceSrv1")
(setf (get face1::FaceSrv1 :request) face1::FaceSrv1Request)
(setf (get face1::FaceSrv1 :response) face1::FaceSrv1Response)

(defmethod face1::FaceSrv1Request
  (:response () (instance face1::FaceSrv1Response :init)))

(setf (get face1::FaceSrv1Request :md5sum-) "d8ddc17a1c61e760f5c4f563a497654c")
(setf (get face1::FaceSrv1Request :datatype-) "face1/FaceSrv1Request")
(setf (get face1::FaceSrv1Request :definition-)
      "string ctrl
---
string result

")

(setf (get face1::FaceSrv1Response :md5sum-) "d8ddc17a1c61e760f5c4f563a497654c")
(setf (get face1::FaceSrv1Response :datatype-) "face1/FaceSrv1Response")
(setf (get face1::FaceSrv1Response :definition-)
      "string ctrl
---
string result

")



(provide :face1/FaceSrv1 "d8ddc17a1c61e760f5c4f563a497654c")


