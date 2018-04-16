; Auto-generated. Do not edit!


(cl:in-package ros_gui-msg)


;//! \htmlinclude motionMSG.msg.html

(cl:defclass <motionMSG> (roslisp-msg-protocol:ros-message)
  ((doMotion
    :reader doMotion
    :initarg :doMotion
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass motionMSG (<motionMSG>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <motionMSG>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'motionMSG)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ros_gui-msg:<motionMSG> is deprecated: use ros_gui-msg:motionMSG instead.")))

(cl:ensure-generic-function 'doMotion-val :lambda-list '(m))
(cl:defmethod doMotion-val ((m <motionMSG>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ros_gui-msg:doMotion-val is deprecated.  Use ros_gui-msg:doMotion instead.")
  (doMotion m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <motionMSG>) ostream)
  "Serializes a message object of type '<motionMSG>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'doMotion) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <motionMSG>) istream)
  "Deserializes a message object of type '<motionMSG>"
    (cl:setf (cl:slot-value msg 'doMotion) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<motionMSG>)))
  "Returns string type for a message object of type '<motionMSG>"
  "ros_gui/motionMSG")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'motionMSG)))
  "Returns string type for a message object of type 'motionMSG"
  "ros_gui/motionMSG")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<motionMSG>)))
  "Returns md5sum for a message object of type '<motionMSG>"
  "07137fc31bb47aafc1cdc6ca1d316779")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'motionMSG)))
  "Returns md5sum for a message object of type 'motionMSG"
  "07137fc31bb47aafc1cdc6ca1d316779")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<motionMSG>)))
  "Returns full string definition for message of type '<motionMSG>"
  (cl:format cl:nil "bool doMotion~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'motionMSG)))
  "Returns full string definition for message of type 'motionMSG"
  (cl:format cl:nil "bool doMotion~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <motionMSG>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <motionMSG>))
  "Converts a ROS message object to a list"
  (cl:list 'motionMSG
    (cl:cons ':doMotion (doMotion msg))
))
