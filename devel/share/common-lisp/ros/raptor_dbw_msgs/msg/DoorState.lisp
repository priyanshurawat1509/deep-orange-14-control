; Auto-generated. Do not edit!


(cl:in-package raptor_dbw_msgs-msg)


;//! \htmlinclude DoorState.msg.html

(cl:defclass <DoorState> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass DoorState (<DoorState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DoorState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DoorState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name raptor_dbw_msgs-msg:<DoorState> is deprecated: use raptor_dbw_msgs-msg:DoorState instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <DoorState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader raptor_dbw_msgs-msg:value-val is deprecated.  Use raptor_dbw_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DoorState>)))
    "Constants for message type '<DoorState>"
  '((:UNDEFINED . 0)
    (:CLOSED . 1)
    (:OPEN . 2)
    (:SNA . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DoorState)))
    "Constants for message type 'DoorState"
  '((:UNDEFINED . 0)
    (:CLOSED . 1)
    (:OPEN . 2)
    (:SNA . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DoorState>) ostream)
  "Serializes a message object of type '<DoorState>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DoorState>) istream)
  "Deserializes a message object of type '<DoorState>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DoorState>)))
  "Returns string type for a message object of type '<DoorState>"
  "raptor_dbw_msgs/DoorState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DoorState)))
  "Returns string type for a message object of type 'DoorState"
  "raptor_dbw_msgs/DoorState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DoorState>)))
  "Returns md5sum for a message object of type '<DoorState>"
  "734fc9673f17db31d1d2f7bd478bd498")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DoorState)))
  "Returns md5sum for a message object of type 'DoorState"
  "734fc9673f17db31d1d2f7bd478bd498")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DoorState>)))
  "Returns full string definition for message of type '<DoorState>"
  (cl:format cl:nil "uint8 value~%~%uint8 UNDEFINED = 0~%uint8 CLOSED = 1~%uint8 OPEN = 2~%uint8 SNA = 3~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DoorState)))
  "Returns full string definition for message of type 'DoorState"
  (cl:format cl:nil "uint8 value~%~%uint8 UNDEFINED = 0~%uint8 CLOSED = 1~%uint8 OPEN = 2~%uint8 SNA = 3~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DoorState>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DoorState>))
  "Converts a ROS message object to a list"
  (cl:list 'DoorState
    (cl:cons ':value (value msg))
))
