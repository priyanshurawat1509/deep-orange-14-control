; Auto-generated. Do not edit!


(cl:in-package pdu_msgs-msg)


;//! \htmlinclude FuseStatus.msg.html

(cl:defclass <FuseStatus> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass FuseStatus (<FuseStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FuseStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FuseStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pdu_msgs-msg:<FuseStatus> is deprecated: use pdu_msgs-msg:FuseStatus instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <FuseStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pdu_msgs-msg:value-val is deprecated.  Use pdu_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<FuseStatus>)))
    "Constants for message type '<FuseStatus>"
  '((:NO_FAULT . 0)
    (:BLOWN . 1)
    (:NOT_POWERED . 2)
    (:NOT_USED . 3))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'FuseStatus)))
    "Constants for message type 'FuseStatus"
  '((:NO_FAULT . 0)
    (:BLOWN . 1)
    (:NOT_POWERED . 2)
    (:NOT_USED . 3))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FuseStatus>) ostream)
  "Serializes a message object of type '<FuseStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FuseStatus>) istream)
  "Deserializes a message object of type '<FuseStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FuseStatus>)))
  "Returns string type for a message object of type '<FuseStatus>"
  "pdu_msgs/FuseStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FuseStatus)))
  "Returns string type for a message object of type 'FuseStatus"
  "pdu_msgs/FuseStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FuseStatus>)))
  "Returns md5sum for a message object of type '<FuseStatus>"
  "04b2eb2c07f677f2fee7409032421fc8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FuseStatus)))
  "Returns md5sum for a message object of type 'FuseStatus"
  "04b2eb2c07f677f2fee7409032421fc8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FuseStatus>)))
  "Returns full string definition for message of type '<FuseStatus>"
  (cl:format cl:nil "uint8 value~%~%uint8 NO_FAULT = 0~%uint8 BLOWN = 1~%uint8 NOT_POWERED = 2~%uint8 NOT_USED = 3~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FuseStatus)))
  "Returns full string definition for message of type 'FuseStatus"
  (cl:format cl:nil "uint8 value~%~%uint8 NO_FAULT = 0~%uint8 BLOWN = 1~%uint8 NOT_POWERED = 2~%uint8 NOT_USED = 3~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FuseStatus>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FuseStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'FuseStatus
    (cl:cons ':value (value msg))
))
