; Auto-generated. Do not edit!


(cl:in-package raptor_dbw_msgs-msg)


;//! \htmlinclude Brake2Report.msg.html

(cl:defclass <Brake2Report> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (brake_pressure
    :reader brake_pressure
    :initarg :brake_pressure
    :type cl:float
    :initform 0.0)
   (estimated_road_slope
    :reader estimated_road_slope
    :initarg :estimated_road_slope
    :type cl:float
    :initform 0.0)
   (speed_set_point
    :reader speed_set_point
    :initarg :speed_set_point
    :type cl:float
    :initform 0.0))
)

(cl:defclass Brake2Report (<Brake2Report>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Brake2Report>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Brake2Report)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name raptor_dbw_msgs-msg:<Brake2Report> is deprecated: use raptor_dbw_msgs-msg:Brake2Report instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Brake2Report>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader raptor_dbw_msgs-msg:header-val is deprecated.  Use raptor_dbw_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'brake_pressure-val :lambda-list '(m))
(cl:defmethod brake_pressure-val ((m <Brake2Report>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader raptor_dbw_msgs-msg:brake_pressure-val is deprecated.  Use raptor_dbw_msgs-msg:brake_pressure instead.")
  (brake_pressure m))

(cl:ensure-generic-function 'estimated_road_slope-val :lambda-list '(m))
(cl:defmethod estimated_road_slope-val ((m <Brake2Report>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader raptor_dbw_msgs-msg:estimated_road_slope-val is deprecated.  Use raptor_dbw_msgs-msg:estimated_road_slope instead.")
  (estimated_road_slope m))

(cl:ensure-generic-function 'speed_set_point-val :lambda-list '(m))
(cl:defmethod speed_set_point-val ((m <Brake2Report>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader raptor_dbw_msgs-msg:speed_set_point-val is deprecated.  Use raptor_dbw_msgs-msg:speed_set_point instead.")
  (speed_set_point m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Brake2Report>) ostream)
  "Serializes a message object of type '<Brake2Report>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'brake_pressure))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'estimated_road_slope))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed_set_point))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Brake2Report>) istream)
  "Deserializes a message object of type '<Brake2Report>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'brake_pressure) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'estimated_road_slope) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed_set_point) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Brake2Report>)))
  "Returns string type for a message object of type '<Brake2Report>"
  "raptor_dbw_msgs/Brake2Report")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Brake2Report)))
  "Returns string type for a message object of type 'Brake2Report"
  "raptor_dbw_msgs/Brake2Report")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Brake2Report>)))
  "Returns md5sum for a message object of type '<Brake2Report>"
  "91c57e75406042c8cada9e740cceeb96")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Brake2Report)))
  "Returns md5sum for a message object of type 'Brake2Report"
  "91c57e75406042c8cada9e740cceeb96")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Brake2Report>)))
  "Returns full string definition for message of type '<Brake2Report>"
  (cl:format cl:nil "Header header~%~%float32 brake_pressure # units are bars, gauge pressure~%~%float32 estimated_road_slope # degrees~%~%float32 speed_set_point # m/s~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Brake2Report)))
  "Returns full string definition for message of type 'Brake2Report"
  (cl:format cl:nil "Header header~%~%float32 brake_pressure # units are bars, gauge pressure~%~%float32 estimated_road_slope # degrees~%~%float32 speed_set_point # m/s~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Brake2Report>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Brake2Report>))
  "Converts a ROS message object to a list"
  (cl:list 'Brake2Report
    (cl:cons ':header (header msg))
    (cl:cons ':brake_pressure (brake_pressure msg))
    (cl:cons ':estimated_road_slope (estimated_road_slope msg))
    (cl:cons ':speed_set_point (speed_set_point msg))
))
