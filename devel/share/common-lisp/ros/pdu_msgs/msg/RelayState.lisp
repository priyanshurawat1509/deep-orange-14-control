; Auto-generated. Do not edit!


(cl:in-package pdu_msgs-msg)


;//! \htmlinclude RelayState.msg.html

(cl:defclass <RelayState> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RelayState (<RelayState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RelayState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RelayState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pdu_msgs-msg:<RelayState> is deprecated: use pdu_msgs-msg:RelayState instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <RelayState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pdu_msgs-msg:value-val is deprecated.  Use pdu_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RelayState>)))
    "Constants for message type '<RelayState>"
  '((:RELAY_OFF . 0)
    (:RELAY_ON . 1)
    (:MAINTAIN_STATE . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RelayState)))
    "Constants for message type 'RelayState"
  '((:RELAY_OFF . 0)
    (:RELAY_ON . 1)
    (:MAINTAIN_STATE . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RelayState>) ostream)
  "Serializes a message object of type '<RelayState>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RelayState>) istream)
  "Deserializes a message object of type '<RelayState>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RelayState>)))
  "Returns string type for a message object of type '<RelayState>"
  "pdu_msgs/RelayState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RelayState)))
  "Returns string type for a message object of type 'RelayState"
  "pdu_msgs/RelayState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RelayState>)))
  "Returns md5sum for a message object of type '<RelayState>"
  "4fde2a8d5834550d49c7175d413bd2df")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RelayState)))
  "Returns md5sum for a message object of type 'RelayState"
  "4fde2a8d5834550d49c7175d413bd2df")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RelayState>)))
  "Returns full string definition for message of type '<RelayState>"
  (cl:format cl:nil "uint8 value~%~%# MAINTAIN_STATE items perform the same function.~%uint8 RELAY_OFF = 0~%uint8 RELAY_ON = 1~%uint8 MAINTAIN_STATE = 2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RelayState)))
  "Returns full string definition for message of type 'RelayState"
  (cl:format cl:nil "uint8 value~%~%# MAINTAIN_STATE items perform the same function.~%uint8 RELAY_OFF = 0~%uint8 RELAY_ON = 1~%uint8 MAINTAIN_STATE = 2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RelayState>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RelayState>))
  "Converts a ROS message object to a list"
  (cl:list 'RelayState
    (cl:cons ':value (value msg))
))
