; Auto-generated. Do not edit!


(cl:in-package qt_robot_interface-srv)


;//! \htmlinclude setting_info-request.msg.html

(cl:defclass <setting_info-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass setting_info-request (<setting_info-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <setting_info-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'setting_info-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name qt_robot_interface-srv:<setting_info-request> is deprecated: use qt_robot_interface-srv:setting_info-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <setting_info-request>) ostream)
  "Serializes a message object of type '<setting_info-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <setting_info-request>) istream)
  "Deserializes a message object of type '<setting_info-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<setting_info-request>)))
  "Returns string type for a service object of type '<setting_info-request>"
  "qt_robot_interface/setting_infoRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'setting_info-request)))
  "Returns string type for a service object of type 'setting_info-request"
  "qt_robot_interface/setting_infoRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<setting_info-request>)))
  "Returns md5sum for a message object of type '<setting_info-request>"
  "c10fc26d5cca9a4b9114f5fc5dea9570")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'setting_info-request)))
  "Returns md5sum for a message object of type 'setting_info-request"
  "c10fc26d5cca9a4b9114f5fc5dea9570")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<setting_info-request>)))
  "Returns full string definition for message of type '<setting_info-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'setting_info-request)))
  "Returns full string definition for message of type 'setting_info-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <setting_info-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <setting_info-request>))
  "Converts a ROS message object to a list"
  (cl:list 'setting_info-request
))
;//! \htmlinclude setting_info-response.msg.html

(cl:defclass <setting_info-response> (roslisp-msg-protocol:ros-message)
  ((info
    :reader info
    :initarg :info
    :type cl:string
    :initform ""))
)

(cl:defclass setting_info-response (<setting_info-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <setting_info-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'setting_info-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name qt_robot_interface-srv:<setting_info-response> is deprecated: use qt_robot_interface-srv:setting_info-response instead.")))

(cl:ensure-generic-function 'info-val :lambda-list '(m))
(cl:defmethod info-val ((m <setting_info-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader qt_robot_interface-srv:info-val is deprecated.  Use qt_robot_interface-srv:info instead.")
  (info m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <setting_info-response>) ostream)
  "Serializes a message object of type '<setting_info-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'info))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'info))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <setting_info-response>) istream)
  "Deserializes a message object of type '<setting_info-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'info) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'info) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<setting_info-response>)))
  "Returns string type for a service object of type '<setting_info-response>"
  "qt_robot_interface/setting_infoResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'setting_info-response)))
  "Returns string type for a service object of type 'setting_info-response"
  "qt_robot_interface/setting_infoResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<setting_info-response>)))
  "Returns md5sum for a message object of type '<setting_info-response>"
  "c10fc26d5cca9a4b9114f5fc5dea9570")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'setting_info-response)))
  "Returns md5sum for a message object of type 'setting_info-response"
  "c10fc26d5cca9a4b9114f5fc5dea9570")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<setting_info-response>)))
  "Returns full string definition for message of type '<setting_info-response>"
  (cl:format cl:nil "string info~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'setting_info-response)))
  "Returns full string definition for message of type 'setting_info-response"
  (cl:format cl:nil "string info~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <setting_info-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'info))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <setting_info-response>))
  "Converts a ROS message object to a list"
  (cl:list 'setting_info-response
    (cl:cons ':info (info msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'setting_info)))
  'setting_info-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'setting_info)))
  'setting_info-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'setting_info)))
  "Returns string type for a service object of type '<setting_info>"
  "qt_robot_interface/setting_info")