; Auto-generated. Do not edit!


(cl:in-package qt_vosk_app-srv)


;//! \htmlinclude speech_recognize-request.msg.html

(cl:defclass <speech_recognize-request> (roslisp-msg-protocol:ros-message)
  ((language
    :reader language
    :initarg :language
    :type cl:string
    :initform "")
   (options
    :reader options
    :initarg :options
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (timeout
    :reader timeout
    :initarg :timeout
    :type cl:integer
    :initform 0))
)

(cl:defclass speech_recognize-request (<speech_recognize-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <speech_recognize-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'speech_recognize-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name qt_vosk_app-srv:<speech_recognize-request> is deprecated: use qt_vosk_app-srv:speech_recognize-request instead.")))

(cl:ensure-generic-function 'language-val :lambda-list '(m))
(cl:defmethod language-val ((m <speech_recognize-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader qt_vosk_app-srv:language-val is deprecated.  Use qt_vosk_app-srv:language instead.")
  (language m))

(cl:ensure-generic-function 'options-val :lambda-list '(m))
(cl:defmethod options-val ((m <speech_recognize-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader qt_vosk_app-srv:options-val is deprecated.  Use qt_vosk_app-srv:options instead.")
  (options m))

(cl:ensure-generic-function 'timeout-val :lambda-list '(m))
(cl:defmethod timeout-val ((m <speech_recognize-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader qt_vosk_app-srv:timeout-val is deprecated.  Use qt_vosk_app-srv:timeout instead.")
  (timeout m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <speech_recognize-request>) ostream)
  "Serializes a message object of type '<speech_recognize-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'language))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'language))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'options))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'options))
  (cl:let* ((signed (cl:slot-value msg 'timeout)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <speech_recognize-request>) istream)
  "Deserializes a message object of type '<speech_recognize-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'language) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'language) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'options) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'options)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'timeout) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<speech_recognize-request>)))
  "Returns string type for a service object of type '<speech_recognize-request>"
  "qt_vosk_app/speech_recognizeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'speech_recognize-request)))
  "Returns string type for a service object of type 'speech_recognize-request"
  "qt_vosk_app/speech_recognizeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<speech_recognize-request>)))
  "Returns md5sum for a message object of type '<speech_recognize-request>"
  "75ea4008cc551c1370d02f534ba1f8f9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'speech_recognize-request)))
  "Returns md5sum for a message object of type 'speech_recognize-request"
  "75ea4008cc551c1370d02f534ba1f8f9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<speech_recognize-request>)))
  "Returns full string definition for message of type '<speech_recognize-request>"
  (cl:format cl:nil "string language~%string[] options~%int64 timeout~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'speech_recognize-request)))
  "Returns full string definition for message of type 'speech_recognize-request"
  (cl:format cl:nil "string language~%string[] options~%int64 timeout~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <speech_recognize-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'language))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'options) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <speech_recognize-request>))
  "Converts a ROS message object to a list"
  (cl:list 'speech_recognize-request
    (cl:cons ':language (language msg))
    (cl:cons ':options (options msg))
    (cl:cons ':timeout (timeout msg))
))
;//! \htmlinclude speech_recognize-response.msg.html

(cl:defclass <speech_recognize-response> (roslisp-msg-protocol:ros-message)
  ((transcript
    :reader transcript
    :initarg :transcript
    :type cl:string
    :initform ""))
)

(cl:defclass speech_recognize-response (<speech_recognize-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <speech_recognize-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'speech_recognize-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name qt_vosk_app-srv:<speech_recognize-response> is deprecated: use qt_vosk_app-srv:speech_recognize-response instead.")))

(cl:ensure-generic-function 'transcript-val :lambda-list '(m))
(cl:defmethod transcript-val ((m <speech_recognize-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader qt_vosk_app-srv:transcript-val is deprecated.  Use qt_vosk_app-srv:transcript instead.")
  (transcript m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <speech_recognize-response>) ostream)
  "Serializes a message object of type '<speech_recognize-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'transcript))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'transcript))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <speech_recognize-response>) istream)
  "Deserializes a message object of type '<speech_recognize-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'transcript) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'transcript) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<speech_recognize-response>)))
  "Returns string type for a service object of type '<speech_recognize-response>"
  "qt_vosk_app/speech_recognizeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'speech_recognize-response)))
  "Returns string type for a service object of type 'speech_recognize-response"
  "qt_vosk_app/speech_recognizeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<speech_recognize-response>)))
  "Returns md5sum for a message object of type '<speech_recognize-response>"
  "75ea4008cc551c1370d02f534ba1f8f9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'speech_recognize-response)))
  "Returns md5sum for a message object of type 'speech_recognize-response"
  "75ea4008cc551c1370d02f534ba1f8f9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<speech_recognize-response>)))
  "Returns full string definition for message of type '<speech_recognize-response>"
  (cl:format cl:nil "string transcript~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'speech_recognize-response)))
  "Returns full string definition for message of type 'speech_recognize-response"
  (cl:format cl:nil "string transcript~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <speech_recognize-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'transcript))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <speech_recognize-response>))
  "Converts a ROS message object to a list"
  (cl:list 'speech_recognize-response
    (cl:cons ':transcript (transcript msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'speech_recognize)))
  'speech_recognize-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'speech_recognize)))
  'speech_recognize-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'speech_recognize)))
  "Returns string type for a service object of type '<speech_recognize>"
  "qt_vosk_app/speech_recognize")