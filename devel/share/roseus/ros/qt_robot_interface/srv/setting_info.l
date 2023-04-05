;; Auto-generated. Do not edit!


(when (boundp 'qt_robot_interface::setting_info)
  (if (not (find-package "QT_ROBOT_INTERFACE"))
    (make-package "QT_ROBOT_INTERFACE"))
  (shadow 'setting_info (find-package "QT_ROBOT_INTERFACE")))
(unless (find-package "QT_ROBOT_INTERFACE::SETTING_INFO")
  (make-package "QT_ROBOT_INTERFACE::SETTING_INFO"))
(unless (find-package "QT_ROBOT_INTERFACE::SETTING_INFOREQUEST")
  (make-package "QT_ROBOT_INTERFACE::SETTING_INFOREQUEST"))
(unless (find-package "QT_ROBOT_INTERFACE::SETTING_INFORESPONSE")
  (make-package "QT_ROBOT_INTERFACE::SETTING_INFORESPONSE"))

(in-package "ROS")





(defclass qt_robot_interface::setting_infoRequest
  :super ros::object
  :slots ())

(defmethod qt_robot_interface::setting_infoRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass qt_robot_interface::setting_infoResponse
  :super ros::object
  :slots (_info ))

(defmethod qt_robot_interface::setting_infoResponse
  (:init
   (&key
    ((:info __info) "")
    )
   (send-super :init)
   (setq _info (string __info))
   self)
  (:info
   (&optional __info)
   (if __info (setq _info __info)) _info)
  (:serialization-length
   ()
   (+
    ;; string _info
    4 (length _info)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _info
       (write-long (length _info) s) (princ _info s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _info
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _info (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass qt_robot_interface::setting_info
  :super ros::object
  :slots ())

(setf (get qt_robot_interface::setting_info :md5sum-) "c10fc26d5cca9a4b9114f5fc5dea9570")
(setf (get qt_robot_interface::setting_info :datatype-) "qt_robot_interface/setting_info")
(setf (get qt_robot_interface::setting_info :request) qt_robot_interface::setting_infoRequest)
(setf (get qt_robot_interface::setting_info :response) qt_robot_interface::setting_infoResponse)

(defmethod qt_robot_interface::setting_infoRequest
  (:response () (instance qt_robot_interface::setting_infoResponse :init)))

(setf (get qt_robot_interface::setting_infoRequest :md5sum-) "c10fc26d5cca9a4b9114f5fc5dea9570")
(setf (get qt_robot_interface::setting_infoRequest :datatype-) "qt_robot_interface/setting_infoRequest")
(setf (get qt_robot_interface::setting_infoRequest :definition-)
      "---
string info

")

(setf (get qt_robot_interface::setting_infoResponse :md5sum-) "c10fc26d5cca9a4b9114f5fc5dea9570")
(setf (get qt_robot_interface::setting_infoResponse :datatype-) "qt_robot_interface/setting_infoResponse")
(setf (get qt_robot_interface::setting_infoResponse :definition-)
      "---
string info

")



(provide :qt_robot_interface/setting_info "c10fc26d5cca9a4b9114f5fc5dea9570")


