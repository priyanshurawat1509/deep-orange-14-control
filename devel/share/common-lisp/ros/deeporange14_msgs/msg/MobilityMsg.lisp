; Auto-generated. Do not edit!


(cl:in-package deeporange14_msgs-msg)


;//! \htmlinclude MobilityMsg.msg.html

(cl:defclass <MobilityMsg> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (tqL_cmd
    :reader tqL_cmd
    :initarg :tqL_cmd
    :type cl:float
    :initform 0.0)
   (tqR_cmd
    :reader tqR_cmd
    :initarg :tqR_cmd
    :type cl:float
    :initform 0.0)
   (brkL_cmd
    :reader brkL_cmd
    :initarg :brkL_cmd
    :type cl:float
    :initform 0.0)
   (brkR_cmd
    :reader brkR_cmd
    :initarg :brkR_cmd
    :type cl:float
    :initform 0.0)
   (au_state
    :reader au_state
    :initarg :au_state
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

(cl:ensure-generic-function 'tqL_cmd-val :lambda-list '(m))
(cl:defmethod tqL_cmd-val ((m <MobilityMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader deeporange14_msgs-msg:tqL_cmd-val is deprecated.  Use deeporange14_msgs-msg:tqL_cmd instead.")
  (tqL_cmd m))

(cl:ensure-generic-function 'tqR_cmd-val :lambda-list '(m))
(cl:defmethod tqR_cmd-val ((m <MobilityMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader deeporange14_msgs-msg:tqR_cmd-val is deprecated.  Use deeporange14_msgs-msg:tqR_cmd instead.")
  (tqR_cmd m))

(cl:ensure-generic-function 'brkL_cmd-val :lambda-list '(m))
(cl:defmethod brkL_cmd-val ((m <MobilityMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader deeporange14_msgs-msg:brkL_cmd-val is deprecated.  Use deeporange14_msgs-msg:brkL_cmd instead.")
  (brkL_cmd m))

(cl:ensure-generic-function 'brkR_cmd-val :lambda-list '(m))
(cl:defmethod brkR_cmd-val ((m <MobilityMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader deeporange14_msgs-msg:brkR_cmd-val is deprecated.  Use deeporange14_msgs-msg:brkR_cmd instead.")
  (brkR_cmd m))

(cl:ensure-generic-function 'au_state-val :lambda-list '(m))
(cl:defmethod au_state-val ((m <MobilityMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader deeporange14_msgs-msg:au_state-val is deprecated.  Use deeporange14_msgs-msg:au_state instead.")
  (au_state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MobilityMsg>) ostream)
  "Serializes a message object of type '<MobilityMsg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'tqL_cmd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'tqR_cmd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'brkL_cmd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'brkR_cmd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'au_state)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MobilityMsg>) istream)
  "Deserializes a message object of type '<MobilityMsg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tqL_cmd) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tqR_cmd) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'brkL_cmd) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'brkR_cmd) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'au_state)) (cl:read-byte istream))
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
  "db3ff148ca2e480eda9720b0eb366e47")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MobilityMsg)))
  "Returns md5sum for a message object of type 'MobilityMsg"
  "db3ff148ca2e480eda9720b0eb366e47")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MobilityMsg>)))
  "Returns full string definition for message of type '<MobilityMsg>"
  (cl:format cl:nil "#This represents a vector in free space -- currently defined to hold the left and right track #velocities~%Header header~%~%float64 tqL_cmd~%float64 tqR_cmd~%float32 brkL_cmd~%float32 brkR_cmd~%uint8 au_state ~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MobilityMsg)))
  "Returns full string definition for message of type 'MobilityMsg"
  (cl:format cl:nil "#This represents a vector in free space -- currently defined to hold the left and right track #velocities~%Header header~%~%float64 tqL_cmd~%float64 tqR_cmd~%float32 brkL_cmd~%float32 brkR_cmd~%uint8 au_state ~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MobilityMsg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MobilityMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'MobilityMsg
    (cl:cons ':header (header msg))
    (cl:cons ':tqL_cmd (tqL_cmd msg))
    (cl:cons ':tqR_cmd (tqR_cmd msg))
    (cl:cons ':brkL_cmd (brkL_cmd msg))
    (cl:cons ':brkR_cmd (brkR_cmd msg))
    (cl:cons ':au_state (au_state msg))
))
