; Auto-generated. Do not edit!


(cl:in-package pdu_msgs-msg)


;//! \htmlinclude RelayStatus.msg.html

(cl:defclass <RelayStatus> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RelayStatus (<RelayStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RelayStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RelayStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pdu_msgs-msg:<RelayStatus> is deprecated: use pdu_msgs-msg:RelayStatus instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <RelayStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pdu_msgs-msg:value-val is deprecated.  Use pdu_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<RelayStatus>)))
    "Constants for message type '<RelayStatus>"
  '((:OK . 0)
    (:RELAY_COIL_OPEN . 1)
    (:RELAY_COIL_SHORTED . 2)
    (:NORM_OPEN_RELAY_OPEN . 3)
    (:NORM_CLOSED_RELAY_OPEN . 4)
    (:COIL_NOT_POWERED . 5)
    (:NORM_OPEN_RELAY_SHORTED . 6)
    (:NORM_CLOSED_RELAY_SHORTED . 7)
    (:RESERVED_01 . 8)
    (:RESERVED_02 . 9)
    (:RESERVED_03 . 10)
    (:HIGH_SIDE_FAULT . 11)
    (:HIGH_SIDE_OPEN_LOAD . 12)
    (:HIGH_SIDE_OVER_VOLTAGE . 13)
    (:RESERVED_04 . 14)
    (:RELAY_LOCATION_NOT_USED . 15))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'RelayStatus)))
    "Constants for message type 'RelayStatus"
  '((:OK . 0)
    (:RELAY_COIL_OPEN . 1)
    (:RELAY_COIL_SHORTED . 2)
    (:NORM_OPEN_RELAY_OPEN . 3)
    (:NORM_CLOSED_RELAY_OPEN . 4)
    (:COIL_NOT_POWERED . 5)
    (:NORM_OPEN_RELAY_SHORTED . 6)
    (:NORM_CLOSED_RELAY_SHORTED . 7)
    (:RESERVED_01 . 8)
    (:RESERVED_02 . 9)
    (:RESERVED_03 . 10)
    (:HIGH_SIDE_FAULT . 11)
    (:HIGH_SIDE_OPEN_LOAD . 12)
    (:HIGH_SIDE_OVER_VOLTAGE . 13)
    (:RESERVED_04 . 14)
    (:RELAY_LOCATION_NOT_USED . 15))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RelayStatus>) ostream)
  "Serializes a message object of type '<RelayStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RelayStatus>) istream)
  "Deserializes a message object of type '<RelayStatus>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RelayStatus>)))
  "Returns string type for a message object of type '<RelayStatus>"
  "pdu_msgs/RelayStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RelayStatus)))
  "Returns string type for a message object of type 'RelayStatus"
  "pdu_msgs/RelayStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RelayStatus>)))
  "Returns md5sum for a message object of type '<RelayStatus>"
  "747c0056a2372beaf7485ce2d5289570")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RelayStatus)))
  "Returns md5sum for a message object of type 'RelayStatus"
  "747c0056a2372beaf7485ce2d5289570")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RelayStatus>)))
  "Returns full string definition for message of type '<RelayStatus>"
  (cl:format cl:nil "uint8 value~%~%uint8 OK = 0~%uint8 RELAY_COIL_OPEN = 1~%uint8 RELAY_COIL_SHORTED = 2~%uint8 NORM_OPEN_RELAY_OPEN = 3~%uint8 NORM_CLOSED_RELAY_OPEN = 4~%uint8 COIL_NOT_POWERED = 5~%uint8 NORM_OPEN_RELAY_SHORTED = 6~%uint8 NORM_CLOSED_RELAY_SHORTED = 7~%uint8 RESERVED_01 = 8~%uint8 RESERVED_02 = 9~%uint8 RESERVED_03 = 10~%uint8 HIGH_SIDE_FAULT = 11~%uint8 HIGH_SIDE_OPEN_LOAD = 12~%uint8 HIGH_SIDE_OVER_VOLTAGE = 13~%uint8 RESERVED_04 = 14~%uint8 RELAY_LOCATION_NOT_USED = 15~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RelayStatus)))
  "Returns full string definition for message of type 'RelayStatus"
  (cl:format cl:nil "uint8 value~%~%uint8 OK = 0~%uint8 RELAY_COIL_OPEN = 1~%uint8 RELAY_COIL_SHORTED = 2~%uint8 NORM_OPEN_RELAY_OPEN = 3~%uint8 NORM_CLOSED_RELAY_OPEN = 4~%uint8 COIL_NOT_POWERED = 5~%uint8 NORM_OPEN_RELAY_SHORTED = 6~%uint8 NORM_CLOSED_RELAY_SHORTED = 7~%uint8 RESERVED_01 = 8~%uint8 RESERVED_02 = 9~%uint8 RESERVED_03 = 10~%uint8 HIGH_SIDE_FAULT = 11~%uint8 HIGH_SIDE_OPEN_LOAD = 12~%uint8 HIGH_SIDE_OVER_VOLTAGE = 13~%uint8 RESERVED_04 = 14~%uint8 RELAY_LOCATION_NOT_USED = 15~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RelayStatus>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RelayStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'RelayStatus
    (cl:cons ':value (value msg))
))
