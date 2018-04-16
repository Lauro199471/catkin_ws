
(cl:in-package :asdf)

(defsystem "ros_gui-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "motionMSG" :depends-on ("_package_motionMSG"))
    (:file "_package_motionMSG" :depends-on ("_package"))
  ))