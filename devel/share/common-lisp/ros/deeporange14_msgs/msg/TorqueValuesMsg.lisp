; Auto-generated. Do not edit!


(cl:in-package deeporange14_msgs-msg)


;//! \htmlinclude TorqueValuesMsg.msg.html

(cl:defclass <TorqueValuesMsg> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (left_torque
    :reader left_torque
    :initarg :left_torque
    :type cl:float
    :initform 0.0)
   (right_torque
    :reader right_torque
    :initarg :right_torque
    :type cl:float
    :initform 0.0))
)

(cl:defclass TorqueValuesMsg (<TorqueValuesMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <TorqueValuesMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'TorqueValuesMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name deeporange14_msgs-msg:<TorqueValuesMsg> is deprecated: use deeporange14_msgs-msg:TorqueValuesMsg instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <TorqueValuesMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader deeporange14_msgs-msg:header-val is deprecated.  Use deeporange14_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'left_torque-val :lambda-list '(m))
(cl:defmethod left_torque-val ((m <TorqueValuesMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader deeporange14_msgs-msg:left_torque-val is deprecated.  Use deeporange14_msgs-msg:left_torque instead.")
  (left_torque m))

(cl:ensure-generic-function 'right_torque-val :lambda-list '(m))
(cl:defmethod right_torque-val ((m <TorqueValuesMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader deeporange14_msgs-msg:right_torque-val is deprecated.  Use deeporange14_msgs-msg:right_torque instead.")
  (right_torque m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <TorqueValuesMsg>) ostream)
  "Serializes a message object of type '<TorqueValuesMsg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'left_torque))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'right_torque))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <TorqueValuesMsg>) istream)
  "Deserializes a message object of type '<TorqueValuesMsg>"
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
    (cl:setf (cl:slot-value msg 'left_torque) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'right_torque) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<TorqueValuesMsg>)))
  "Returns string type for a message object of type '<TorqueValuesMsg>"
  "deeporange14_msgs/TorqueValuesMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'TorqueValuesMsg)))
  "Returns string type for a message object of type 'TorqueValuesMsg"
  "deeporange14_msgs/TorqueValuesMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<TorqueValuesMsg>)))
  "Returns md5sum for a message object of type '<TorqueValuesMsg>"
  "6d520ba6826fce2ad8c1220c1158f51a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'TorqueValuesMsg)))
  "Returns md5sum for a message object of type 'TorqueValuesMsg"
  "6d520ba6826fce2ad8c1220c1158f51a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<TorqueValuesMsg>)))
  "Returns full string definition for message of type '<TorqueValuesMsg>"
  (cl:format cl:nil "Header header~%~%float64 left_torque~%float64 right_torque~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'TorqueValuesMsg)))
  "Returns full string definition for message of type 'TorqueValuesMsg"
  (cl:format cl:nil "Header header~%~%float64 left_torque~%float64 right_torque~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <TorqueValuesMsg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <TorqueValuesMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'TorqueValuesMsg
    (cl:cons ':header (header msg))
    (cl:cons ':left_torque (left_torque msg))
    (cl:cons ':right_torque (right_torque msg))
))
