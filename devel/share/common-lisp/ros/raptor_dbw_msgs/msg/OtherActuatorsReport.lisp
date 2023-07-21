; Auto-generated. Do not edit!


(cl:in-package raptor_dbw_msgs-msg)


;//! \htmlinclude OtherActuatorsReport.msg.html

(cl:defclass <OtherActuatorsReport> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (turn_signal_state
    :reader turn_signal_state
    :initarg :turn_signal_state
    :type raptor_dbw_msgs-msg:TurnSignal
    :initform (cl:make-instance 'raptor_dbw_msgs-msg:TurnSignal))
   (right_rear_door_state
    :reader right_rear_door_state
    :initarg :right_rear_door_state
    :type raptor_dbw_msgs-msg:DoorState
    :initform (cl:make-instance 'raptor_dbw_msgs-msg:DoorState))
   (high_beam_state
    :reader high_beam_state
    :initarg :high_beam_state
    :type raptor_dbw_msgs-msg:HighBeamState
    :initform (cl:make-instance 'raptor_dbw_msgs-msg:HighBeamState))
   (front_wiper_state
    :reader front_wiper_state
    :initarg :front_wiper_state
    :type raptor_dbw_msgs-msg:WiperFront
    :initform (cl:make-instance 'raptor_dbw_msgs-msg:WiperFront))
   (rear_wiper_state
    :reader rear_wiper_state
    :initarg :rear_wiper_state
    :type raptor_dbw_msgs-msg:WiperRear
    :initform (cl:make-instance 'raptor_dbw_msgs-msg:WiperRear))
   (ignition_state
    :reader ignition_state
    :initarg :ignition_state
    :type raptor_dbw_msgs-msg:Ignition
    :initform (cl:make-instance 'raptor_dbw_msgs-msg:Ignition))
   (left_rear_door_state
    :reader left_rear_door_state
    :initarg :left_rear_door_state
    :type raptor_dbw_msgs-msg:DoorState
    :initform (cl:make-instance 'raptor_dbw_msgs-msg:DoorState))
   (liftgate_door_state
    :reader liftgate_door_state
    :initarg :liftgate_door_state
    :type raptor_dbw_msgs-msg:DoorState
    :initform (cl:make-instance 'raptor_dbw_msgs-msg:DoorState))
   (horn_state
    :reader horn_state
    :initarg :horn_state
    :type raptor_dbw_msgs-msg:HornState
    :initform (cl:make-instance 'raptor_dbw_msgs-msg:HornState))
   (low_beam_state
    :reader low_beam_state
    :initarg :low_beam_state
    :type raptor_dbw_msgs-msg:LowBeam
    :initform (cl:make-instance 'raptor_dbw_msgs-msg:LowBeam))
   (rolling_counter
    :reader rolling_counter
    :initarg :rolling_counter
    :type cl:fixnum
    :initform 0))
)

(cl:defclass OtherActuatorsReport (<OtherActuatorsReport>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <OtherActuatorsReport>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'OtherActuatorsReport)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name raptor_dbw_msgs-msg:<OtherActuatorsReport> is deprecated: use raptor_dbw_msgs-msg:OtherActuatorsReport instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <OtherActuatorsReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader raptor_dbw_msgs-msg:header-val is deprecated.  Use raptor_dbw_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'turn_signal_state-val :lambda-list '(m))
(cl:defmethod turn_signal_state-val ((m <OtherActuatorsReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader raptor_dbw_msgs-msg:turn_signal_state-val is deprecated.  Use raptor_dbw_msgs-msg:turn_signal_state instead.")
  (turn_signal_state m))

(cl:ensure-generic-function 'right_rear_door_state-val :lambda-list '(m))
(cl:defmethod right_rear_door_state-val ((m <OtherActuatorsReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader raptor_dbw_msgs-msg:right_rear_door_state-val is deprecated.  Use raptor_dbw_msgs-msg:right_rear_door_state instead.")
  (right_rear_door_state m))

(cl:ensure-generic-function 'high_beam_state-val :lambda-list '(m))
(cl:defmethod high_beam_state-val ((m <OtherActuatorsReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader raptor_dbw_msgs-msg:high_beam_state-val is deprecated.  Use raptor_dbw_msgs-msg:high_beam_state instead.")
  (high_beam_state m))

(cl:ensure-generic-function 'front_wiper_state-val :lambda-list '(m))
(cl:defmethod front_wiper_state-val ((m <OtherActuatorsReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader raptor_dbw_msgs-msg:front_wiper_state-val is deprecated.  Use raptor_dbw_msgs-msg:front_wiper_state instead.")
  (front_wiper_state m))

(cl:ensure-generic-function 'rear_wiper_state-val :lambda-list '(m))
(cl:defmethod rear_wiper_state-val ((m <OtherActuatorsReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader raptor_dbw_msgs-msg:rear_wiper_state-val is deprecated.  Use raptor_dbw_msgs-msg:rear_wiper_state instead.")
  (rear_wiper_state m))

(cl:ensure-generic-function 'ignition_state-val :lambda-list '(m))
(cl:defmethod ignition_state-val ((m <OtherActuatorsReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader raptor_dbw_msgs-msg:ignition_state-val is deprecated.  Use raptor_dbw_msgs-msg:ignition_state instead.")
  (ignition_state m))

(cl:ensure-generic-function 'left_rear_door_state-val :lambda-list '(m))
(cl:defmethod left_rear_door_state-val ((m <OtherActuatorsReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader raptor_dbw_msgs-msg:left_rear_door_state-val is deprecated.  Use raptor_dbw_msgs-msg:left_rear_door_state instead.")
  (left_rear_door_state m))

(cl:ensure-generic-function 'liftgate_door_state-val :lambda-list '(m))
(cl:defmethod liftgate_door_state-val ((m <OtherActuatorsReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader raptor_dbw_msgs-msg:liftgate_door_state-val is deprecated.  Use raptor_dbw_msgs-msg:liftgate_door_state instead.")
  (liftgate_door_state m))

(cl:ensure-generic-function 'horn_state-val :lambda-list '(m))
(cl:defmethod horn_state-val ((m <OtherActuatorsReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader raptor_dbw_msgs-msg:horn_state-val is deprecated.  Use raptor_dbw_msgs-msg:horn_state instead.")
  (horn_state m))

(cl:ensure-generic-function 'low_beam_state-val :lambda-list '(m))
(cl:defmethod low_beam_state-val ((m <OtherActuatorsReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader raptor_dbw_msgs-msg:low_beam_state-val is deprecated.  Use raptor_dbw_msgs-msg:low_beam_state instead.")
  (low_beam_state m))

(cl:ensure-generic-function 'rolling_counter-val :lambda-list '(m))
(cl:defmethod rolling_counter-val ((m <OtherActuatorsReport>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader raptor_dbw_msgs-msg:rolling_counter-val is deprecated.  Use raptor_dbw_msgs-msg:rolling_counter instead.")
  (rolling_counter m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <OtherActuatorsReport>) ostream)
  "Serializes a message object of type '<OtherActuatorsReport>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'turn_signal_state) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'right_rear_door_state) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'high_beam_state) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'front_wiper_state) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rear_wiper_state) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ignition_state) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'left_rear_door_state) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'liftgate_door_state) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'horn_state) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'low_beam_state) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rolling_counter)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <OtherActuatorsReport>) istream)
  "Deserializes a message object of type '<OtherActuatorsReport>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'turn_signal_state) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'right_rear_door_state) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'high_beam_state) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'front_wiper_state) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rear_wiper_state) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ignition_state) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'left_rear_door_state) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'liftgate_door_state) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'horn_state) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'low_beam_state) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rolling_counter)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<OtherActuatorsReport>)))
  "Returns string type for a message object of type '<OtherActuatorsReport>"
  "raptor_dbw_msgs/OtherActuatorsReport")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'OtherActuatorsReport)))
  "Returns string type for a message object of type 'OtherActuatorsReport"
  "raptor_dbw_msgs/OtherActuatorsReport")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<OtherActuatorsReport>)))
  "Returns md5sum for a message object of type '<OtherActuatorsReport>"
  "2109072233b64ea71bab77b539413ada")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'OtherActuatorsReport)))
  "Returns md5sum for a message object of type 'OtherActuatorsReport"
  "2109072233b64ea71bab77b539413ada")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<OtherActuatorsReport>)))
  "Returns full string definition for message of type '<OtherActuatorsReport>"
  (cl:format cl:nil "Header header~%~%TurnSignal turn_signal_state ~%DoorState right_rear_door_state ~%HighBeamState high_beam_state ~%WiperFront front_wiper_state ~%WiperRear rear_wiper_state ~%Ignition ignition_state ~%DoorState left_rear_door_state ~%DoorState liftgate_door_state ~%HornState horn_state ~%LowBeam low_beam_state ~%~%uint8 rolling_counter~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: raptor_dbw_msgs/TurnSignal~%uint8 value~%~%uint8 NONE = 0~%uint8 LEFT = 1~%uint8 RIGHT = 2~%uint8 HAZARDS = 3~%uint8 SNA = 7~%================================================================================~%MSG: raptor_dbw_msgs/DoorState~%uint8 value~%~%uint8 UNDEFINED = 0~%uint8 CLOSED = 1~%uint8 OPEN = 2~%uint8 SNA = 3~%~%================================================================================~%MSG: raptor_dbw_msgs/HighBeamState~%uint8 value~%~%uint8 SNA = 0~%uint8 RESERVED = 1~%uint8 ON = 2~%uint8 OFF = 0~%================================================================================~%MSG: raptor_dbw_msgs/WiperFront~%uint8 status~%~%uint8 OFF = 0~%uint8 INTERVAL_1 = 1~%uint8 INTERVAL_2 = 2~%uint8 INTERVAL_3 = 3~%uint8 INTERVAL_4 = 4~%uint8 INTERVAL_5 = 5~%uint8 INTERVAL_6 = 6~%uint8 CONSTANT_LOW = 11~%uint8 CONSTANT_HIGH = 12~%uint8 WASH_BRIEF = 13~%uint8 WASH_CONTINUOUS = 14~%uint8 SNA = 15~%================================================================================~%MSG: raptor_dbw_msgs/WiperRear~%uint8 status~%~%uint8 OFF = 0~%uint8 INTERVAL_1 = 1~%uint8 CONSTANT_LOW = 11~%uint8 CONSTANT_HIGH = 12~%uint8 WASH_BRIEF = 13~%uint8 WASH_CONTINUOUS = 14~%uint8 SNA = 15~%================================================================================~%MSG: raptor_dbw_msgs/Ignition~%uint8 status~%~%uint8 NO_REQUEST = 0~%uint8 FORCE_OFF = 1~%uint8 ACCESSORY = 2~%uint8 RUN = 3~%uint8 CRANK = 4~%================================================================================~%MSG: raptor_dbw_msgs/HornState~%uint8 status~%~%uint8 OFF = 0~%uint8 ON = 1~%uint8 SNA = 2~%~%================================================================================~%MSG: raptor_dbw_msgs/LowBeam~%uint8 status~%~%uint8 OFF = 0~%uint8 RESERVED = 1~%uint8 ON = 2~%uint8 RESERVED_1 = 3~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'OtherActuatorsReport)))
  "Returns full string definition for message of type 'OtherActuatorsReport"
  (cl:format cl:nil "Header header~%~%TurnSignal turn_signal_state ~%DoorState right_rear_door_state ~%HighBeamState high_beam_state ~%WiperFront front_wiper_state ~%WiperRear rear_wiper_state ~%Ignition ignition_state ~%DoorState left_rear_door_state ~%DoorState liftgate_door_state ~%HornState horn_state ~%LowBeam low_beam_state ~%~%uint8 rolling_counter~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: raptor_dbw_msgs/TurnSignal~%uint8 value~%~%uint8 NONE = 0~%uint8 LEFT = 1~%uint8 RIGHT = 2~%uint8 HAZARDS = 3~%uint8 SNA = 7~%================================================================================~%MSG: raptor_dbw_msgs/DoorState~%uint8 value~%~%uint8 UNDEFINED = 0~%uint8 CLOSED = 1~%uint8 OPEN = 2~%uint8 SNA = 3~%~%================================================================================~%MSG: raptor_dbw_msgs/HighBeamState~%uint8 value~%~%uint8 SNA = 0~%uint8 RESERVED = 1~%uint8 ON = 2~%uint8 OFF = 0~%================================================================================~%MSG: raptor_dbw_msgs/WiperFront~%uint8 status~%~%uint8 OFF = 0~%uint8 INTERVAL_1 = 1~%uint8 INTERVAL_2 = 2~%uint8 INTERVAL_3 = 3~%uint8 INTERVAL_4 = 4~%uint8 INTERVAL_5 = 5~%uint8 INTERVAL_6 = 6~%uint8 CONSTANT_LOW = 11~%uint8 CONSTANT_HIGH = 12~%uint8 WASH_BRIEF = 13~%uint8 WASH_CONTINUOUS = 14~%uint8 SNA = 15~%================================================================================~%MSG: raptor_dbw_msgs/WiperRear~%uint8 status~%~%uint8 OFF = 0~%uint8 INTERVAL_1 = 1~%uint8 CONSTANT_LOW = 11~%uint8 CONSTANT_HIGH = 12~%uint8 WASH_BRIEF = 13~%uint8 WASH_CONTINUOUS = 14~%uint8 SNA = 15~%================================================================================~%MSG: raptor_dbw_msgs/Ignition~%uint8 status~%~%uint8 NO_REQUEST = 0~%uint8 FORCE_OFF = 1~%uint8 ACCESSORY = 2~%uint8 RUN = 3~%uint8 CRANK = 4~%================================================================================~%MSG: raptor_dbw_msgs/HornState~%uint8 status~%~%uint8 OFF = 0~%uint8 ON = 1~%uint8 SNA = 2~%~%================================================================================~%MSG: raptor_dbw_msgs/LowBeam~%uint8 status~%~%uint8 OFF = 0~%uint8 RESERVED = 1~%uint8 ON = 2~%uint8 RESERVED_1 = 3~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <OtherActuatorsReport>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'turn_signal_state))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'right_rear_door_state))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'high_beam_state))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'front_wiper_state))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rear_wiper_state))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ignition_state))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'left_rear_door_state))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'liftgate_door_state))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'horn_state))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'low_beam_state))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <OtherActuatorsReport>))
  "Converts a ROS message object to a list"
  (cl:list 'OtherActuatorsReport
    (cl:cons ':header (header msg))
    (cl:cons ':turn_signal_state (turn_signal_state msg))
    (cl:cons ':right_rear_door_state (right_rear_door_state msg))
    (cl:cons ':high_beam_state (high_beam_state msg))
    (cl:cons ':front_wiper_state (front_wiper_state msg))
    (cl:cons ':rear_wiper_state (rear_wiper_state msg))
    (cl:cons ':ignition_state (ignition_state msg))
    (cl:cons ':left_rear_door_state (left_rear_door_state msg))
    (cl:cons ':liftgate_door_state (liftgate_door_state msg))
    (cl:cons ':horn_state (horn_state msg))
    (cl:cons ':low_beam_state (low_beam_state msg))
    (cl:cons ':rolling_counter (rolling_counter msg))
))
