; Auto-generated. Do not edit!


(cl:in-package deeporange14_msgs-msg)


;//! \htmlinclude TorqueCmdStamped.msg.html

(cl:defclass <TorqueCmdStamped> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (left_torque_cmd
    :reader left_torque_cmd
    :initarg :left_torque_cmd
    :type cl:integer
    :initform 0)
   (right_torque_cmd
    :reader right_torque_cmd
    :initarg :right_torque_cmd
    :type cl:integer
    :initform 0))
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

(cl:ensure-generic-function 'left_torque_cmd-val :lambda-list '(m))
(cl:defmethod left_torque_cmd-val ((m <TorqueCmdStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader deeporange14_msgs-msg:left_torque_cmd-val is deprecated.  Use deeporange14_msgs-msg:left_torque_cmd instead.")
  (left_torque_cmd m))

(cl:ensure-generic-function 'right_torque_cmd-val :lambda-list '(m))
(cl:defmethod right_torque_cmd-val ((m <TorqueCmdStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader deeporange14_msgs-msg:right_torque_cmd-val is deprecated.  Use deeporange14_msgs-msg:right_torque_cmd instead.")
  (right_torque_cmd m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TorqueCmdStamped>) ostream)
  "Serializes a message object of type '<TorqueCmdStamped>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'left_torque_cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'right_torque_cmd)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TorqueCmdStamped>) istream)
  "Deserializes a message object of type '<TorqueCmdStamped>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'left_torque_cmd) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'right_torque_cmd) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
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
  "21462a0b7ae1ab76630c08c72de4a6a0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TorqueCmdStamped)))
  "Returns md5sum for a message object of type 'TorqueCmdStamped"
  "21462a0b7ae1ab76630c08c72de4a6a0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TorqueCmdStamped>)))
  "Returns full string definition for message of type '<TorqueCmdStamped>"
  (cl:format cl:nil "#Message contains timestamped torque commands~%Header header~%~%int64 left_torque_cmd~%int64 right_torque_cmd~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TorqueCmdStamped)))
  "Returns full string definition for message of type 'TorqueCmdStamped"
  (cl:format cl:nil "#Message contains timestamped torque commands~%Header header~%~%int64 left_torque_cmd~%int64 right_torque_cmd~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
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
    (cl:cons ':left_torque_cmd (left_torque_cmd msg))
    (cl:cons ':right_torque_cmd (right_torque_cmd msg))
))
