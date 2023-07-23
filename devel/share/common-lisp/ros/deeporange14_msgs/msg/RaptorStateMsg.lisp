; Auto-generated. Do not edit!


(cl:in-package deeporange14_msgs-msg)


;//! \htmlinclude RaptorStateMsg.msg.html

(cl:defclass <RaptorStateMsg> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (system_state
    :reader system_state
    :initarg :system_state
    :type cl:fixnum
    :initform 0)
   (dbw_mode
    :reader dbw_mode
    :initarg :dbw_mode
    :type cl:fixnum
    :initform 0)
   (speed_state
    :reader speed_state
    :initarg :speed_state
    :type cl:fixnum
    :initform 0)
   (log_cmd
    :reader log_cmd
    :initarg :log_cmd
    :type cl:boolean
    :initform cl:nil)
   (brk_Lpres
    :reader brk_Lpres
    :initarg :brk_Lpres
    :type cl:float
    :initform 0.0)
   (brk_Rpres
    :reader brk_Rpres
    :initarg :brk_Rpres
    :type cl:float
    :initform 0.0))
)

(cl:defclass RaptorStateMsg (<RaptorStateMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RaptorStateMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RaptorStateMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name deeporange14_msgs-msg:<RaptorStateMsg> is deprecated: use deeporange14_msgs-msg:RaptorStateMsg instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <RaptorStateMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader deeporange14_msgs-msg:header-val is deprecated.  Use deeporange14_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'system_state-val :lambda-list '(m))
(cl:defmethod system_state-val ((m <RaptorStateMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader deeporange14_msgs-msg:system_state-val is deprecated.  Use deeporange14_msgs-msg:system_state instead.")
  (system_state m))

(cl:ensure-generic-function 'dbw_mode-val :lambda-list '(m))
(cl:defmethod dbw_mode-val ((m <RaptorStateMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader deeporange14_msgs-msg:dbw_mode-val is deprecated.  Use deeporange14_msgs-msg:dbw_mode instead.")
  (dbw_mode m))

(cl:ensure-generic-function 'speed_state-val :lambda-list '(m))
(cl:defmethod speed_state-val ((m <RaptorStateMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader deeporange14_msgs-msg:speed_state-val is deprecated.  Use deeporange14_msgs-msg:speed_state instead.")
  (speed_state m))

(cl:ensure-generic-function 'log_cmd-val :lambda-list '(m))
(cl:defmethod log_cmd-val ((m <RaptorStateMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader deeporange14_msgs-msg:log_cmd-val is deprecated.  Use deeporange14_msgs-msg:log_cmd instead.")
  (log_cmd m))

(cl:ensure-generic-function 'brk_Lpres-val :lambda-list '(m))
(cl:defmethod brk_Lpres-val ((m <RaptorStateMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader deeporange14_msgs-msg:brk_Lpres-val is deprecated.  Use deeporange14_msgs-msg:brk_Lpres instead.")
  (brk_Lpres m))

(cl:ensure-generic-function 'brk_Rpres-val :lambda-list '(m))
(cl:defmethod brk_Rpres-val ((m <RaptorStateMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader deeporange14_msgs-msg:brk_Rpres-val is deprecated.  Use deeporange14_msgs-msg:brk_Rpres instead.")
  (brk_Rpres m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RaptorStateMsg>) ostream)
  "Serializes a message object of type '<RaptorStateMsg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'system_state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dbw_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'speed_state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'log_cmd) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'brk_Lpres))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'brk_Rpres))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RaptorStateMsg>) istream)
  "Deserializes a message object of type '<RaptorStateMsg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'system_state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dbw_mode)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'speed_state)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'log_cmd) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'brk_Lpres) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'brk_Rpres) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RaptorStateMsg>)))
  "Returns string type for a message object of type '<RaptorStateMsg>"
  "deeporange14_msgs/RaptorStateMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RaptorStateMsg)))
  "Returns string type for a message object of type 'RaptorStateMsg"
  "deeporange14_msgs/RaptorStateMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RaptorStateMsg>)))
  "Returns md5sum for a message object of type '<RaptorStateMsg>"
  "9c2bf3014b9a7a42f7e5e8b26caa8e03")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RaptorStateMsg)))
  "Returns md5sum for a message object of type 'RaptorStateMsg"
  "9c2bf3014b9a7a42f7e5e8b26caa8e03")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RaptorStateMsg>)))
  "Returns full string definition for message of type '<RaptorStateMsg>"
  (cl:format cl:nil "Header header~%~%uint8 system_state~%uint8 dbw_mode~%uint8 speed_state~%bool log_cmd~%float64 brk_Lpres ~%float64 brk_Rpres~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RaptorStateMsg)))
  "Returns full string definition for message of type 'RaptorStateMsg"
  (cl:format cl:nil "Header header~%~%uint8 system_state~%uint8 dbw_mode~%uint8 speed_state~%bool log_cmd~%float64 brk_Lpres ~%float64 brk_Rpres~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RaptorStateMsg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
     1
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RaptorStateMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'RaptorStateMsg
    (cl:cons ':header (header msg))
    (cl:cons ':system_state (system_state msg))
    (cl:cons ':dbw_mode (dbw_mode msg))
    (cl:cons ':speed_state (speed_state msg))
    (cl:cons ':log_cmd (log_cmd msg))
    (cl:cons ':brk_Lpres (brk_Lpres msg))
    (cl:cons ':brk_Rpres (brk_Rpres msg))
))
