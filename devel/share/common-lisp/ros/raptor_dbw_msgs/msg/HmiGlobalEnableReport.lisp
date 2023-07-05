; Auto-generated. Do not edit!


(cl:in-package raptor_dbw_msgs-msg)


;//! \htmlinclude HmiGlobalEnableReport.msg.html

(cl:defclass <HmiGlobalEnableReport> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (enable_request
    :reader enable_request
    :initarg :enable_request
    :type cl:boolean
    :initform cl:nil)
   (disable_request
    :reader disable_request
    :initarg :disable_request
    :type cl:boolean
    :initform cl:nil)
   (checksum
    :reader checksum
    :initarg :checksum
    :type cl:fixnum
    :initform 0)
   (ecu_build_number
    :reader ecu_build_number
    :initarg :ecu_build_number
    :type cl:fixnum
    :initform 0)
   (rolling_counter
    :reader rolling_counter
    :initarg :rolling_counter
    :type cl:fixnum
    :initform 0))
)

(cl:defclass HmiGlobalEnableReport (<HmiGlobalEnableReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HmiGlobalEnableReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HmiGlobalEnableReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name raptor_dbw_msgs-msg:<HmiGlobalEnableReport> is deprecated: use raptor_dbw_msgs-msg:HmiGlobalEnableReport instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <HmiGlobalEnableReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader raptor_dbw_msgs-msg:header-val is deprecated.  Use raptor_dbw_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'enable_request-val :lambda-list '(m))
(cl:defmethod enable_request-val ((m <HmiGlobalEnableReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader raptor_dbw_msgs-msg:enable_request-val is deprecated.  Use raptor_dbw_msgs-msg:enable_request instead.")
  (enable_request m))

(cl:ensure-generic-function 'disable_request-val :lambda-list '(m))
(cl:defmethod disable_request-val ((m <HmiGlobalEnableReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader raptor_dbw_msgs-msg:disable_request-val is deprecated.  Use raptor_dbw_msgs-msg:disable_request instead.")
  (disable_request m))

(cl:ensure-generic-function 'checksum-val :lambda-list '(m))
(cl:defmethod checksum-val ((m <HmiGlobalEnableReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader raptor_dbw_msgs-msg:checksum-val is deprecated.  Use raptor_dbw_msgs-msg:checksum instead.")
  (checksum m))

(cl:ensure-generic-function 'ecu_build_number-val :lambda-list '(m))
(cl:defmethod ecu_build_number-val ((m <HmiGlobalEnableReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader raptor_dbw_msgs-msg:ecu_build_number-val is deprecated.  Use raptor_dbw_msgs-msg:ecu_build_number instead.")
  (ecu_build_number m))

(cl:ensure-generic-function 'rolling_counter-val :lambda-list '(m))
(cl:defmethod rolling_counter-val ((m <HmiGlobalEnableReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader raptor_dbw_msgs-msg:rolling_counter-val is deprecated.  Use raptor_dbw_msgs-msg:rolling_counter instead.")
  (rolling_counter m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HmiGlobalEnableReport>) ostream)
  "Serializes a message object of type '<HmiGlobalEnableReport>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable_request) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'disable_request) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'checksum)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ecu_build_number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ecu_build_number)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rolling_counter)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HmiGlobalEnableReport>) istream)
  "Deserializes a message object of type '<HmiGlobalEnableReport>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'enable_request) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'disable_request) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'checksum)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ecu_build_number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ecu_build_number)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rolling_counter)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HmiGlobalEnableReport>)))
  "Returns string type for a message object of type '<HmiGlobalEnableReport>"
  "raptor_dbw_msgs/HmiGlobalEnableReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HmiGlobalEnableReport)))
  "Returns string type for a message object of type 'HmiGlobalEnableReport"
  "raptor_dbw_msgs/HmiGlobalEnableReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HmiGlobalEnableReport>)))
  "Returns md5sum for a message object of type '<HmiGlobalEnableReport>"
  "29d00e37d7749f78ca339d3a70968c0e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HmiGlobalEnableReport)))
  "Returns md5sum for a message object of type 'HmiGlobalEnableReport"
  "29d00e37d7749f78ca339d3a70968c0e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HmiGlobalEnableReport>)))
  "Returns full string definition for message of type '<HmiGlobalEnableReport>"
  (cl:format cl:nil "Header header~%~%bool enable_request~%~%bool disable_request~%~%uint8 checksum~%~%uint16 ecu_build_number~%~%uint8 rolling_counter~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HmiGlobalEnableReport)))
  "Returns full string definition for message of type 'HmiGlobalEnableReport"
  (cl:format cl:nil "Header header~%~%bool enable_request~%~%bool disable_request~%~%uint8 checksum~%~%uint16 ecu_build_number~%~%uint8 rolling_counter~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HmiGlobalEnableReport>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
     2
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HmiGlobalEnableReport>))
  "Converts a ROS message object to a list"
  (cl:list 'HmiGlobalEnableReport
    (cl:cons ':header (header msg))
    (cl:cons ':enable_request (enable_request msg))
    (cl:cons ':disable_request (disable_request msg))
    (cl:cons ':checksum (checksum msg))
    (cl:cons ':ecu_build_number (ecu_build_number msg))
    (cl:cons ':rolling_counter (rolling_counter msg))
))
