;; Auto-generated. Do not edit!


(when (boundp 'qt_robot_interface::setting_upload)
  (if (not (find-package "QT_ROBOT_INTERFACE"))
    (make-package "QT_ROBOT_INTERFACE"))
  (shadow 'setting_upload (find-package "QT_ROBOT_INTERFACE")))
(unless (find-package "QT_ROBOT_INTERFACE::SETTING_UPLOAD")
  (make-package "QT_ROBOT_INTERFACE::SETTING_UPLOAD"))
(unless (find-package "QT_ROBOT_INTERFACE::SETTING_UPLOADREQUEST")
  (make-package "QT_ROBOT_INTERFACE::SETTING_UPLOADREQUEST"))
(unless (find-package "QT_ROBOT_INTERFACE::SETTING_UPLOADRESPONSE")
  (make-package "QT_ROBOT_INTERFACE::SETTING_UPLOADRESPONSE"))

(in-package "ROS")





(defclass qt_robot_interface::setting_uploadRequest
  :super ros::object
  :slots (_data _filepath _permission ))

(defmethod qt_robot_interface::setting_uploadRequest
  (:init
   (&key
    ((:data __data) "")
    ((:filepath __filepath) "")
    ((:permission __permission) "")
    )
   (send-super :init)
   (setq _data (string __data))
   (setq _filepath (string __filepath))
   (setq _permission (string __permission))
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:filepath
   (&optional __filepath)
   (if __filepath (setq _filepath __filepath)) _filepath)
  (:permission
   (&optional __permission)
   (if __permission (setq _permission __permission)) _permission)
  (:serialization-length
   ()
   (+
    ;; string _data
    4 (length _data)
    ;; string _filepath
    4 (length _filepath)
    ;; string _permission
    4 (length _permission)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _data
       (write-long (length _data) s) (princ _data s)
     ;; string _filepath
       (write-long (length _filepath) s) (princ _filepath s)
     ;; string _permission
       (write-long (length _permission) s) (princ _permission s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _filepath
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _filepath (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _permission
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _permission (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass qt_robot_interface::setting_uploadResponse
  :super ros::object
  :slots (_status ))

(defmethod qt_robot_interface::setting_uploadResponse
  (:init
   (&key
    ((:status __status) nil)
    )
   (send-super :init)
   (setq _status __status)
   self)
  (:status
   (&optional (__status :null))
   (if (not (eq __status :null)) (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; bool _status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _status
       (if _status (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _status
     (setq _status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass qt_robot_interface::setting_upload
  :super ros::object
  :slots ())

(setf (get qt_robot_interface::setting_upload :md5sum-) "ca9249eb5cbf48983e24f8f142ef641c")
(setf (get qt_robot_interface::setting_upload :datatype-) "qt_robot_interface/setting_upload")
(setf (get qt_robot_interface::setting_upload :request) qt_robot_interface::setting_uploadRequest)
(setf (get qt_robot_interface::setting_upload :response) qt_robot_interface::setting_uploadResponse)

(defmethod qt_robot_interface::setting_uploadRequest
  (:response () (instance qt_robot_interface::setting_uploadResponse :init)))

(setf (get qt_robot_interface::setting_uploadRequest :md5sum-) "ca9249eb5cbf48983e24f8f142ef641c")
(setf (get qt_robot_interface::setting_uploadRequest :datatype-) "qt_robot_interface/setting_uploadRequest")
(setf (get qt_robot_interface::setting_uploadRequest :definition-)
      "string data
string filepath
string permission
---
bool status

")

(setf (get qt_robot_interface::setting_uploadResponse :md5sum-) "ca9249eb5cbf48983e24f8f142ef641c")
(setf (get qt_robot_interface::setting_uploadResponse :datatype-) "qt_robot_interface/setting_uploadResponse")
(setf (get qt_robot_interface::setting_uploadResponse :definition-)
      "string data
string filepath
string permission
---
bool status

")



(provide :qt_robot_interface/setting_upload "ca9249eb5cbf48983e24f8f142ef641c")


