
(cl:in-package :asdf)

(defsystem "qt_vosk_app-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "speech_recognize" :depends-on ("_package_speech_recognize"))
    (:file "_package_speech_recognize" :depends-on ("_package"))
  ))