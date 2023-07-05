; Auto-generated. Do not edit!


(cl:in-package deeporange14_msgs-msg)


;//! \htmlinclude MobilityMsg.msg.html

(cl:defclass <MobilityMsg> (roslisp-msg-protocol:ros-message)
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
    :initform 0.0)
   (left_brkPressure
    :reader left_brkPressure
    :initarg :left_brkPressure
    :type cl:fixnum
    :initform 0)
   (right_brkPressure
    :reader right_brkPressure
    :initarg :right_brkPressure
    :type cl:fixnum
    :initform 0)
   (au_state
    :reader au_state
    :initarg :au_state
    :type cl:fixnum
    :initform 0)
   (brake_enable
    :reader brake_enable
    :initarg :brake_enable
    :type cl:boolean
    :initform cl:nil))
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

(cl:ensure-generic-function 'left_torque-val :lambda-list '(m))
(cl:defmethod left_torque-val ((m <MobilityMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader deeporange14_msgs-msg:left_torque-val is deprecated.  Use deeporange14_msgs-msg:left_torque instead.")
  (left_torque m))

(cl:ensure-generic-function 'right_torque-val :lambda-list '(m))
(cl:defmethod right_torque-val ((m <MobilityMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader deeporange14_msgs-msg:right_torque-val is deprecated.  Use deeporange14_msgs-msg:right_torque instead.")
  (right_torque m))

(cl:ensure-generic-function 'left_brkPressure-val :lambda-list '(m))
(cl:defmethod left_brkPressure-val ((m <MobilityMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader deeporange14_msgs-msg:left_brkPressure-val is deprecated.  Use deeporange14_msgs-msg:left_brkPressure instead.")
  (left_brkPressure m))

(cl:ensure-generic-function 'right_brkPressure-val :lambda-list '(m))
(cl:defmethod right_brkPressure-val ((m <MobilityMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader deeporange14_msgs-msg:right_brkPressure-val is deprecated.  Use deeporange14_msgs-msg:right_brkPressure instead.")
  (right_brkPressure m))

(cl:ensure-generic-function 'au_state-val :lambda-list '(m))
(cl:defmethod au_state-val ((m <MobilityMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader deeporange14_msgs-msg:au_state-val is deprecated.  Use deeporange14_msgs-msg:au_state instead.")
  (au_state m))

(cl:ensure-generic-function 'brake_enable-val :lambda-list '(m))
(cl:defmethod brake_enable-val ((m <MobilityMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader deeporange14_msgs-msg:brake_enable-val is deprecated.  Use deeporange14_msgs-msg:brake_enable instead.")
  (brake_enable m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MobilityMsg>) ostream)
  "Serializes a message object of type '<MobilityMsg>"
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'left_brkPressure)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'right_brkPressure)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'au_state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'brake_enable) 1 0)) ostream)
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
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'left_brkPressure)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'right_brkPressure)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'au_state)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'brake_enable) (cl:not (cl:zerop (cl:read-byte istream))))
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
  "d0eaaf6b23ead9b732ddff611e74f7ec")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MobilityMsg)))
  "Returns md5sum for a message object of type 'MobilityMsg"
  "d0eaaf6b23ead9b732ddff611e74f7ec")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MobilityMsg>)))
  "Returns full string definition for message of type '<MobilityMsg>"
  (cl:format cl:nil "#This represents a vector in free space -- currently defined to hold the left and right track #velocities~%Header header~%~%float64 left_torque~%float64 right_torque~%uint8 left_brkPressure~%uint8 right_brkPressure~%uint8 au_state ~%bool brake_enable~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MobilityMsg)))
  "Returns full string definition for message of type 'MobilityMsg"
  (cl:format cl:nil "#This represents a vector in free space -- currently defined to hold the left and right track #velocities~%Header header~%~%float64 left_torque~%float64 right_torque~%uint8 left_brkPressure~%uint8 right_brkPressure~%uint8 au_state ~%bool brake_enable~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MobilityMsg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MobilityMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'MobilityMsg
    (cl:cons ':header (header msg))
    (cl:cons ':left_torque (left_torque msg))
    (cl:cons ':right_torque (right_torque msg))
    (cl:cons ':left_brkPressure (left_brkPressure msg))
    (cl:cons ':right_brkPressure (right_brkPressure msg))
    (cl:cons ':au_state (au_state msg))
    (cl:cons ':brake_enable (brake_enable msg))
))
