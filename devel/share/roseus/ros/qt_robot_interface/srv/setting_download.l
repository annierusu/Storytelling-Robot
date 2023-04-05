;; Auto-generated. Do not edit!


(when (boundp 'qt_robot_interface::setting_download)
  (if (not (find-package "QT_ROBOT_INTERFACE"))
    (make-package "QT_ROBOT_INTERFACE"))
  (shadow 'setting_download (find-package "QT_ROBOT_INTERFACE")))
(unless (find-package "QT_ROBOT_INTERFACE::SETTING_DOWNLOAD")
  (make-package "QT_ROBOT_INTERFACE::SETTING_DOWNLOAD"))
(unless (find-package "QT_ROBOT_INTERFACE::SETTING_DOWNLOADREQUEST")
  (make-package "QT_ROBOT_INTERFACE::SETTING_DOWNLOADREQUEST"))
(unless (find-package "QT_ROBOT_INTERFACE::SETTING_DOWNLOADRESPONSE")
  (make-package "QT_ROBOT_INTERFACE::SETTING_DOWNLOADRESPONSE"))

(in-package "ROS")





(defclass qt_robot_interface::setting_downloadRequest
  :super ros::object
  :slots (_filepath ))

(defmethod qt_robot_interface::setting_downloadRequest
  (:init
   (&key
    ((:filepath __filepath) "")
    )
   (send-super :init)
   (setq _filepath (string __filepath))
   self)
  (:filepath
   (&optional __filepath)
   (if __filepath (setq _filepath __filepath)) _filepath)
  (:serialization-length
   ()
   (+
    ;; string _filepath
    4 (length _filepath)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _filepath
       (write-long (length _filepath) s) (princ _filepath s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _filepath
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _filepath (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass qt_robot_interface::setting_downloadResponse
  :super ros::object
  :slots (_data _status ))

(defmethod qt_robot_interface::setting_downloadResponse
  (:init
   (&key
    ((:data __data) "")
    ((:status __status) nil)
    )
   (send-super :init)
   (setq _data (string __data))
   (setq _status __status)
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:status
   (&optional (__status :null))
   (if (not (eq __status :null)) (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; string _data
    4 (length _data)
    ;; bool _status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _data
       (write-long (length _data) s) (princ _data s)
     ;; bool _status
       (if _status (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _status
     (setq _status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass qt_robot_interface::setting_download
  :super ros::object
  :slots ())

(setf (get qt_robot_interface::setting_download :md5sum-) "c2187fcc5b554d3b041641bcea605d5a")
(setf (get qt_robot_interface::setting_download :datatype-) "qt_robot_interface/setting_download")
(setf (get qt_robot_interface::setting_download :request) qt_robot_interface::setting_downloadRequest)
(setf (get qt_robot_interface::setting_download :response) qt_robot_interface::setting_downloadResponse)

(defmethod qt_robot_interface::setting_downloadRequest
  (:response () (instance qt_robot_interface::setting_downloadResponse :init)))

(setf (get qt_robot_interface::setting_downloadRequest :md5sum-) "c2187fcc5b554d3b041641bcea605d5a")
(setf (get qt_robot_interface::setting_downloadRequest :datatype-) "qt_robot_interface/setting_downloadRequest")
(setf (get qt_robot_interface::setting_downloadRequest :definition-)
      "string filepath
---
string data
bool status

")

(setf (get qt_robot_interface::setting_downloadResponse :md5sum-) "c2187fcc5b554d3b041641bcea605d5a")
(setf (get qt_robot_interface::setting_downloadResponse :datatype-) "qt_robot_interface/setting_downloadResponse")
(setf (get qt_robot_interface::setting_downloadResponse :definition-)
      "string filepath
---
string data
bool status

")



(provide :qt_robot_interface/setting_download "c2187fcc5b554d3b041641bcea605d5a")


