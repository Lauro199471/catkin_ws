;; Auto-generated. Do not edit!


(when (boundp 'ros_gui::motionMSG)
  (if (not (find-package "ROS_GUI"))
    (make-package "ROS_GUI"))
  (shadow 'motionMSG (find-package "ROS_GUI")))
(unless (find-package "ROS_GUI::MOTIONMSG")
  (make-package "ROS_GUI::MOTIONMSG"))

(in-package "ROS")
;;//! \htmlinclude motionMSG.msg.html


(defclass ros_gui::motionMSG
  :super ros::object
  :slots (_doMotion ))

(defmethod ros_gui::motionMSG
  (:init
   (&key
    ((:doMotion __doMotion) nil)
    )
   (send-super :init)
   (setq _doMotion __doMotion)
   self)
  (:doMotion
   (&optional __doMotion)
   (if __doMotion (setq _doMotion __doMotion)) _doMotion)
  (:serialization-length
   ()
   (+
    ;; bool _doMotion
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _doMotion
       (if _doMotion (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _doMotion
     (setq _doMotion (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get ros_gui::motionMSG :md5sum-) "07137fc31bb47aafc1cdc6ca1d316779")
(setf (get ros_gui::motionMSG :datatype-) "ros_gui/motionMSG")
(setf (get ros_gui::motionMSG :definition-)
      "bool doMotion

")



(provide :ros_gui/motionMSG "07137fc31bb47aafc1cdc6ca1d316779")


