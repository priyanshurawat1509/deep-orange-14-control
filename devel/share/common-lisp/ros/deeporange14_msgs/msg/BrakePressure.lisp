; Auto-generated. Do not edit!


(cl:in-package deeporange14_msgs-msg)


;//! \htmlinclude BrakePressure.msg.html

(cl:defclass <BrakePressure> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (brkL_pr
    :reader brkL_pr
    :initarg :brkL_pr
    :type cl:float
    :initform 0.0)
   (brkR_pr
    :reader brkR_pr
    :initarg :brkR_pr
    :type cl:float
    :initform 0.0))
)

(cl:defclass BrakePressure (<BrakePressure>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BrakePressure>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BrakePressure)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name deeporange14_msgs-msg:<BrakePressure> is deprecated: use deeporange14_msgs-msg:BrakePressure instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <BrakePressure>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader deeporange14_msgs-msg:header-val is deprecated.  Use deeporange14_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'brkL_pr-val :lambda-list '(m))
(cl:defmethod brkL_pr-val ((m <BrakePressure>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader deeporange14_msgs-msg:brkL_pr-val is deprecated.  Use deeporange14_msgs-msg:brkL_pr instead.")
  (brkL_pr m))

(cl:ensure-generic-function 'brkR_pr-val :lambda-list '(m))
(cl:defmethod brkR_pr-val ((m <BrakePressure>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader deeporange14_msgs-msg:brkR_pr-val is deprecated.  Use deeporange14_msgs-msg:brkR_pr instead.")
  (brkR_pr m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BrakePressure>) ostream)
  "Serializes a message object of type '<BrakePressure>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'brkL_pr))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'brkR_pr))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BrakePressure>) istream)
  "Deserializes a message object of type '<BrakePressure>"
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
    (cl:setf (cl:slot-value msg 'brkL_pr) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'brkR_pr) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BrakePressure>)))
  "Returns string type for a message object of type '<BrakePressure>"
  "deeporange14_msgs/BrakePressure")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BrakePressure)))
  "Returns string type for a message object of type 'BrakePressure"
  "deeporange14_msgs/BrakePressure")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BrakePressure>)))
  "Returns md5sum for a message object of type '<BrakePressure>"
  "a255ffc9ccf37ff061f56bd425f52afa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BrakePressure)))
  "Returns md5sum for a message object of type 'BrakePressure"
  "a255ffc9ccf37ff061f56bd425f52afa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BrakePressure>)))
  "Returns full string definition for message of type '<BrakePressure>"
  (cl:format cl:nil "#Message contains timestamped Brake pressure commands~%Header header~%~%float64 brkL_pr~%float64 brkR_pr~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BrakePressure)))
  "Returns full string definition for message of type 'BrakePressure"
  (cl:format cl:nil "#Message contains timestamped Brake pressure commands~%Header header~%~%float64 brkL_pr~%float64 brkR_pr~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BrakePressure>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BrakePressure>))
  "Converts a ROS message object to a list"
  (cl:list 'BrakePressure
    (cl:cons ':header (header msg))
    (cl:cons ':brkL_pr (brkL_pr msg))
    (cl:cons ':brkR_pr (brkR_pr msg))
))
