; Auto-generated. Do not edit!


(cl:in-package raptor_dbw_msgs-msg)


;//! \htmlinclude DriverInputReport.msg.html

(cl:defclass <DriverInputReport> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (turn_signal
    :reader turn_signal
    :initarg :turn_signal
    :type raptor_dbw_msgs-msg:TurnSignal
    :initform (cl:make-instance 'raptor_dbw_msgs-msg:TurnSignal))
   (high_beam_headlights
    :reader high_beam_headlights
    :initarg :high_beam_headlights
    :type raptor_dbw_msgs-msg:HighBeam
    :initform (cl:make-instance 'raptor_dbw_msgs-msg:HighBeam))
   (wiper
    :reader wiper
    :initarg :wiper
    :type raptor_dbw_msgs-msg:WiperFront
    :initform (cl:make-instance 'raptor_dbw_msgs-msg:WiperFront))
   (cruise_resume_button
    :reader cruise_resume_button
    :initarg :cruise_resume_button
    :type cl:boolean
    :initform cl:nil)
   (cruise_cancel_button
    :reader cruise_cancel_button
    :initarg :cruise_cancel_button
    :type cl:boolean
    :initform cl:nil)
   (cruise_accel_button
    :reader cruise_accel_button
    :initarg :cruise_accel_button
    :type cl:boolean
    :initform cl:nil)
   (cruise_decel_button
    :reader cruise_decel_button
    :initarg :cruise_decel_button
    :type cl:boolean
    :initform cl:nil)
   (cruise_on_off_button
    :reader cruise_on_off_button
    :initarg :cruise_on_off_button
    :type cl:boolean
    :initform cl:nil)
   (adaptive_cruise_on_off_button
    :reader adaptive_cruise_on_off_button
    :initarg :adaptive_cruise_on_off_button
    :type cl:boolean
    :initform cl:nil)
   (adaptive_cruise_increase_distance_button
    :reader adaptive_cruise_increase_distance_button
    :initarg :adaptive_cruise_increase_distance_button
    :type cl:boolean
    :initform cl:nil)
   (adaptive_cruise_decrease_distance_button
    :reader adaptive_cruise_decrease_distance_button
    :initarg :adaptive_cruise_decrease_distance_button
    :type cl:boolean
    :initform cl:nil)
   (driver_door_ajar
    :reader driver_door_ajar
    :initarg :driver_door_ajar
    :type cl:boolean
    :initform cl:nil)
   (passenger_door_ajar
    :reader passenger_door_ajar
    :initarg :passenger_door_ajar
    :type cl:boolean
    :initform cl:nil)
   (rear_left_door_ajar
    :reader rear_left_door_ajar
    :initarg :rear_left_door_ajar
    :type cl:boolean
    :initform cl:nil)
   (rear_right_door_ajar
    :reader rear_right_door_ajar
    :initarg :rear_right_door_ajar
    :type cl:boolean
    :initform cl:nil)
   (liftgate_ajar
    :reader liftgate_ajar
    :initarg :liftgate_ajar
    :type cl:boolean
    :initform cl:nil)
   (any_seatbelt_unbuckled
    :reader any_seatbelt_unbuckled
    :initarg :any_seatbelt_unbuckled
    :type cl:boolean
    :initform cl:nil)
   (airbag_deployed
    :reader airbag_deployed
    :initarg :airbag_deployed
    :type cl:boolean
    :initform cl:nil)
   (door_or_hood_ajar
    :reader door_or_hood_ajar
    :initarg :door_or_hood_ajar
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass DriverInputReport (<DriverInputReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DriverInputReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DriverInputReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name raptor_dbw_msgs-msg:<DriverInputReport> is deprecated: use raptor_dbw_msgs-msg:DriverInputReport instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <DriverInputReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader raptor_dbw_msgs-msg:header-val is deprecated.  Use raptor_dbw_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'turn_signal-val :lambda-list '(m))
(cl:defmethod turn_signal-val ((m <DriverInputReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader raptor_dbw_msgs-msg:turn_signal-val is deprecated.  Use raptor_dbw_msgs-msg:turn_signal instead.")
  (turn_signal m))

(cl:ensure-generic-function 'high_beam_headlights-val :lambda-list '(m))
(cl:defmethod high_beam_headlights-val ((m <DriverInputReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader raptor_dbw_msgs-msg:high_beam_headlights-val is deprecated.  Use raptor_dbw_msgs-msg:high_beam_headlights instead.")
  (high_beam_headlights m))

(cl:ensure-generic-function 'wiper-val :lambda-list '(m))
(cl:defmethod wiper-val ((m <DriverInputReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader raptor_dbw_msgs-msg:wiper-val is deprecated.  Use raptor_dbw_msgs-msg:wiper instead.")
  (wiper m))

(cl:ensure-generic-function 'cruise_resume_button-val :lambda-list '(m))
(cl:defmethod cruise_resume_button-val ((m <DriverInputReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader raptor_dbw_msgs-msg:cruise_resume_button-val is deprecated.  Use raptor_dbw_msgs-msg:cruise_resume_button instead.")
  (cruise_resume_button m))

(cl:ensure-generic-function 'cruise_cancel_button-val :lambda-list '(m))
(cl:defmethod cruise_cancel_button-val ((m <DriverInputReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader raptor_dbw_msgs-msg:cruise_cancel_button-val is deprecated.  Use raptor_dbw_msgs-msg:cruise_cancel_button instead.")
  (cruise_cancel_button m))

(cl:ensure-generic-function 'cruise_accel_button-val :lambda-list '(m))
(cl:defmethod cruise_accel_button-val ((m <DriverInputReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader raptor_dbw_msgs-msg:cruise_accel_button-val is deprecated.  Use raptor_dbw_msgs-msg:cruise_accel_button instead.")
  (cruise_accel_button m))

(cl:ensure-generic-function 'cruise_decel_button-val :lambda-list '(m))
(cl:defmethod cruise_decel_button-val ((m <DriverInputReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader raptor_dbw_msgs-msg:cruise_decel_button-val is deprecated.  Use raptor_dbw_msgs-msg:cruise_decel_button instead.")
  (cruise_decel_button m))

(cl:ensure-generic-function 'cruise_on_off_button-val :lambda-list '(m))
(cl:defmethod cruise_on_off_button-val ((m <DriverInputReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader raptor_dbw_msgs-msg:cruise_on_off_button-val is deprecated.  Use raptor_dbw_msgs-msg:cruise_on_off_button instead.")
  (cruise_on_off_button m))

(cl:ensure-generic-function 'adaptive_cruise_on_off_button-val :lambda-list '(m))
(cl:defmethod adaptive_cruise_on_off_button-val ((m <DriverInputReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader raptor_dbw_msgs-msg:adaptive_cruise_on_off_button-val is deprecated.  Use raptor_dbw_msgs-msg:adaptive_cruise_on_off_button instead.")
  (adaptive_cruise_on_off_button m))

(cl:ensure-generic-function 'adaptive_cruise_increase_distance_button-val :lambda-list '(m))
(cl:defmethod adaptive_cruise_increase_distance_button-val ((m <DriverInputReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader raptor_dbw_msgs-msg:adaptive_cruise_increase_distance_button-val is deprecated.  Use raptor_dbw_msgs-msg:adaptive_cruise_increase_distance_button instead.")
  (adaptive_cruise_increase_distance_button m))

(cl:ensure-generic-function 'adaptive_cruise_decrease_distance_button-val :lambda-list '(m))
(cl:defmethod adaptive_cruise_decrease_distance_button-val ((m <DriverInputReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader raptor_dbw_msgs-msg:adaptive_cruise_decrease_distance_button-val is deprecated.  Use raptor_dbw_msgs-msg:adaptive_cruise_decrease_distance_button instead.")
  (adaptive_cruise_decrease_distance_button m))

(cl:ensure-generic-function 'driver_door_ajar-val :lambda-list '(m))
(cl:defmethod driver_door_ajar-val ((m <DriverInputReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader raptor_dbw_msgs-msg:driver_door_ajar-val is deprecated.  Use raptor_dbw_msgs-msg:driver_door_ajar instead.")
  (driver_door_ajar m))

(cl:ensure-generic-function 'passenger_door_ajar-val :lambda-list '(m))
(cl:defmethod passenger_door_ajar-val ((m <DriverInputReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader raptor_dbw_msgs-msg:passenger_door_ajar-val is deprecated.  Use raptor_dbw_msgs-msg:passenger_door_ajar instead.")
  (passenger_door_ajar m))

(cl:ensure-generic-function 'rear_left_door_ajar-val :lambda-list '(m))
(cl:defmethod rear_left_door_ajar-val ((m <DriverInputReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader raptor_dbw_msgs-msg:rear_left_door_ajar-val is deprecated.  Use raptor_dbw_msgs-msg:rear_left_door_ajar instead.")
  (rear_left_door_ajar m))

(cl:ensure-generic-function 'rear_right_door_ajar-val :lambda-list '(m))
(cl:defmethod rear_right_door_ajar-val ((m <DriverInputReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader raptor_dbw_msgs-msg:rear_right_door_ajar-val is deprecated.  Use raptor_dbw_msgs-msg:rear_right_door_ajar instead.")
  (rear_right_door_ajar m))

(cl:ensure-generic-function 'liftgate_ajar-val :lambda-list '(m))
(cl:defmethod liftgate_ajar-val ((m <DriverInputReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader raptor_dbw_msgs-msg:liftgate_ajar-val is deprecated.  Use raptor_dbw_msgs-msg:liftgate_ajar instead.")
  (liftgate_ajar m))

(cl:ensure-generic-function 'any_seatbelt_unbuckled-val :lambda-list '(m))
(cl:defmethod any_seatbelt_unbuckled-val ((m <DriverInputReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader raptor_dbw_msgs-msg:any_seatbelt_unbuckled-val is deprecated.  Use raptor_dbw_msgs-msg:any_seatbelt_unbuckled instead.")
  (any_seatbelt_unbuckled m))

(cl:ensure-generic-function 'airbag_deployed-val :lambda-list '(m))
(cl:defmethod airbag_deployed-val ((m <DriverInputReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader raptor_dbw_msgs-msg:airbag_deployed-val is deprecated.  Use raptor_dbw_msgs-msg:airbag_deployed instead.")
  (airbag_deployed m))

(cl:ensure-generic-function 'door_or_hood_ajar-val :lambda-list '(m))
(cl:defmethod door_or_hood_ajar-val ((m <DriverInputReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader raptor_dbw_msgs-msg:door_or_hood_ajar-val is deprecated.  Use raptor_dbw_msgs-msg:door_or_hood_ajar instead.")
  (door_or_hood_ajar m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DriverInputReport>) ostream)
  "Serializes a message object of type '<DriverInputReport>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'turn_signal) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'high_beam_headlights) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'wiper) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'cruise_resume_button) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'cruise_cancel_button) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'cruise_accel_button) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'cruise_decel_button) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'cruise_on_off_button) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'adaptive_cruise_on_off_button) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'adaptive_cruise_increase_distance_button) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'adaptive_cruise_decrease_distance_button) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'driver_door_ajar) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'passenger_door_ajar) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'rear_left_door_ajar) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'rear_right_door_ajar) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'liftgate_ajar) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'any_seatbelt_unbuckled) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'airbag_deployed) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'door_or_hood_ajar) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DriverInputReport>) istream)
  "Deserializes a message object of type '<DriverInputReport>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'turn_signal) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'high_beam_headlights) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'wiper) istream)
    (cl:setf (cl:slot-value msg 'cruise_resume_button) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'cruise_cancel_button) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'cruise_accel_button) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'cruise_decel_button) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'cruise_on_off_button) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'adaptive_cruise_on_off_button) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'adaptive_cruise_increase_distance_button) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'adaptive_cruise_decrease_distance_button) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'driver_door_ajar) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'passenger_door_ajar) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'rear_left_door_ajar) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'rear_right_door_ajar) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'liftgate_ajar) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'any_seatbelt_unbuckled) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'airbag_deployed) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'door_or_hood_ajar) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DriverInputReport>)))
  "Returns string type for a message object of type '<DriverInputReport>"
  "raptor_dbw_msgs/DriverInputReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DriverInputReport)))
  "Returns string type for a message object of type 'DriverInputReport"
  "raptor_dbw_msgs/DriverInputReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DriverInputReport>)))
  "Returns md5sum for a message object of type '<DriverInputReport>"
  "39b09090e1c37c932f4f9021bb96dc32")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DriverInputReport)))
  "Returns md5sum for a message object of type 'DriverInputReport"
  "39b09090e1c37c932f4f9021bb96dc32")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DriverInputReport>)))
  "Returns full string definition for message of type '<DriverInputReport>"
  (cl:format cl:nil "Header header~%~%# Turn Signal enumeration~%TurnSignal turn_signal~%~%# High beams~%HighBeam high_beam_headlights~%~%# Front Windshield Wipers enumeration~%WiperFront wiper~%~%# Buttons~%bool cruise_resume_button~%bool cruise_cancel_button~%bool cruise_accel_button~%bool cruise_decel_button~%bool cruise_on_off_button~%bool adaptive_cruise_on_off_button~%bool adaptive_cruise_increase_distance_button~%bool adaptive_cruise_decrease_distance_button~%~%# Door status~%bool driver_door_ajar~%bool passenger_door_ajar~%bool rear_left_door_ajar~%bool rear_right_door_ajar~%bool liftgate_ajar~%bool any_seatbelt_unbuckled~%bool airbag_deployed~%bool door_or_hood_ajar~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: raptor_dbw_msgs/TurnSignal~%uint8 value~%~%uint8 NONE = 0~%uint8 LEFT = 1~%uint8 RIGHT = 2~%uint8 HAZARDS = 3~%uint8 SNA = 7~%================================================================================~%MSG: raptor_dbw_msgs/HighBeam~%uint8 status~%~%uint8 OFF = 0~%uint8 ON = 1~%uint8 FORCE_ON = 2~%uint8 RESERVED = 3~%~%================================================================================~%MSG: raptor_dbw_msgs/WiperFront~%uint8 status~%~%uint8 OFF = 0~%uint8 INTERVAL_1 = 1~%uint8 INTERVAL_2 = 2~%uint8 INTERVAL_3 = 3~%uint8 INTERVAL_4 = 4~%uint8 INTERVAL_5 = 5~%uint8 INTERVAL_6 = 6~%uint8 CONSTANT_LOW = 11~%uint8 CONSTANT_HIGH = 12~%uint8 WASH_BRIEF = 13~%uint8 WASH_CONTINUOUS = 14~%uint8 SNA = 15~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DriverInputReport)))
  "Returns full string definition for message of type 'DriverInputReport"
  (cl:format cl:nil "Header header~%~%# Turn Signal enumeration~%TurnSignal turn_signal~%~%# High beams~%HighBeam high_beam_headlights~%~%# Front Windshield Wipers enumeration~%WiperFront wiper~%~%# Buttons~%bool cruise_resume_button~%bool cruise_cancel_button~%bool cruise_accel_button~%bool cruise_decel_button~%bool cruise_on_off_button~%bool adaptive_cruise_on_off_button~%bool adaptive_cruise_increase_distance_button~%bool adaptive_cruise_decrease_distance_button~%~%# Door status~%bool driver_door_ajar~%bool passenger_door_ajar~%bool rear_left_door_ajar~%bool rear_right_door_ajar~%bool liftgate_ajar~%bool any_seatbelt_unbuckled~%bool airbag_deployed~%bool door_or_hood_ajar~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: raptor_dbw_msgs/TurnSignal~%uint8 value~%~%uint8 NONE = 0~%uint8 LEFT = 1~%uint8 RIGHT = 2~%uint8 HAZARDS = 3~%uint8 SNA = 7~%================================================================================~%MSG: raptor_dbw_msgs/HighBeam~%uint8 status~%~%uint8 OFF = 0~%uint8 ON = 1~%uint8 FORCE_ON = 2~%uint8 RESERVED = 3~%~%================================================================================~%MSG: raptor_dbw_msgs/WiperFront~%uint8 status~%~%uint8 OFF = 0~%uint8 INTERVAL_1 = 1~%uint8 INTERVAL_2 = 2~%uint8 INTERVAL_3 = 3~%uint8 INTERVAL_4 = 4~%uint8 INTERVAL_5 = 5~%uint8 INTERVAL_6 = 6~%uint8 CONSTANT_LOW = 11~%uint8 CONSTANT_HIGH = 12~%uint8 WASH_BRIEF = 13~%uint8 WASH_CONTINUOUS = 14~%uint8 SNA = 15~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DriverInputReport>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'turn_signal))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'high_beam_headlights))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'wiper))
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DriverInputReport>))
  "Converts a ROS message object to a list"
  (cl:list 'DriverInputReport
    (cl:cons ':header (header msg))
    (cl:cons ':turn_signal (turn_signal msg))
    (cl:cons ':high_beam_headlights (high_beam_headlights msg))
    (cl:cons ':wiper (wiper msg))
    (cl:cons ':cruise_resume_button (cruise_resume_button msg))
    (cl:cons ':cruise_cancel_button (cruise_cancel_button msg))
    (cl:cons ':cruise_accel_button (cruise_accel_button msg))
    (cl:cons ':cruise_decel_button (cruise_decel_button msg))
    (cl:cons ':cruise_on_off_button (cruise_on_off_button msg))
    (cl:cons ':adaptive_cruise_on_off_button (adaptive_cruise_on_off_button msg))
    (cl:cons ':adaptive_cruise_increase_distance_button (adaptive_cruise_increase_distance_button msg))
    (cl:cons ':adaptive_cruise_decrease_distance_button (adaptive_cruise_decrease_distance_button msg))
    (cl:cons ':driver_door_ajar (driver_door_ajar msg))
    (cl:cons ':passenger_door_ajar (passenger_door_ajar msg))
    (cl:cons ':rear_left_door_ajar (rear_left_door_ajar msg))
    (cl:cons ':rear_right_door_ajar (rear_right_door_ajar msg))
    (cl:cons ':liftgate_ajar (liftgate_ajar msg))
    (cl:cons ':any_seatbelt_unbuckled (any_seatbelt_unbuckled msg))
    (cl:cons ':airbag_deployed (airbag_deployed msg))
    (cl:cons ':door_or_hood_ajar (door_or_hood_ajar msg))
))
