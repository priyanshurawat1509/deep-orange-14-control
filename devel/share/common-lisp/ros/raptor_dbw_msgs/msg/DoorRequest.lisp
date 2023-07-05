; Auto-generated. Do not edit!


(cl:in-package raptor_dbw_msgs-msg)


;//! \htmlinclude DoorRequest.msg.html

(cl:defclass <DoorRequest> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass DoorRequest (<DoorRequest>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DoorRequest>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DoorRequest)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name raptor_dbw_msgs-msg:<DoorRequest> is deprecated: use raptor_dbw_msgs-msg:DoorRequest instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <DoorRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader raptor_dbw_msgs-msg:value-val is deprecated.  Use raptor_dbw_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<DoorRequest>)))
    "Constants for message type '<DoorRequest>"
  '((:NO_REQUEST . 0)
    (:LIFTGATE_TOGGLE . 1)
    (:LR_DOOR_TOGGLE . 2)
    (:RR_DOOR_TOGGLE . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'DoorRequest)))
    "Constants for message type 'DoorRequest"
  '((:NO_REQUEST . 0)
    (:LIFTGATE_TOGGLE . 1)
    (:LR_DOOR_TOGGLE . 2)
    (:RR_DOOR_TOGGLE . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DoorRequest>) ostream)
  "Serializes a message object of type '<DoorRequest>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DoorRequest>) istream)
  "Deserializes a message object of type '<DoorRequest>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DoorRequest>)))
  "Returns string type for a message object of type '<DoorRequest>"
  "raptor_dbw_msgs/DoorRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DoorRequest)))
  "Returns string type for a message object of type 'DoorRequest"
  "raptor_dbw_msgs/DoorRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DoorRequest>)))
  "Returns md5sum for a message object of type '<DoorRequest>"
  "348349c0ab8ef301126c09608a2bcad3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DoorRequest)))
  "Returns md5sum for a message object of type 'DoorRequest"
  "348349c0ab8ef301126c09608a2bcad3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DoorRequest>)))
  "Returns full string definition for message of type '<DoorRequest>"
  (cl:format cl:nil "uint8 value~%~%uint8 NO_REQUEST=0~%uint8 LIFTGATE_TOGGLE=1~%uint8 LR_DOOR_TOGGLE=2~%uint8 RR_DOOR_TOGGLE=3~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DoorRequest)))
  "Returns full string definition for message of type 'DoorRequest"
  (cl:format cl:nil "uint8 value~%~%uint8 NO_REQUEST=0~%uint8 LIFTGATE_TOGGLE=1~%uint8 LR_DOOR_TOGGLE=2~%uint8 RR_DOOR_TOGGLE=3~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DoorRequest>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DoorRequest>))
  "Converts a ROS message object to a list"
  (cl:list 'DoorRequest
    (cl:cons ':value (value msg))
))
