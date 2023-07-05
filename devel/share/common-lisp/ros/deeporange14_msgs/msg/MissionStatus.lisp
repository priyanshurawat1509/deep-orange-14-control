; Auto-generated. Do not edit!


(cl:in-package deeporange14_msgs-msg)


;//! \htmlinclude MissionStatus.msg.html

(cl:defclass <MissionStatus> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (status
    :reader status
    :initarg :status
    :type cl:string
    :initform "")
   (stop_ros
    :reader stop_ros
    :initarg :stop_ros
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass MissionStatus (<MissionStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MissionStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MissionStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name deeporange14_msgs-msg:<MissionStatus> is deprecated: use deeporange14_msgs-msg:MissionStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MissionStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader deeporange14_msgs-msg:header-val is deprecated.  Use deeporange14_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <MissionStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader deeporange14_msgs-msg:status-val is deprecated.  Use deeporange14_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'stop_ros-val :lambda-list '(m))
(cl:defmethod stop_ros-val ((m <MissionStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader deeporange14_msgs-msg:stop_ros-val is deprecated.  Use deeporange14_msgs-msg:stop_ros instead.")
  (stop_ros m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MissionStatus>) ostream)
  "Serializes a message object of type '<MissionStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'status))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'stop_ros) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MissionStatus>) istream)
  "Deserializes a message object of type '<MissionStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:slot-value msg 'stop_ros) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MissionStatus>)))
  "Returns string type for a message object of type '<MissionStatus>"
  "deeporange14_msgs/MissionStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MissionStatus)))
  "Returns string type for a message object of type 'MissionStatus"
  "deeporange14_msgs/MissionStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MissionStatus>)))
  "Returns md5sum for a message object of type '<MissionStatus>"
  "edb2d94e8a16ca298be038805a2c00e1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MissionStatus)))
  "Returns md5sum for a message object of type 'MissionStatus"
  "edb2d94e8a16ca298be038805a2c00e1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MissionStatus>)))
  "Returns full string definition for message of type '<MissionStatus>"
  (cl:format cl:nil "Header header~%~%string status~%bool stop_ros~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MissionStatus)))
  "Returns full string definition for message of type 'MissionStatus"
  (cl:format cl:nil "Header header~%~%string status~%bool stop_ros~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MissionStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'status))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MissionStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'MissionStatus
    (cl:cons ':header (header msg))
    (cl:cons ':status (status msg))
    (cl:cons ':stop_ros (stop_ros msg))
))
