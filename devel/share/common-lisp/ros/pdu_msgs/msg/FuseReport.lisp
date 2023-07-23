; Auto-generated. Do not edit!


(cl:in-package pdu_msgs-msg)


;//! \htmlinclude FuseReport.msg.html

(cl:defclass <FuseReport> (roslisp-msg-protocol:ros-message)
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
   (fuse_1
    :reader fuse_1
    :initarg :fuse_1
    :type pdu_msgs-msg:FuseStatus
    :initform (cl:make-instance 'pdu_msgs-msg:FuseStatus))
   (fuse_2
    :reader fuse_2
    :initarg :fuse_2
    :type pdu_msgs-msg:FuseStatus
    :initform (cl:make-instance 'pdu_msgs-msg:FuseStatus))
   (fuse_3
    :reader fuse_3
    :initarg :fuse_3
    :type pdu_msgs-msg:FuseStatus
    :initform (cl:make-instance 'pdu_msgs-msg:FuseStatus))
   (fuse_4
    :reader fuse_4
    :initarg :fuse_4
    :type pdu_msgs-msg:FuseStatus
    :initform (cl:make-instance 'pdu_msgs-msg:FuseStatus))
   (fuse_5
    :reader fuse_5
    :initarg :fuse_5
    :type pdu_msgs-msg:FuseStatus
    :initform (cl:make-instance 'pdu_msgs-msg:FuseStatus))
   (fuse_6
    :reader fuse_6
    :initarg :fuse_6
    :type pdu_msgs-msg:FuseStatus
    :initform (cl:make-instance 'pdu_msgs-msg:FuseStatus))
   (fuse_7
    :reader fuse_7
    :initarg :fuse_7
    :type pdu_msgs-msg:FuseStatus
    :initform (cl:make-instance 'pdu_msgs-msg:FuseStatus))
   (fuse_8
    :reader fuse_8
    :initarg :fuse_8
    :type pdu_msgs-msg:FuseStatus
    :initform (cl:make-instance 'pdu_msgs-msg:FuseStatus))
   (fuse_9
    :reader fuse_9
    :initarg :fuse_9
    :type pdu_msgs-msg:FuseStatus
    :initform (cl:make-instance 'pdu_msgs-msg:FuseStatus))
   (fuse_10
    :reader fuse_10
    :initarg :fuse_10
    :type pdu_msgs-msg:FuseStatus
    :initform (cl:make-instance 'pdu_msgs-msg:FuseStatus))
   (fuse_11
    :reader fuse_11
    :initarg :fuse_11
    :type pdu_msgs-msg:FuseStatus
    :initform (cl:make-instance 'pdu_msgs-msg:FuseStatus))
   (fuse_12
    :reader fuse_12
    :initarg :fuse_12
    :type pdu_msgs-msg:FuseStatus
    :initform (cl:make-instance 'pdu_msgs-msg:FuseStatus))
   (fuse_13
    :reader fuse_13
    :initarg :fuse_13
    :type pdu_msgs-msg:FuseStatus
    :initform (cl:make-instance 'pdu_msgs-msg:FuseStatus))
   (fuse_14
    :reader fuse_14
    :initarg :fuse_14
    :type pdu_msgs-msg:FuseStatus
    :initform (cl:make-instance 'pdu_msgs-msg:FuseStatus))
   (fuse_15
    :reader fuse_15
    :initarg :fuse_15
    :type pdu_msgs-msg:FuseStatus
    :initform (cl:make-instance 'pdu_msgs-msg:FuseStatus))
   (fuse_16
    :reader fuse_16
    :initarg :fuse_16
    :type pdu_msgs-msg:FuseStatus
    :initform (cl:make-instance 'pdu_msgs-msg:FuseStatus)))
)

(cl:defclass FuseReport (<FuseReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FuseReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FuseReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pdu_msgs-msg:<FuseReport> is deprecated: use pdu_msgs-msg:FuseReport instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <FuseReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pdu_msgs-msg:header-val is deprecated.  Use pdu_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'GridAddress-val :lambda-list '(m))
(cl:defmethod GridAddress-val ((m <FuseReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pdu_msgs-msg:GridAddress-val is deprecated.  Use pdu_msgs-msg:GridAddress instead.")
  (GridAddress m))

(cl:ensure-generic-function 'fuse_1-val :lambda-list '(m))
(cl:defmethod fuse_1-val ((m <FuseReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pdu_msgs-msg:fuse_1-val is deprecated.  Use pdu_msgs-msg:fuse_1 instead.")
  (fuse_1 m))

(cl:ensure-generic-function 'fuse_2-val :lambda-list '(m))
(cl:defmethod fuse_2-val ((m <FuseReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pdu_msgs-msg:fuse_2-val is deprecated.  Use pdu_msgs-msg:fuse_2 instead.")
  (fuse_2 m))

(cl:ensure-generic-function 'fuse_3-val :lambda-list '(m))
(cl:defmethod fuse_3-val ((m <FuseReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pdu_msgs-msg:fuse_3-val is deprecated.  Use pdu_msgs-msg:fuse_3 instead.")
  (fuse_3 m))

(cl:ensure-generic-function 'fuse_4-val :lambda-list '(m))
(cl:defmethod fuse_4-val ((m <FuseReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pdu_msgs-msg:fuse_4-val is deprecated.  Use pdu_msgs-msg:fuse_4 instead.")
  (fuse_4 m))

(cl:ensure-generic-function 'fuse_5-val :lambda-list '(m))
(cl:defmethod fuse_5-val ((m <FuseReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pdu_msgs-msg:fuse_5-val is deprecated.  Use pdu_msgs-msg:fuse_5 instead.")
  (fuse_5 m))

(cl:ensure-generic-function 'fuse_6-val :lambda-list '(m))
(cl:defmethod fuse_6-val ((m <FuseReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pdu_msgs-msg:fuse_6-val is deprecated.  Use pdu_msgs-msg:fuse_6 instead.")
  (fuse_6 m))

(cl:ensure-generic-function 'fuse_7-val :lambda-list '(m))
(cl:defmethod fuse_7-val ((m <FuseReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pdu_msgs-msg:fuse_7-val is deprecated.  Use pdu_msgs-msg:fuse_7 instead.")
  (fuse_7 m))

(cl:ensure-generic-function 'fuse_8-val :lambda-list '(m))
(cl:defmethod fuse_8-val ((m <FuseReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pdu_msgs-msg:fuse_8-val is deprecated.  Use pdu_msgs-msg:fuse_8 instead.")
  (fuse_8 m))

(cl:ensure-generic-function 'fuse_9-val :lambda-list '(m))
(cl:defmethod fuse_9-val ((m <FuseReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pdu_msgs-msg:fuse_9-val is deprecated.  Use pdu_msgs-msg:fuse_9 instead.")
  (fuse_9 m))

(cl:ensure-generic-function 'fuse_10-val :lambda-list '(m))
(cl:defmethod fuse_10-val ((m <FuseReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pdu_msgs-msg:fuse_10-val is deprecated.  Use pdu_msgs-msg:fuse_10 instead.")
  (fuse_10 m))

(cl:ensure-generic-function 'fuse_11-val :lambda-list '(m))
(cl:defmethod fuse_11-val ((m <FuseReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pdu_msgs-msg:fuse_11-val is deprecated.  Use pdu_msgs-msg:fuse_11 instead.")
  (fuse_11 m))

(cl:ensure-generic-function 'fuse_12-val :lambda-list '(m))
(cl:defmethod fuse_12-val ((m <FuseReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pdu_msgs-msg:fuse_12-val is deprecated.  Use pdu_msgs-msg:fuse_12 instead.")
  (fuse_12 m))

(cl:ensure-generic-function 'fuse_13-val :lambda-list '(m))
(cl:defmethod fuse_13-val ((m <FuseReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pdu_msgs-msg:fuse_13-val is deprecated.  Use pdu_msgs-msg:fuse_13 instead.")
  (fuse_13 m))

(cl:ensure-generic-function 'fuse_14-val :lambda-list '(m))
(cl:defmethod fuse_14-val ((m <FuseReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pdu_msgs-msg:fuse_14-val is deprecated.  Use pdu_msgs-msg:fuse_14 instead.")
  (fuse_14 m))

(cl:ensure-generic-function 'fuse_15-val :lambda-list '(m))
(cl:defmethod fuse_15-val ((m <FuseReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pdu_msgs-msg:fuse_15-val is deprecated.  Use pdu_msgs-msg:fuse_15 instead.")
  (fuse_15 m))

(cl:ensure-generic-function 'fuse_16-val :lambda-list '(m))
(cl:defmethod fuse_16-val ((m <FuseReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pdu_msgs-msg:fuse_16-val is deprecated.  Use pdu_msgs-msg:fuse_16 instead.")
  (fuse_16 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FuseReport>) ostream)
  "Serializes a message object of type '<FuseReport>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'GridAddress)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'fuse_1) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'fuse_2) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'fuse_3) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'fuse_4) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'fuse_5) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'fuse_6) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'fuse_7) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'fuse_8) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'fuse_9) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'fuse_10) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'fuse_11) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'fuse_12) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'fuse_13) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'fuse_14) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'fuse_15) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'fuse_16) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FuseReport>) istream)
  "Deserializes a message object of type '<FuseReport>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'GridAddress)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'fuse_1) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'fuse_2) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'fuse_3) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'fuse_4) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'fuse_5) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'fuse_6) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'fuse_7) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'fuse_8) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'fuse_9) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'fuse_10) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'fuse_11) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'fuse_12) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'fuse_13) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'fuse_14) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'fuse_15) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'fuse_16) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FuseReport>)))
  "Returns string type for a message object of type '<FuseReport>"
  "pdu_msgs/FuseReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FuseReport)))
  "Returns string type for a message object of type 'FuseReport"
  "pdu_msgs/FuseReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FuseReport>)))
  "Returns md5sum for a message object of type '<FuseReport>"
  "f4b7abf88dd96ecf35a3983dc0c26eef")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FuseReport)))
  "Returns md5sum for a message object of type 'FuseReport"
  "f4b7abf88dd96ecf35a3983dc0c26eef")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FuseReport>)))
  "Returns full string definition for message of type '<FuseReport>"
  (cl:format cl:nil "Header header~%~%# Fuse status enumeration~%uint8 GridAddress~%~%FuseStatus fuse_1~%FuseStatus fuse_2~%FuseStatus fuse_3~%FuseStatus fuse_4~%FuseStatus fuse_5~%FuseStatus fuse_6~%FuseStatus fuse_7~%FuseStatus fuse_8~%FuseStatus fuse_9~%FuseStatus fuse_10~%FuseStatus fuse_11~%FuseStatus fuse_12~%FuseStatus fuse_13~%FuseStatus fuse_14~%FuseStatus fuse_15~%FuseStatus fuse_16~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: pdu_msgs/FuseStatus~%uint8 value~%~%uint8 NO_FAULT = 0~%uint8 BLOWN = 1~%uint8 NOT_POWERED = 2~%uint8 NOT_USED = 3~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FuseReport)))
  "Returns full string definition for message of type 'FuseReport"
  (cl:format cl:nil "Header header~%~%# Fuse status enumeration~%uint8 GridAddress~%~%FuseStatus fuse_1~%FuseStatus fuse_2~%FuseStatus fuse_3~%FuseStatus fuse_4~%FuseStatus fuse_5~%FuseStatus fuse_6~%FuseStatus fuse_7~%FuseStatus fuse_8~%FuseStatus fuse_9~%FuseStatus fuse_10~%FuseStatus fuse_11~%FuseStatus fuse_12~%FuseStatus fuse_13~%FuseStatus fuse_14~%FuseStatus fuse_15~%FuseStatus fuse_16~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: pdu_msgs/FuseStatus~%uint8 value~%~%uint8 NO_FAULT = 0~%uint8 BLOWN = 1~%uint8 NOT_POWERED = 2~%uint8 NOT_USED = 3~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FuseReport>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'fuse_1))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'fuse_2))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'fuse_3))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'fuse_4))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'fuse_5))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'fuse_6))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'fuse_7))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'fuse_8))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'fuse_9))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'fuse_10))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'fuse_11))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'fuse_12))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'fuse_13))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'fuse_14))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'fuse_15))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'fuse_16))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FuseReport>))
  "Converts a ROS message object to a list"
  (cl:list 'FuseReport
    (cl:cons ':header (header msg))
    (cl:cons ':GridAddress (GridAddress msg))
    (cl:cons ':fuse_1 (fuse_1 msg))
    (cl:cons ':fuse_2 (fuse_2 msg))
    (cl:cons ':fuse_3 (fuse_3 msg))
    (cl:cons ':fuse_4 (fuse_4 msg))
    (cl:cons ':fuse_5 (fuse_5 msg))
    (cl:cons ':fuse_6 (fuse_6 msg))
    (cl:cons ':fuse_7 (fuse_7 msg))
    (cl:cons ':fuse_8 (fuse_8 msg))
    (cl:cons ':fuse_9 (fuse_9 msg))
    (cl:cons ':fuse_10 (fuse_10 msg))
    (cl:cons ':fuse_11 (fuse_11 msg))
    (cl:cons ':fuse_12 (fuse_12 msg))
    (cl:cons ':fuse_13 (fuse_13 msg))
    (cl:cons ':fuse_14 (fuse_14 msg))
    (cl:cons ':fuse_15 (fuse_15 msg))
    (cl:cons ':fuse_16 (fuse_16 msg))
))
