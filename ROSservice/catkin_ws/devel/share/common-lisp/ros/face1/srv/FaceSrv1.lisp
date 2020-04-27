; Auto-generated. Do not edit!


(cl:in-package face1-srv)


;//! \htmlinclude FaceSrv1-request.msg.html

(cl:defclass <FaceSrv1-request> (roslisp-msg-protocol:ros-message)
  ((ctrl
    :reader ctrl
    :initarg :ctrl
    :type cl:string
    :initform ""))
)

(cl:defclass FaceSrv1-request (<FaceSrv1-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FaceSrv1-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FaceSrv1-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name face1-srv:<FaceSrv1-request> is deprecated: use face1-srv:FaceSrv1-request instead.")))

(cl:ensure-generic-function 'ctrl-val :lambda-list '(m))
(cl:defmethod ctrl-val ((m <FaceSrv1-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader face1-srv:ctrl-val is deprecated.  Use face1-srv:ctrl instead.")
  (ctrl m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FaceSrv1-request>) ostream)
  "Serializes a message object of type '<FaceSrv1-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'ctrl))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'ctrl))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FaceSrv1-request>) istream)
  "Deserializes a message object of type '<FaceSrv1-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FaceSrv1-request>)))
  "Returns string type for a service object of type '<FaceSrv1-request>"
  "face1/FaceSrv1Request")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FaceSrv1-request)))
  "Returns string type for a service object of type 'FaceSrv1-request"
  "face1/FaceSrv1Request")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FaceSrv1-request>)))
  "Returns md5sum for a message object of type '<FaceSrv1-request>"
  "d8ddc17a1c61e760f5c4f563a497654c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FaceSrv1-request)))
  "Returns md5sum for a message object of type 'FaceSrv1-request"
  "d8ddc17a1c61e760f5c4f563a497654c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FaceSrv1-request>)))
  "Returns full string definition for message of type '<FaceSrv1-request>"
  (cl:format cl:nil "string ctrl~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FaceSrv1-request)))
  "Returns full string definition for message of type 'FaceSrv1-request"
  (cl:format cl:nil "string ctrl~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FaceSrv1-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'ctrl))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FaceSrv1-request>))
  "Converts a ROS message object to a list"
  (cl:list 'FaceSrv1-request
    (cl:cons ':ctrl (ctrl msg))
))
;//! \htmlinclude FaceSrv1-response.msg.html

(cl:defclass <FaceSrv1-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:string
    :initform ""))
)

(cl:defclass FaceSrv1-response (<FaceSrv1-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FaceSrv1-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FaceSrv1-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name face1-srv:<FaceSrv1-response> is deprecated: use face1-srv:FaceSrv1-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <FaceSrv1-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader face1-srv:result-val is deprecated.  Use face1-srv:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FaceSrv1-response>) ostream)
  "Serializes a message object of type '<FaceSrv1-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'result))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'result))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FaceSrv1-response>) istream)
  "Deserializes a message object of type '<FaceSrv1-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FaceSrv1-response>)))
  "Returns string type for a service object of type '<FaceSrv1-response>"
  "face1/FaceSrv1Response")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FaceSrv1-response)))
  "Returns string type for a service object of type 'FaceSrv1-response"
  "face1/FaceSrv1Response")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FaceSrv1-response>)))
  "Returns md5sum for a message object of type '<FaceSrv1-response>"
  "d8ddc17a1c61e760f5c4f563a497654c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FaceSrv1-response)))
  "Returns md5sum for a message object of type 'FaceSrv1-response"
  "d8ddc17a1c61e760f5c4f563a497654c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FaceSrv1-response>)))
  "Returns full string definition for message of type '<FaceSrv1-response>"
  (cl:format cl:nil "string result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FaceSrv1-response)))
  "Returns full string definition for message of type 'FaceSrv1-response"
  (cl:format cl:nil "string result~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FaceSrv1-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FaceSrv1-response>))
  "Converts a ROS message object to a list"
  (cl:list 'FaceSrv1-response
    (cl:cons ':result (result msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'FaceSrv1)))
  'FaceSrv1-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'FaceSrv1)))
  'FaceSrv1-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FaceSrv1)))
  "Returns string type for a service object of type '<FaceSrv1>"
  "face1/FaceSrv1")