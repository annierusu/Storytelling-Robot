; Auto-generated. Do not edit!


(cl:in-package qt_robot_interface-srv)


;//! \htmlinclude setting_upload-request.msg.html

(cl:defclass <setting_upload-request> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type cl:string
    :initform "")
   (filepath
    :reader filepath
    :initarg :filepath
    :type cl:string
    :initform "")
   (permission
    :reader permission
    :initarg :permission
    :type cl:string
    :initform ""))
)

(cl:defclass setting_upload-request (<setting_upload-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <setting_upload-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'setting_upload-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name qt_robot_interface-srv:<setting_upload-request> is deprecated: use qt_robot_interface-srv:setting_upload-request instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <setting_upload-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader qt_robot_interface-srv:data-val is deprecated.  Use qt_robot_interface-srv:data instead.")
  (data m))

(cl:ensure-generic-function 'filepath-val :lambda-list '(m))
(cl:defmethod filepath-val ((m <setting_upload-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader qt_robot_interface-srv:filepath-val is deprecated.  Use qt_robot_interface-srv:filepath instead.")
  (filepath m))

(cl:ensure-generic-function 'permission-val :lambda-list '(m))
(cl:defmethod permission-val ((m <setting_upload-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader qt_robot_interface-srv:permission-val is deprecated.  Use qt_robot_interface-srv:permission instead.")
  (permission m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <setting_upload-request>) ostream)
  "Serializes a message object of type '<setting_upload-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'data))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'filepath))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'filepath))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'permission))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'permission))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <setting_upload-request>) istream)
  "Deserializes a message object of type '<setting_upload-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'data) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'data) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'filepath) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'filepath) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'permission) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'permission) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<setting_upload-request>)))
  "Returns string type for a service object of type '<setting_upload-request>"
  "qt_robot_interface/setting_uploadRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'setting_upload-request)))
  "Returns string type for a service object of type 'setting_upload-request"
  "qt_robot_interface/setting_uploadRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<setting_upload-request>)))
  "Returns md5sum for a message object of type '<setting_upload-request>"
  "ca9249eb5cbf48983e24f8f142ef641c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'setting_upload-request)))
  "Returns md5sum for a message object of type 'setting_upload-request"
  "ca9249eb5cbf48983e24f8f142ef641c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<setting_upload-request>)))
  "Returns full string definition for message of type '<setting_upload-request>"
  (cl:format cl:nil "string data~%string filepath~%string permission~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'setting_upload-request)))
  "Returns full string definition for message of type 'setting_upload-request"
  (cl:format cl:nil "string data~%string filepath~%string permission~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <setting_upload-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'data))
     4 (cl:length (cl:slot-value msg 'filepath))
     4 (cl:length (cl:slot-value msg 'permission))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <setting_upload-request>))
  "Converts a ROS message object to a list"
  (cl:list 'setting_upload-request
    (cl:cons ':data (data msg))
    (cl:cons ':filepath (filepath msg))
    (cl:cons ':permission (permission msg))
))
;//! \htmlinclude setting_upload-response.msg.html

(cl:defclass <setting_upload-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass setting_upload-response (<setting_upload-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <setting_upload-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'setting_upload-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name qt_robot_interface-srv:<setting_upload-response> is deprecated: use qt_robot_interface-srv:setting_upload-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <setting_upload-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader qt_robot_interface-srv:status-val is deprecated.  Use qt_robot_interface-srv:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <setting_upload-response>) ostream)
  "Serializes a message object of type '<setting_upload-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'status) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <setting_upload-response>) istream)
  "Deserializes a message object of type '<setting_upload-response>"
    (cl:setf (cl:slot-value msg 'status) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<setting_upload-response>)))
  "Returns string type for a service object of type '<setting_upload-response>"
  "qt_robot_interface/setting_uploadResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'setting_upload-response)))
  "Returns string type for a service object of type 'setting_upload-response"
  "qt_robot_interface/setting_uploadResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<setting_upload-response>)))
  "Returns md5sum for a message object of type '<setting_upload-response>"
  "ca9249eb5cbf48983e24f8f142ef641c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'setting_upload-response)))
  "Returns md5sum for a message object of type 'setting_upload-response"
  "ca9249eb5cbf48983e24f8f142ef641c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<setting_upload-response>)))
  "Returns full string definition for message of type '<setting_upload-response>"
  (cl:format cl:nil "bool status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'setting_upload-response)))
  "Returns full string definition for message of type 'setting_upload-response"
  (cl:format cl:nil "bool status~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <setting_upload-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <setting_upload-response>))
  "Converts a ROS message object to a list"
  (cl:list 'setting_upload-response
    (cl:cons ':status (status msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'setting_upload)))
  'setting_upload-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'setting_upload)))
  'setting_upload-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'setting_upload)))
  "Returns string type for a service object of type '<setting_upload>"
  "qt_robot_interface/setting_upload")