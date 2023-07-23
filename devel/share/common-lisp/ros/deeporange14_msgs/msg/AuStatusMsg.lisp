; Auto-generated. Do not edit!


(cl:in-package deeporange14_msgs-msg)


;//! \htmlinclude AuStatusMsg.msg.html

(cl:defclass <AuStatusMsg> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (seq
    :reader seq
    :initarg :seq
    :type cl:integer
    :initform 0)
   (stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0)
   (measuredVx
    :reader measuredVx
    :initarg :measuredVx
    :type cl:float
    :initform 0.0)
   (measuredWz
    :reader measuredWz
    :initarg :measuredWz
    :type cl:float
    :initform 0.0)
   (rtkStatus
    :reader rtkStatus
    :initarg :rtkStatus
    :type cl:fixnum
    :initform 0)
   (timesecVx
    :reader timesecVx
    :initarg :timesecVx
    :type cl:float
    :initform 0.0)
   (timesecWz
    :reader timesecWz
    :initarg :timesecWz
    :type cl:float
    :initform 0.0)
   (timesecRtk
    :reader timesecRtk
    :initarg :timesecRtk
    :type cl:float
    :initform 0.0))
)

(cl:defclass AuStatusMsg (<AuStatusMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AuStatusMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AuStatusMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name deeporange14_msgs-msg:<AuStatusMsg> is deprecated: use deeporange14_msgs-msg:AuStatusMsg instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <AuStatusMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader deeporange14_msgs-msg:header-val is deprecated.  Use deeporange14_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'seq-val :lambda-list '(m))
(cl:defmethod seq-val ((m <AuStatusMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader deeporange14_msgs-msg:seq-val is deprecated.  Use deeporange14_msgs-msg:seq instead.")
  (seq m))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <AuStatusMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader deeporange14_msgs-msg:stamp-val is deprecated.  Use deeporange14_msgs-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'measuredVx-val :lambda-list '(m))
(cl:defmethod measuredVx-val ((m <AuStatusMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader deeporange14_msgs-msg:measuredVx-val is deprecated.  Use deeporange14_msgs-msg:measuredVx instead.")
  (measuredVx m))

(cl:ensure-generic-function 'measuredWz-val :lambda-list '(m))
(cl:defmethod measuredWz-val ((m <AuStatusMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader deeporange14_msgs-msg:measuredWz-val is deprecated.  Use deeporange14_msgs-msg:measuredWz instead.")
  (measuredWz m))

(cl:ensure-generic-function 'rtkStatus-val :lambda-list '(m))
(cl:defmethod rtkStatus-val ((m <AuStatusMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader deeporange14_msgs-msg:rtkStatus-val is deprecated.  Use deeporange14_msgs-msg:rtkStatus instead.")
  (rtkStatus m))

(cl:ensure-generic-function 'timesecVx-val :lambda-list '(m))
(cl:defmethod timesecVx-val ((m <AuStatusMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader deeporange14_msgs-msg:timesecVx-val is deprecated.  Use deeporange14_msgs-msg:timesecVx instead.")
  (timesecVx m))

(cl:ensure-generic-function 'timesecWz-val :lambda-list '(m))
(cl:defmethod timesecWz-val ((m <AuStatusMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader deeporange14_msgs-msg:timesecWz-val is deprecated.  Use deeporange14_msgs-msg:timesecWz instead.")
  (timesecWz m))

(cl:ensure-generic-function 'timesecRtk-val :lambda-list '(m))
(cl:defmethod timesecRtk-val ((m <AuStatusMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader deeporange14_msgs-msg:timesecRtk-val is deprecated.  Use deeporange14_msgs-msg:timesecRtk instead.")
  (timesecRtk m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AuStatusMsg>) ostream)
  "Serializes a message object of type '<AuStatusMsg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'seq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'seq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'seq)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'seq)) ostream)
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'stamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'stamp) (cl:floor (cl:slot-value msg 'stamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'measuredVx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'measuredWz))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rtkStatus)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'timesecVx))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'timesecWz))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'timesecRtk))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AuStatusMsg>) istream)
  "Deserializes a message object of type '<AuStatusMsg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'seq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'seq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'seq)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'seq)) (cl:read-byte istream))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'measuredVx) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'measuredWz) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rtkStatus)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'timesecVx) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'timesecWz) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'timesecRtk) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AuStatusMsg>)))
  "Returns string type for a message object of type '<AuStatusMsg>"
  "deeporange14_msgs/AuStatusMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AuStatusMsg)))
  "Returns string type for a message object of type 'AuStatusMsg"
  "deeporange14_msgs/AuStatusMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AuStatusMsg>)))
  "Returns md5sum for a message object of type '<AuStatusMsg>"
  "91fca660e197d2c15adbbf497ed3e284")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AuStatusMsg)))
  "Returns md5sum for a message object of type 'AuStatusMsg"
  "91fca660e197d2c15adbbf497ed3e284")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AuStatusMsg>)))
  "Returns full string definition for message of type '<AuStatusMsg>"
  (cl:format cl:nil "# Measured velocities from gps; Vx -> novatel/odom; Wz -> novatel/corrimu ~%Header header~%  uint32 seq~%  time stamp~%float64 measuredVx~%float64 measuredWz~%uint8 rtkStatus~%float64 timesecVx~%float64 timesecWz~%float64 timesecRtk~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AuStatusMsg)))
  "Returns full string definition for message of type 'AuStatusMsg"
  (cl:format cl:nil "# Measured velocities from gps; Vx -> novatel/odom; Wz -> novatel/corrimu ~%Header header~%  uint32 seq~%  time stamp~%float64 measuredVx~%float64 measuredWz~%uint8 rtkStatus~%float64 timesecVx~%float64 timesecWz~%float64 timesecRtk~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AuStatusMsg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     8
     8
     8
     1
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AuStatusMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'AuStatusMsg
    (cl:cons ':header (header msg))
    (cl:cons ':seq (seq msg))
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':measuredVx (measuredVx msg))
    (cl:cons ':measuredWz (measuredWz msg))
    (cl:cons ':rtkStatus (rtkStatus msg))
    (cl:cons ':timesecVx (timesecVx msg))
    (cl:cons ':timesecWz (timesecWz msg))
    (cl:cons ':timesecRtk (timesecRtk msg))
))
