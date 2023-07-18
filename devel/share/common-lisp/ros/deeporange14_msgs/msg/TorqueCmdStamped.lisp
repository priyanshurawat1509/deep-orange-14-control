; Auto-generated. Do not edit!


(cl:in-package deeporange14_msgs-msg)


;//! \htmlinclude TorqueCmdStamped.msg.html

(cl:defclass <TorqueCmdStamped> (roslisp-msg-protocol:ros-message)
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
    :initform 0.0))
)

(cl:defclass TorqueCmdStamped (<TorqueCmdStamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TorqueCmdStamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TorqueCmdStamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name deeporange14_msgs-msg:<TorqueCmdStamped> is deprecated: use deeporange14_msgs-msg:TorqueCmdStamped instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TorqueCmdStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader deeporange14_msgs-msg:header-val is deprecated.  Use deeporange14_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'tqL_cmd-val :lambda-list '(m))
(cl:defmethod tqL_cmd-val ((m <TorqueCmdStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader deeporange14_msgs-msg:tqL_cmd-val is deprecated.  Use deeporange14_msgs-msg:tqL_cmd instead.")
  (tqL_cmd m))

(cl:ensure-generic-function 'tqR_cmd-val :lambda-list '(m))
(cl:defmethod tqR_cmd-val ((m <TorqueCmdStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader deeporange14_msgs-msg:tqR_cmd-val is deprecated.  Use deeporange14_msgs-msg:tqR_cmd instead.")
  (tqR_cmd m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TorqueCmdStamped>) ostream)
  "Serializes a message object of type '<TorqueCmdStamped>"
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TorqueCmdStamped>) istream)
  "Deserializes a message object of type '<TorqueCmdStamped>"
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TorqueCmdStamped>)))
  "Returns string type for a message object of type '<TorqueCmdStamped>"
  "deeporange14_msgs/TorqueCmdStamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TorqueCmdStamped)))
  "Returns string type for a message object of type 'TorqueCmdStamped"
  "deeporange14_msgs/TorqueCmdStamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TorqueCmdStamped>)))
  "Returns md5sum for a message object of type '<TorqueCmdStamped>"
  "d2b993d9f9c7329f407ee1c3b8d87a65")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TorqueCmdStamped)))
  "Returns md5sum for a message object of type 'TorqueCmdStamped"
  "d2b993d9f9c7329f407ee1c3b8d87a65")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TorqueCmdStamped>)))
  "Returns full string definition for message of type '<TorqueCmdStamped>"
  (cl:format cl:nil "#Message contains timestamped torque commands~%Header header~%~%float64 tqL_cmd~%float64 tqR_cmd~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TorqueCmdStamped)))
  "Returns full string definition for message of type 'TorqueCmdStamped"
  (cl:format cl:nil "#Message contains timestamped torque commands~%Header header~%~%float64 tqL_cmd~%float64 tqR_cmd~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TorqueCmdStamped>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TorqueCmdStamped>))
  "Converts a ROS message object to a list"
  (cl:list 'TorqueCmdStamped
    (cl:cons ':header (header msg))
    (cl:cons ':tqL_cmd (tqL_cmd msg))
    (cl:cons ':tqR_cmd (tqR_cmd msg))
))
