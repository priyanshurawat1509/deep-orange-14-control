; Auto-generated. Do not edit!


(cl:in-package deeporange14_msgs-msg)


;//! \htmlinclude BrakePressureCmd.msg.html

(cl:defclass <BrakePressureCmd> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (brkL_cmd
    :reader brkL_cmd
    :initarg :brkL_cmd
    :type cl:float
    :initform 0.0)
   (brkR_cmd
    :reader brkR_cmd
    :initarg :brkR_cmd
    :type cl:float
    :initform 0.0))
)

(cl:defclass BrakePressureCmd (<BrakePressureCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BrakePressureCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BrakePressureCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name deeporange14_msgs-msg:<BrakePressureCmd> is deprecated: use deeporange14_msgs-msg:BrakePressureCmd instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <BrakePressureCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader deeporange14_msgs-msg:header-val is deprecated.  Use deeporange14_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'brkL_cmd-val :lambda-list '(m))
(cl:defmethod brkL_cmd-val ((m <BrakePressureCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader deeporange14_msgs-msg:brkL_cmd-val is deprecated.  Use deeporange14_msgs-msg:brkL_cmd instead.")
  (brkL_cmd m))

(cl:ensure-generic-function 'brkR_cmd-val :lambda-list '(m))
(cl:defmethod brkR_cmd-val ((m <BrakePressureCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader deeporange14_msgs-msg:brkR_cmd-val is deprecated.  Use deeporange14_msgs-msg:brkR_cmd instead.")
  (brkR_cmd m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BrakePressureCmd>) ostream)
  "Serializes a message object of type '<BrakePressureCmd>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'brkL_cmd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'brkR_cmd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BrakePressureCmd>) istream)
  "Deserializes a message object of type '<BrakePressureCmd>"
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
    (cl:setf (cl:slot-value msg 'brkL_cmd) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'brkR_cmd) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BrakePressureCmd>)))
  "Returns string type for a message object of type '<BrakePressureCmd>"
  "deeporange14_msgs/BrakePressureCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BrakePressureCmd)))
  "Returns string type for a message object of type 'BrakePressureCmd"
  "deeporange14_msgs/BrakePressureCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BrakePressureCmd>)))
  "Returns md5sum for a message object of type '<BrakePressureCmd>"
  "8a6c3b4b6c9de0dcdfdf346411efc7fa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BrakePressureCmd)))
  "Returns md5sum for a message object of type 'BrakePressureCmd"
  "8a6c3b4b6c9de0dcdfdf346411efc7fa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BrakePressureCmd>)))
  "Returns full string definition for message of type '<BrakePressureCmd>"
  (cl:format cl:nil "#Message contains timestamped Brake pressure commands~%Header header~%~%float64 brkL_cmd~%float64 brkR_cmd~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BrakePressureCmd)))
  "Returns full string definition for message of type 'BrakePressureCmd"
  (cl:format cl:nil "#Message contains timestamped Brake pressure commands~%Header header~%~%float64 brkL_cmd~%float64 brkR_cmd~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BrakePressureCmd>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BrakePressureCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'BrakePressureCmd
    (cl:cons ':header (header msg))
    (cl:cons ':brkL_cmd (brkL_cmd msg))
    (cl:cons ':brkR_cmd (brkR_cmd msg))
))
