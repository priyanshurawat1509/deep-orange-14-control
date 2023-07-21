; Auto-generated. Do not edit!


(cl:in-package raptor_dbw_msgs-msg)


;//! \htmlinclude FaultActionsReport.msg.html

(cl:defclass <FaultActionsReport> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (autonomous_disabled_no_brakes
    :reader autonomous_disabled_no_brakes
    :initarg :autonomous_disabled_no_brakes
    :type cl:boolean
    :initform cl:nil)
   (autonomous_disabled_apply_brakes
    :reader autonomous_disabled_apply_brakes
    :initarg :autonomous_disabled_apply_brakes
    :type cl:boolean
    :initform cl:nil)
   (can_gateway_disabled
    :reader can_gateway_disabled
    :initarg :can_gateway_disabled
    :type cl:boolean
    :initform cl:nil)
   (inverter_contactor_disabled
    :reader inverter_contactor_disabled
    :initarg :inverter_contactor_disabled
    :type cl:boolean
    :initform cl:nil)
   (prevent_enter_autonomous_mode
    :reader prevent_enter_autonomous_mode
    :initarg :prevent_enter_autonomous_mode
    :type cl:boolean
    :initform cl:nil)
   (warn_driver_only
    :reader warn_driver_only
    :initarg :warn_driver_only
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass FaultActionsReport (<FaultActionsReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FaultActionsReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FaultActionsReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name raptor_dbw_msgs-msg:<FaultActionsReport> is deprecated: use raptor_dbw_msgs-msg:FaultActionsReport instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <FaultActionsReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader raptor_dbw_msgs-msg:header-val is deprecated.  Use raptor_dbw_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'autonomous_disabled_no_brakes-val :lambda-list '(m))
(cl:defmethod autonomous_disabled_no_brakes-val ((m <FaultActionsReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader raptor_dbw_msgs-msg:autonomous_disabled_no_brakes-val is deprecated.  Use raptor_dbw_msgs-msg:autonomous_disabled_no_brakes instead.")
  (autonomous_disabled_no_brakes m))

(cl:ensure-generic-function 'autonomous_disabled_apply_brakes-val :lambda-list '(m))
(cl:defmethod autonomous_disabled_apply_brakes-val ((m <FaultActionsReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader raptor_dbw_msgs-msg:autonomous_disabled_apply_brakes-val is deprecated.  Use raptor_dbw_msgs-msg:autonomous_disabled_apply_brakes instead.")
  (autonomous_disabled_apply_brakes m))

(cl:ensure-generic-function 'can_gateway_disabled-val :lambda-list '(m))
(cl:defmethod can_gateway_disabled-val ((m <FaultActionsReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader raptor_dbw_msgs-msg:can_gateway_disabled-val is deprecated.  Use raptor_dbw_msgs-msg:can_gateway_disabled instead.")
  (can_gateway_disabled m))

(cl:ensure-generic-function 'inverter_contactor_disabled-val :lambda-list '(m))
(cl:defmethod inverter_contactor_disabled-val ((m <FaultActionsReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader raptor_dbw_msgs-msg:inverter_contactor_disabled-val is deprecated.  Use raptor_dbw_msgs-msg:inverter_contactor_disabled instead.")
  (inverter_contactor_disabled m))

(cl:ensure-generic-function 'prevent_enter_autonomous_mode-val :lambda-list '(m))
(cl:defmethod prevent_enter_autonomous_mode-val ((m <FaultActionsReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader raptor_dbw_msgs-msg:prevent_enter_autonomous_mode-val is deprecated.  Use raptor_dbw_msgs-msg:prevent_enter_autonomous_mode instead.")
  (prevent_enter_autonomous_mode m))

(cl:ensure-generic-function 'warn_driver_only-val :lambda-list '(m))
(cl:defmethod warn_driver_only-val ((m <FaultActionsReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader raptor_dbw_msgs-msg:warn_driver_only-val is deprecated.  Use raptor_dbw_msgs-msg:warn_driver_only instead.")
  (warn_driver_only m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FaultActionsReport>) ostream)
  "Serializes a message object of type '<FaultActionsReport>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'autonomous_disabled_no_brakes) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'autonomous_disabled_apply_brakes) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'can_gateway_disabled) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'inverter_contactor_disabled) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'prevent_enter_autonomous_mode) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'warn_driver_only) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FaultActionsReport>) istream)
  "Deserializes a message object of type '<FaultActionsReport>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:slot-value msg 'autonomous_disabled_no_brakes) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'autonomous_disabled_apply_brakes) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'can_gateway_disabled) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'inverter_contactor_disabled) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'prevent_enter_autonomous_mode) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'warn_driver_only) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FaultActionsReport>)))
  "Returns string type for a message object of type '<FaultActionsReport>"
  "raptor_dbw_msgs/FaultActionsReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FaultActionsReport)))
  "Returns string type for a message object of type 'FaultActionsReport"
  "raptor_dbw_msgs/FaultActionsReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FaultActionsReport>)))
  "Returns md5sum for a message object of type '<FaultActionsReport>"
  "01de9bc391b21fe215ee7cfdd1f13e1f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FaultActionsReport)))
  "Returns md5sum for a message object of type 'FaultActionsReport"
  "01de9bc391b21fe215ee7cfdd1f13e1f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FaultActionsReport>)))
  "Returns full string definition for message of type '<FaultActionsReport>"
  (cl:format cl:nil "Header header~%~%bool autonomous_disabled_no_brakes ~%bool autonomous_disabled_apply_brakes ~%bool can_gateway_disabled ~%bool inverter_contactor_disabled ~%bool prevent_enter_autonomous_mode ~%bool warn_driver_only ~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FaultActionsReport)))
  "Returns full string definition for message of type 'FaultActionsReport"
  (cl:format cl:nil "Header header~%~%bool autonomous_disabled_no_brakes ~%bool autonomous_disabled_apply_brakes ~%bool can_gateway_disabled ~%bool inverter_contactor_disabled ~%bool prevent_enter_autonomous_mode ~%bool warn_driver_only ~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FaultActionsReport>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FaultActionsReport>))
  "Converts a ROS message object to a list"
  (cl:list 'FaultActionsReport
    (cl:cons ':header (header msg))
    (cl:cons ':autonomous_disabled_no_brakes (autonomous_disabled_no_brakes msg))
    (cl:cons ':autonomous_disabled_apply_brakes (autonomous_disabled_apply_brakes msg))
    (cl:cons ':can_gateway_disabled (can_gateway_disabled msg))
    (cl:cons ':inverter_contactor_disabled (inverter_contactor_disabled msg))
    (cl:cons ':prevent_enter_autonomous_mode (prevent_enter_autonomous_mode msg))
    (cl:cons ':warn_driver_only (warn_driver_only msg))
))
