; Auto-generated. Do not edit!


(cl:in-package pdu_msgs-msg)


;//! \htmlinclude RelayReport.msg.html

(cl:defclass <RelayReport> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (GridAddress
    :reader GridAddress
    :initarg :GridAddress
    :type cl:fixnum
    :initform 0)
   (relay_1
    :reader relay_1
    :initarg :relay_1
    :type pdu_msgs-msg:RelayStatus
    :initform (cl:make-instance 'pdu_msgs-msg:RelayStatus))
   (relay_2
    :reader relay_2
    :initarg :relay_2
    :type pdu_msgs-msg:RelayStatus
    :initform (cl:make-instance 'pdu_msgs-msg:RelayStatus))
   (relay_3
    :reader relay_3
    :initarg :relay_3
    :type pdu_msgs-msg:RelayStatus
    :initform (cl:make-instance 'pdu_msgs-msg:RelayStatus))
   (relay_4
    :reader relay_4
    :initarg :relay_4
    :type pdu_msgs-msg:RelayStatus
    :initform (cl:make-instance 'pdu_msgs-msg:RelayStatus))
   (relay_5
    :reader relay_5
    :initarg :relay_5
    :type pdu_msgs-msg:RelayStatus
    :initform (cl:make-instance 'pdu_msgs-msg:RelayStatus))
   (relay_6
    :reader relay_6
    :initarg :relay_6
    :type pdu_msgs-msg:RelayStatus
    :initform (cl:make-instance 'pdu_msgs-msg:RelayStatus))
   (relay_7
    :reader relay_7
    :initarg :relay_7
    :type pdu_msgs-msg:RelayStatus
    :initform (cl:make-instance 'pdu_msgs-msg:RelayStatus))
   (relay_8
    :reader relay_8
    :initarg :relay_8
    :type pdu_msgs-msg:RelayStatus
    :initform (cl:make-instance 'pdu_msgs-msg:RelayStatus)))
)

(cl:defclass RelayReport (<RelayReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RelayReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RelayReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pdu_msgs-msg:<RelayReport> is deprecated: use pdu_msgs-msg:RelayReport instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RelayReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pdu_msgs-msg:header-val is deprecated.  Use pdu_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'GridAddress-val :lambda-list '(m))
(cl:defmethod GridAddress-val ((m <RelayReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pdu_msgs-msg:GridAddress-val is deprecated.  Use pdu_msgs-msg:GridAddress instead.")
  (GridAddress m))

(cl:ensure-generic-function 'relay_1-val :lambda-list '(m))
(cl:defmethod relay_1-val ((m <RelayReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pdu_msgs-msg:relay_1-val is deprecated.  Use pdu_msgs-msg:relay_1 instead.")
  (relay_1 m))

(cl:ensure-generic-function 'relay_2-val :lambda-list '(m))
(cl:defmethod relay_2-val ((m <RelayReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pdu_msgs-msg:relay_2-val is deprecated.  Use pdu_msgs-msg:relay_2 instead.")
  (relay_2 m))

(cl:ensure-generic-function 'relay_3-val :lambda-list '(m))
(cl:defmethod relay_3-val ((m <RelayReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pdu_msgs-msg:relay_3-val is deprecated.  Use pdu_msgs-msg:relay_3 instead.")
  (relay_3 m))

(cl:ensure-generic-function 'relay_4-val :lambda-list '(m))
(cl:defmethod relay_4-val ((m <RelayReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pdu_msgs-msg:relay_4-val is deprecated.  Use pdu_msgs-msg:relay_4 instead.")
  (relay_4 m))

(cl:ensure-generic-function 'relay_5-val :lambda-list '(m))
(cl:defmethod relay_5-val ((m <RelayReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pdu_msgs-msg:relay_5-val is deprecated.  Use pdu_msgs-msg:relay_5 instead.")
  (relay_5 m))

(cl:ensure-generic-function 'relay_6-val :lambda-list '(m))
(cl:defmethod relay_6-val ((m <RelayReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pdu_msgs-msg:relay_6-val is deprecated.  Use pdu_msgs-msg:relay_6 instead.")
  (relay_6 m))

(cl:ensure-generic-function 'relay_7-val :lambda-list '(m))
(cl:defmethod relay_7-val ((m <RelayReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pdu_msgs-msg:relay_7-val is deprecated.  Use pdu_msgs-msg:relay_7 instead.")
  (relay_7 m))

(cl:ensure-generic-function 'relay_8-val :lambda-list '(m))
(cl:defmethod relay_8-val ((m <RelayReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pdu_msgs-msg:relay_8-val is deprecated.  Use pdu_msgs-msg:relay_8 instead.")
  (relay_8 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RelayReport>) ostream)
  "Serializes a message object of type '<RelayReport>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'GridAddress)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'relay_1) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'relay_2) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'relay_3) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'relay_4) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'relay_5) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'relay_6) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'relay_7) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'relay_8) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RelayReport>) istream)
  "Deserializes a message object of type '<RelayReport>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'GridAddress)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'relay_1) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'relay_2) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'relay_3) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'relay_4) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'relay_5) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'relay_6) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'relay_7) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'relay_8) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RelayReport>)))
  "Returns string type for a message object of type '<RelayReport>"
  "pdu_msgs/RelayReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RelayReport)))
  "Returns string type for a message object of type 'RelayReport"
  "pdu_msgs/RelayReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RelayReport>)))
  "Returns md5sum for a message object of type '<RelayReport>"
  "5013cdfb5b7f5657dbdcb6339106d711")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RelayReport)))
  "Returns md5sum for a message object of type 'RelayReport"
  "5013cdfb5b7f5657dbdcb6339106d711")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RelayReport>)))
  "Returns full string definition for message of type '<RelayReport>"
  (cl:format cl:nil "Header header~%~%# Fuse status enumeration~%uint8 GridAddress~%~%RelayStatus relay_1~%RelayStatus relay_2~%RelayStatus relay_3~%RelayStatus relay_4~%RelayStatus relay_5~%RelayStatus relay_6~%RelayStatus relay_7~%RelayStatus relay_8~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: pdu_msgs/RelayStatus~%uint8 value~%~%uint8 OK = 0~%uint8 RELAY_COIL_OPEN = 1~%uint8 RELAY_COIL_SHORTED = 2~%uint8 NORM_OPEN_RELAY_OPEN = 3~%uint8 NORM_CLOSED_RELAY_OPEN = 4~%uint8 COIL_NOT_POWERED = 5~%uint8 NORM_OPEN_RELAY_SHORTED = 6~%uint8 NORM_CLOSED_RELAY_SHORTED = 7~%uint8 RESERVED_01 = 8~%uint8 RESERVED_02 = 9~%uint8 RESERVED_03 = 10~%uint8 HIGH_SIDE_FAULT = 11~%uint8 HIGH_SIDE_OPEN_LOAD = 12~%uint8 HIGH_SIDE_OVER_VOLTAGE = 13~%uint8 RESERVED_04 = 14~%uint8 RELAY_LOCATION_NOT_USED = 15~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RelayReport)))
  "Returns full string definition for message of type 'RelayReport"
  (cl:format cl:nil "Header header~%~%# Fuse status enumeration~%uint8 GridAddress~%~%RelayStatus relay_1~%RelayStatus relay_2~%RelayStatus relay_3~%RelayStatus relay_4~%RelayStatus relay_5~%RelayStatus relay_6~%RelayStatus relay_7~%RelayStatus relay_8~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: pdu_msgs/RelayStatus~%uint8 value~%~%uint8 OK = 0~%uint8 RELAY_COIL_OPEN = 1~%uint8 RELAY_COIL_SHORTED = 2~%uint8 NORM_OPEN_RELAY_OPEN = 3~%uint8 NORM_CLOSED_RELAY_OPEN = 4~%uint8 COIL_NOT_POWERED = 5~%uint8 NORM_OPEN_RELAY_SHORTED = 6~%uint8 NORM_CLOSED_RELAY_SHORTED = 7~%uint8 RESERVED_01 = 8~%uint8 RESERVED_02 = 9~%uint8 RESERVED_03 = 10~%uint8 HIGH_SIDE_FAULT = 11~%uint8 HIGH_SIDE_OPEN_LOAD = 12~%uint8 HIGH_SIDE_OVER_VOLTAGE = 13~%uint8 RESERVED_04 = 14~%uint8 RELAY_LOCATION_NOT_USED = 15~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RelayReport>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'relay_1))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'relay_2))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'relay_3))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'relay_4))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'relay_5))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'relay_6))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'relay_7))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'relay_8))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RelayReport>))
  "Converts a ROS message object to a list"
  (cl:list 'RelayReport
    (cl:cons ':header (header msg))
    (cl:cons ':GridAddress (GridAddress msg))
    (cl:cons ':relay_1 (relay_1 msg))
    (cl:cons ':relay_2 (relay_2 msg))
    (cl:cons ':relay_3 (relay_3 msg))
    (cl:cons ':relay_4 (relay_4 msg))
    (cl:cons ':relay_5 (relay_5 msg))
    (cl:cons ':relay_6 (relay_6 msg))
    (cl:cons ':relay_7 (relay_7 msg))
    (cl:cons ':relay_8 (relay_8 msg))
))
