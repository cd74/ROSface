; Auto-generated. Do not edit!


(cl:in-package face-srv)


;//! \htmlinclude FaceSrv-request.msg.html

(cl:defclass <FaceSrv-request> (roslisp-msg-protocol:ros-message)
  ((ctrl
    :reader ctrl
    :initarg :ctrl
    :type cl:string
    :initform ""))
)

(cl:defclass FaceSrv-request (<FaceSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FaceSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FaceSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name face-srv:<FaceSrv-request> is deprecated: use face-srv:FaceSrv-request instead.")))

(cl:ensure-generic-function 'ctrl-val :lambda-list '(m))
(cl:defmethod ctrl-val ((m <FaceSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader face-srv:ctrl-val is deprecated.  Use face-srv:ctrl instead.")
  (ctrl m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FaceSrv-request>) ostream)
  "Serializes a message object of type '<FaceSrv-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'ctrl))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'ctrl))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FaceSrv-request>) istream)
  "Deserializes a message object of type '<FaceSrv-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ctrl) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'ctrl) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FaceSrv-request>)))
  "Returns string type for a service object of type '<FaceSrv-request>"
  "face/FaceSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FaceSrv-request)))
  "Returns string type for a service object of type 'FaceSrv-request"
  "face/FaceSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FaceSrv-request>)))
  "Returns md5sum for a message object of type '<FaceSrv-request>"
  "d8ddc17a1c61e760f5c4f563a497654c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FaceSrv-request)))
  "Returns md5sum for a message object of type 'FaceSrv-request"
  "d8ddc17a1c61e760f5c4f563a497654c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FaceSrv-request>)))
  "Returns full string definition for message of type '<FaceSrv-request>"
  (cl:format cl:nil "string ctrl~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FaceSrv-request)))
  "Returns full string definition for message of type 'FaceSrv-request"
  (cl:format cl:nil "string ctrl~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FaceSrv-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'ctrl))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FaceSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'FaceSrv-request
    (cl:cons ':ctrl (ctrl msg))
))
;//! \htmlinclude FaceSrv-response.msg.html

(cl:defclass <FaceSrv-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:string
    :initform ""))
)

(cl:defclass FaceSrv-response (<FaceSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FaceSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FaceSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name face-srv:<FaceSrv-response> is deprecated: use face-srv:FaceSrv-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <FaceSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader face-srv:result-val is deprecated.  Use face-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FaceSrv-response>) ostream)
  "Serializes a message object of type '<FaceSrv-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'result))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FaceSrv-response>) istream)
  "Deserializes a message object of type '<FaceSrv-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'result) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'result) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FaceSrv-response>)))
  "Returns string type for a service object of type '<FaceSrv-response>"
  "face/FaceSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FaceSrv-response)))
  "Returns string type for a service object of type 'FaceSrv-response"
  "face/FaceSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FaceSrv-response>)))
  "Returns md5sum for a message object of type '<FaceSrv-response>"
  "d8ddc17a1c61e760f5c4f563a497654c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FaceSrv-response)))
  "Returns md5sum for a message object of type 'FaceSrv-response"
  "d8ddc17a1c61e760f5c4f563a497654c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FaceSrv-response>)))
  "Returns full string definition for message of type '<FaceSrv-response>"
  (cl:format cl:nil "string result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FaceSrv-response)))
  "Returns full string definition for message of type 'FaceSrv-response"
  (cl:format cl:nil "string result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FaceSrv-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FaceSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'FaceSrv-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'FaceSrv)))
  'FaceSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'FaceSrv)))
  'FaceSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FaceSrv)))
  "Returns string type for a service object of type '<FaceSrv>"
  "face/FaceSrv")