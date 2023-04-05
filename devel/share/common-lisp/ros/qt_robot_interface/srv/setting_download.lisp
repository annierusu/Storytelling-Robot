; Auto-generated. Do not edit!


(cl:in-package qt_robot_interface-srv)


;//! \htmlinclude setting_download-request.msg.html

(cl:defclass <setting_download-request> (roslisp-msg-protocol:ros-message)
  ((filepath
    :reader filepath
    :initarg :filepath
    :type cl:string
    :initform ""))
)

(cl:defclass setting_download-request (<setting_download-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <setting_download-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'setting_download-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name qt_robot_interface-srv:<setting_download-request> is deprecated: use qt_robot_interface-srv:setting_download-request instead.")))

(cl:ensure-generic-function 'filepath-val :lambda-list '(m))
(cl:defmethod filepath-val ((m <setting_download-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader qt_robot_interface-srv:filepath-val is deprecated.  Use qt_robot_interface-srv:filepath instead.")
  (filepath m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <setting_download-request>) ostream)
  "Serializes a message object of type '<setting_download-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'filepath))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'filepath))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <setting_download-request>) istream)
  "Deserializes a message object of type '<setting_download-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'filepath) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'filepath) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<setting_download-request>)))
  "Returns string type for a service object of type '<setting_download-request>"
  "qt_robot_interface/setting_downloadRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'setting_download-request)))
  "Returns string type for a service object of type 'setting_download-request"
  "qt_robot_interface/setting_downloadRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<setting_download-request>)))
  "Returns md5sum for a message object of type '<setting_download-request>"
  "c2187fcc5b554d3b041641bcea605d5a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'setting_download-request)))
  "Returns md5sum for a message object of type 'setting_download-request"
  "c2187fcc5b554d3b041641bcea605d5a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<setting_download-request>)))
  "Returns full string definition for message of type '<setting_download-request>"
  (cl:format cl:nil "string filepath~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'setting_download-request)))
  "Returns full string definition for message of type 'setting_download-request"
  (cl:format cl:nil "string filepath~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <setting_download-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'filepath))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <setting_download-request>))
  "Converts a ROS message object to a list"
  (cl:list 'setting_download-request
    (cl:cons ':filepath (filepath msg))
))
;//! \htmlinclude setting_download-response.msg.html

(cl:defclass <setting_download-response> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type cl:string
    :initform "")
   (status
    :reader status
    :initarg :status
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass setting_download-response (<setting_download-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <setting_download-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'setting_download-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name qt_robot_interface-srv:<setting_download-response> is deprecated: use qt_robot_interface-srv:setting_download-response instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <setting_download-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader qt_robot_interface-srv:data-val is deprecated.  Use qt_robot_interface-srv:data instead.")
  (data m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <setting_download-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader qt_robot_interface-srv:status-val is deprecated.  Use qt_robot_interface-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <setting_download-response>) ostream)
  "Serializes a message object of type '<setting_download-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'data))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'status) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <setting_download-response>) istream)
  "Deserializes a message object of type '<setting_download-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'data) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'status) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<setting_download-response>)))
  "Returns string type for a service object of type '<setting_download-response>"
  "qt_robot_interface/setting_downloadResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'setting_download-response)))
  "Returns string type for a service object of type 'setting_download-response"
  "qt_robot_interface/setting_downloadResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<setting_download-response>)))
  "Returns md5sum for a message object of type '<setting_download-response>"
  "c2187fcc5b554d3b041641bcea605d5a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'setting_download-response)))
  "Returns md5sum for a message object of type 'setting_download-response"
  "c2187fcc5b554d3b041641bcea605d5a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<setting_download-response>)))
  "Returns full string definition for message of type '<setting_download-response>"
  (cl:format cl:nil "string data~%bool status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'setting_download-response)))
  "Returns full string definition for message of type 'setting_download-response"
  (cl:format cl:nil "string data~%bool status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <setting_download-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'data))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <setting_download-response>))
  "Converts a ROS message object to a list"
  (cl:list 'setting_download-response
    (cl:cons ':data (data msg))
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'setting_download)))
  'setting_download-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'setting_download)))
  'setting_download-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'setting_download)))
  "Returns string type for a service object of type '<setting_download>"
  "qt_robot_interface/setting_download")