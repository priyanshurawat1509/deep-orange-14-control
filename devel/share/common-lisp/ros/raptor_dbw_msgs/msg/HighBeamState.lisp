; Auto-generated. Do not edit!


(cl:in-package raptor_dbw_msgs-msg)


;//! \htmlinclude HighBeamState.msg.html

(cl:defclass <HighBeamState> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass HighBeamState (<HighBeamState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HighBeamState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HighBeamState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name raptor_dbw_msgs-msg:<HighBeamState> is deprecated: use raptor_dbw_msgs-msg:HighBeamState instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <HighBeamState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader raptor_dbw_msgs-msg:value-val is deprecated.  Use raptor_dbw_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<HighBeamState>)))
    "Constants for message type '<HighBeamState>"
  '((:SNA . 0)
    (:RESERVED . 1)
    (:ON . 2)
    (:OFF . 0))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'HighBeamState)))
    "Constants for message type 'HighBeamState"
  '((:SNA . 0)
    (:RESERVED . 1)
    (:ON . 2)
    (:OFF . 0))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HighBeamState>) ostream)
  "Serializes a message object of type '<HighBeamState>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HighBeamState>) istream)
  "Deserializes a message object of type '<HighBeamState>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HighBeamState>)))
  "Returns string type for a message object of type '<HighBeamState>"
  "raptor_dbw_msgs/HighBeamState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HighBeamState)))
  "Returns string type for a message object of type 'HighBeamState"
  "raptor_dbw_msgs/HighBeamState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HighBeamState>)))
  "Returns md5sum for a message object of type '<HighBeamState>"
  "09a82263284b8122eae16e418119f715")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HighBeamState)))
  "Returns md5sum for a message object of type 'HighBeamState"
  "09a82263284b8122eae16e418119f715")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HighBeamState>)))
  "Returns full string definition for message of type '<HighBeamState>"
  (cl:format cl:nil "uint8 value~%~%uint8 SNA = 0~%uint8 RESERVED = 1~%uint8 ON = 2~%uint8 OFF = 0~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HighBeamState)))
  "Returns full string definition for message of type 'HighBeamState"
  (cl:format cl:nil "uint8 value~%~%uint8 SNA = 0~%uint8 RESERVED = 1~%uint8 ON = 2~%uint8 OFF = 0~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HighBeamState>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HighBeamState>))
  "Converts a ROS message object to a list"
  (cl:list 'HighBeamState
    (cl:cons ':value (value msg))
))
