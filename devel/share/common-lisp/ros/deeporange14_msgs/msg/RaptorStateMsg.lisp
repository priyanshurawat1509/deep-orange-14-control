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
   (brake_enable_status
    :reader brake_enable_status
    :initarg :brake_enable_status
    :type cl:boolean
    :initform cl:nil))
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

(cl:ensure-generic-function 'brake_enable_status-val :lambda-list '(m))
(cl:defmethod brake_enable_status-val ((m <RaptorStateMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader deeporange14_msgs-msg:brake_enable_status-val is deprecated.  Use deeporange14_msgs-msg:brake_enable_status instead.")
  (brake_enable_status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RaptorStateMsg>) ostream)
  "Serializes a message object of type '<RaptorStateMsg>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'system_state)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dbw_mode)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'brake_enable_status) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RaptorStateMsg>) istream)
  "Deserializes a message object of type '<RaptorStateMsg>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'system_state)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'dbw_mode)) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'brake_enable_status) (cl:not (cl:zerop (cl:read-byte istream))))
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
  "ae18ce3d33a6f151cb9a6cb40431fc15")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RaptorStateMsg)))
  "Returns md5sum for a message object of type 'RaptorStateMsg"
  "ae18ce3d33a6f151cb9a6cb40431fc15")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RaptorStateMsg>)))
  "Returns full string definition for message of type '<RaptorStateMsg>"
  (cl:format cl:nil "Header header~%~%uint8 system_state~%uint8 dbw_mode~%bool brake_enable_status~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RaptorStateMsg)))
  "Returns full string definition for message of type 'RaptorStateMsg"
  (cl:format cl:nil "Header header~%~%uint8 system_state~%uint8 dbw_mode~%bool brake_enable_status~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RaptorStateMsg>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RaptorStateMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'RaptorStateMsg
    (cl:cons ':header (header msg))
    (cl:cons ':system_state (system_state msg))
    (cl:cons ':dbw_mode (dbw_mode msg))
    (cl:cons ':brake_enable_status (brake_enable_status msg))
))
