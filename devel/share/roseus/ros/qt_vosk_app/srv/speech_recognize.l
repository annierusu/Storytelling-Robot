;; Auto-generated. Do not edit!


(when (boundp 'qt_vosk_app::speech_recognize)
  (if (not (find-package "QT_VOSK_APP"))
    (make-package "QT_VOSK_APP"))
  (shadow 'speech_recognize (find-package "QT_VOSK_APP")))
(unless (find-package "QT_VOSK_APP::SPEECH_RECOGNIZE")
  (make-package "QT_VOSK_APP::SPEECH_RECOGNIZE"))
(unless (find-package "QT_VOSK_APP::SPEECH_RECOGNIZEREQUEST")
  (make-package "QT_VOSK_APP::SPEECH_RECOGNIZEREQUEST"))
(unless (find-package "QT_VOSK_APP::SPEECH_RECOGNIZERESPONSE")
  (make-package "QT_VOSK_APP::SPEECH_RECOGNIZERESPONSE"))

(in-package "ROS")





(defclass qt_vosk_app::speech_recognizeRequest
  :super ros::object
  :slots (_language _options _timeout ))

(defmethod qt_vosk_app::speech_recognizeRequest
  (:init
   (&key
    ((:language __language) "")
    ((:options __options) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:timeout __timeout) 0)
    )
   (send-super :init)
   (setq _language (string __language))
   (setq _options __options)
   (setq _timeout (round __timeout))
   self)
  (:language
   (&optional __language)
   (if __language (setq _language __language)) _language)
  (:options
   (&optional __options)
   (if __options (setq _options __options)) _options)
  (:timeout
   (&optional __timeout)
   (if __timeout (setq _timeout __timeout)) _timeout)
  (:serialization-length
   ()
   (+
    ;; string _language
    4 (length _language)
    ;; string[] _options
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _options)) 4
    ;; int64 _timeout
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _language
       (write-long (length _language) s) (princ _language s)
     ;; string[] _options
     (write-long (length _options) s)
     (dolist (elem _options)
       (write-long (length elem) s) (princ elem s)
       )
     ;; int64 _timeout
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _timeout (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _timeout) (= (length (_timeout . bv)) 2)) ;; bignum
              (write-long (ash (elt (_timeout . bv) 0) 0) s)
              (write-long (ash (elt (_timeout . bv) 1) -1) s))
             ((and (class _timeout) (= (length (_timeout . bv)) 1)) ;; big1
              (write-long (elt (_timeout . bv) 0) s)
              (write-long (if (>= _timeout 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _timeout s)(write-long (if (>= _timeout 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _language
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _language (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _options
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _options (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _options i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; int64 _timeout
#+(or :alpha :irix6 :x86_64)
      (setf _timeout (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _timeout (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(defclass qt_vosk_app::speech_recognizeResponse
  :super ros::object
  :slots (_transcript ))

(defmethod qt_vosk_app::speech_recognizeResponse
  (:init
   (&key
    ((:transcript __transcript) "")
    )
   (send-super :init)
   (setq _transcript (string __transcript))
   self)
  (:transcript
   (&optional __transcript)
   (if __transcript (setq _transcript __transcript)) _transcript)
  (:serialization-length
   ()
   (+
    ;; string _transcript
    4 (length _transcript)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _transcript
       (write-long (length _transcript) s) (princ _transcript s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _transcript
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _transcript (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass qt_vosk_app::speech_recognize
  :super ros::object
  :slots ())

(setf (get qt_vosk_app::speech_recognize :md5sum-) "75ea4008cc551c1370d02f534ba1f8f9")
(setf (get qt_vosk_app::speech_recognize :datatype-) "qt_vosk_app/speech_recognize")
(setf (get qt_vosk_app::speech_recognize :request) qt_vosk_app::speech_recognizeRequest)
(setf (get qt_vosk_app::speech_recognize :response) qt_vosk_app::speech_recognizeResponse)

(defmethod qt_vosk_app::speech_recognizeRequest
  (:response () (instance qt_vosk_app::speech_recognizeResponse :init)))

(setf (get qt_vosk_app::speech_recognizeRequest :md5sum-) "75ea4008cc551c1370d02f534ba1f8f9")
(setf (get qt_vosk_app::speech_recognizeRequest :datatype-) "qt_vosk_app/speech_recognizeRequest")
(setf (get qt_vosk_app::speech_recognizeRequest :definition-)
      "string language
string[] options
int64 timeout
---
string transcript

")

(setf (get qt_vosk_app::speech_recognizeResponse :md5sum-) "75ea4008cc551c1370d02f534ba1f8f9")
(setf (get qt_vosk_app::speech_recognizeResponse :datatype-) "qt_vosk_app/speech_recognizeResponse")
(setf (get qt_vosk_app::speech_recognizeResponse :definition-)
      "string language
string[] options
int64 timeout
---
string transcript

")



(provide :qt_vosk_app/speech_recognize "75ea4008cc551c1370d02f534ba1f8f9")


