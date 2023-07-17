; Auto-generated. Do not edit!


(cl:in-package deeporange14_msgs-msg)


;//! \htmlinclude MobilityMsg.msg.html

(cl:defclass <MobilityMsg> (roslisp-msg-protocol:ros-message)
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
   (left_torque_cmd
    :reader left_torque_cmd
    :initarg :left_torque_cmd
    :type cl:float
    :initform 0.0)
   (right_torque_cmd
    :reader right_torque_cmd
    :initarg :right_torque_cmd
    :type cl:float
    :initform 0.0)
   (au_state
    :reader au_state
    :initarg :au_state
    :type cl:fixnum
    :initform 0)
   (brake_effort
    :reader brake_effort
    :initarg :brake_effort
    :type cl:fixnum
    :initform 0))
)

(cl:defclass MobilityMsg (<MobilityMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MobilityMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MobilityMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name deeporange14_msgs-msg:<MobilityMsg> is deprecated: use deeporange14_msgs-msg:MobilityMsg instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MobilityMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader deeporange14_msgs-msg:header-val is deprecated.  Use deeporange14_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'seq-val :lambda-list '(m))
(cl:defmethod seq-val ((m <MobilityMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader deeporange14_msgs-msg:seq-val is deprecated.  Use deeporange14_msgs-msg:seq instead.")
  (seq m))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <MobilityMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader deeporange14_msgs-msg:stamp-val is deprecated.  Use deeporange14_msgs-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'left_torque_cmd-val :lambda-list '(m))
(cl:defmethod left_torque_cmd-val ((m <MobilityMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader deeporange14_msgs-msg:left_torque_cmd-val is deprecated.  Use deeporange14_msgs-msg:left_torque_cmd instead.")
  (left_torque_cmd m))

(cl:ensure-generic-function 'right_torque_cmd-val :lambda-list '(m))
(cl:defmethod right_torque_cmd-val ((m <MobilityMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader deeporange14_msgs-msg:right_torque_cmd-val is deprecated.  Use deeporange14_msgs-msg:right_torque_cmd instead.")
  (right_torque_cmd m))

(cl:ensure-generic-function 'au_state-val :lambda-list '(m))
(cl:defmethod au_state-val ((m <MobilityMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader deeporange14_msgs-msg:au_state-val is deprecated.  Use deeporange14_msgs-msg:au_state instead.")
  (au_state m))

(cl:ensure-generic-function 'brake_effort-val :lambda-list '(m))
(cl:defmethod brake_effort-val ((m <MobilityMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader deeporange14_msgs-msg:brake_effort-val is deprecated.  Use deeporange14_msgs-msg:brake_effort instead.")
  (brake_effort m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MobilityMsg>) ostream)
  "Serializes a message object of type '<MobilityMsg>"
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
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'left_torque_cmd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'right_torque_cmd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'au_state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'brake_effort)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MobilityMsg>) istream)
  "Deserializes a message object of type '<MobilityMsg>"
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
    (cl:setf (cl:slot-value msg 'left_torque_cmd) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'right_torque_cmd) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'au_state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'brake_effort)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MobilityMsg>)))
  "Returns string type for a message object of type '<MobilityMsg>"
  "deeporange14_msgs/MobilityMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MobilityMsg)))
  "Returns string type for a message object of type 'MobilityMsg"
  "deeporange14_msgs/MobilityMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MobilityMsg>)))
  "Returns md5sum for a message object of type '<MobilityMsg>"
  "66e4d75167be5101a8d6b7cdceb2db0b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MobilityMsg)))
  "Returns md5sum for a message object of type 'MobilityMsg"
  "66e4d75167be5101a8d6b7cdceb2db0b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MobilityMsg>)))
  "Returns full string definition for message of type '<MobilityMsg>"
  (cl:format cl:nil "#This represents a vector in free space -- currently defined to hold the left and right track #velocities~%Header header~%  uint32 seq~%  time stamp~%~%float64 left_torque_cmd~%float64 right_torque_cmd~%uint8 au_state ~%uint8 brake_effort~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MobilityMsg)))
  "Returns full string definition for message of type 'MobilityMsg"
  (cl:format cl:nil "#This represents a vector in free space -- currently defined to hold the left and right track #velocities~%Header header~%  uint32 seq~%  time stamp~%~%float64 left_torque_cmd~%float64 right_torque_cmd~%uint8 au_state ~%uint8 brake_effort~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MobilityMsg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     8
     8
     8
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MobilityMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'MobilityMsg
    (cl:cons ':header (header msg))
    (cl:cons ':seq (seq msg))
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':left_torque_cmd (left_torque_cmd msg))
    (cl:cons ':right_torque_cmd (right_torque_cmd msg))
    (cl:cons ':au_state (au_state msg))
    (cl:cons ':brake_effort (brake_effort msg))
))
