; Auto-generated. Do not edit!


(cl:in-package raptor_dbw_msgs-msg)


;//! \htmlinclude MiscCmd.msg.html

(cl:defclass <MiscCmd> (roslisp-msg-protocol:ros-message)
  ((cmd
    :reader cmd
    :initarg :cmd
    :type raptor_dbw_msgs-msg:TurnSignal
    :initform (cl:make-instance 'raptor_dbw_msgs-msg:TurnSignal))
   (door_request_right_rear
    :reader door_request_right_rear
    :initarg :door_request_right_rear
    :type raptor_dbw_msgs-msg:DoorRequest
    :initform (cl:make-instance 'raptor_dbw_msgs-msg:DoorRequest))
   (rolling_counter
    :reader rolling_counter
    :initarg :rolling_counter
    :type cl:fixnum
    :initform 0)
   (high_beam_cmd
    :reader high_beam_cmd
    :initarg :high_beam_cmd
    :type raptor_dbw_msgs-msg:HighBeam
    :initform (cl:make-instance 'raptor_dbw_msgs-msg:HighBeam))
   (front_wiper_cmd
    :reader front_wiper_cmd
    :initarg :front_wiper_cmd
    :type raptor_dbw_msgs-msg:WiperFront
    :initform (cl:make-instance 'raptor_dbw_msgs-msg:WiperFront))
   (rear_wiper_cmd
    :reader rear_wiper_cmd
    :initarg :rear_wiper_cmd
    :type raptor_dbw_msgs-msg:WiperRear
    :initform (cl:make-instance 'raptor_dbw_msgs-msg:WiperRear))
   (ignition_cmd
    :reader ignition_cmd
    :initarg :ignition_cmd
    :type raptor_dbw_msgs-msg:Ignition
    :initform (cl:make-instance 'raptor_dbw_msgs-msg:Ignition))
   (door_request_left_rear
    :reader door_request_left_rear
    :initarg :door_request_left_rear
    :type raptor_dbw_msgs-msg:DoorRequest
    :initform (cl:make-instance 'raptor_dbw_msgs-msg:DoorRequest))
   (door_request_lift_gate
    :reader door_request_lift_gate
    :initarg :door_request_lift_gate
    :type raptor_dbw_msgs-msg:DoorRequest
    :initform (cl:make-instance 'raptor_dbw_msgs-msg:DoorRequest))
   (block_standard_cruise_buttons
    :reader block_standard_cruise_buttons
    :initarg :block_standard_cruise_buttons
    :type cl:boolean
    :initform cl:nil)
   (block_adaptive_cruise_buttons
    :reader block_adaptive_cruise_buttons
    :initarg :block_adaptive_cruise_buttons
    :type cl:boolean
    :initform cl:nil)
   (block_turn_signal_stalk
    :reader block_turn_signal_stalk
    :initarg :block_turn_signal_stalk
    :type cl:boolean
    :initform cl:nil)
   (horn_cmd
    :reader horn_cmd
    :initarg :horn_cmd
    :type cl:boolean
    :initform cl:nil)
   (low_beam_cmd
    :reader low_beam_cmd
    :initarg :low_beam_cmd
    :type raptor_dbw_msgs-msg:LowBeam
    :initform (cl:make-instance 'raptor_dbw_msgs-msg:LowBeam)))
)

(cl:defclass MiscCmd (<MiscCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MiscCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MiscCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name raptor_dbw_msgs-msg:<MiscCmd> is deprecated: use raptor_dbw_msgs-msg:MiscCmd instead.")))

(cl:ensure-generic-function 'cmd-val :lambda-list '(m))
(cl:defmethod cmd-val ((m <MiscCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader raptor_dbw_msgs-msg:cmd-val is deprecated.  Use raptor_dbw_msgs-msg:cmd instead.")
  (cmd m))

(cl:ensure-generic-function 'door_request_right_rear-val :lambda-list '(m))
(cl:defmethod door_request_right_rear-val ((m <MiscCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader raptor_dbw_msgs-msg:door_request_right_rear-val is deprecated.  Use raptor_dbw_msgs-msg:door_request_right_rear instead.")
  (door_request_right_rear m))

(cl:ensure-generic-function 'rolling_counter-val :lambda-list '(m))
(cl:defmethod rolling_counter-val ((m <MiscCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader raptor_dbw_msgs-msg:rolling_counter-val is deprecated.  Use raptor_dbw_msgs-msg:rolling_counter instead.")
  (rolling_counter m))

(cl:ensure-generic-function 'high_beam_cmd-val :lambda-list '(m))
(cl:defmethod high_beam_cmd-val ((m <MiscCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader raptor_dbw_msgs-msg:high_beam_cmd-val is deprecated.  Use raptor_dbw_msgs-msg:high_beam_cmd instead.")
  (high_beam_cmd m))

(cl:ensure-generic-function 'front_wiper_cmd-val :lambda-list '(m))
(cl:defmethod front_wiper_cmd-val ((m <MiscCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader raptor_dbw_msgs-msg:front_wiper_cmd-val is deprecated.  Use raptor_dbw_msgs-msg:front_wiper_cmd instead.")
  (front_wiper_cmd m))

(cl:ensure-generic-function 'rear_wiper_cmd-val :lambda-list '(m))
(cl:defmethod rear_wiper_cmd-val ((m <MiscCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader raptor_dbw_msgs-msg:rear_wiper_cmd-val is deprecated.  Use raptor_dbw_msgs-msg:rear_wiper_cmd instead.")
  (rear_wiper_cmd m))

(cl:ensure-generic-function 'ignition_cmd-val :lambda-list '(m))
(cl:defmethod ignition_cmd-val ((m <MiscCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader raptor_dbw_msgs-msg:ignition_cmd-val is deprecated.  Use raptor_dbw_msgs-msg:ignition_cmd instead.")
  (ignition_cmd m))

(cl:ensure-generic-function 'door_request_left_rear-val :lambda-list '(m))
(cl:defmethod door_request_left_rear-val ((m <MiscCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader raptor_dbw_msgs-msg:door_request_left_rear-val is deprecated.  Use raptor_dbw_msgs-msg:door_request_left_rear instead.")
  (door_request_left_rear m))

(cl:ensure-generic-function 'door_request_lift_gate-val :lambda-list '(m))
(cl:defmethod door_request_lift_gate-val ((m <MiscCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader raptor_dbw_msgs-msg:door_request_lift_gate-val is deprecated.  Use raptor_dbw_msgs-msg:door_request_lift_gate instead.")
  (door_request_lift_gate m))

(cl:ensure-generic-function 'block_standard_cruise_buttons-val :lambda-list '(m))
(cl:defmethod block_standard_cruise_buttons-val ((m <MiscCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader raptor_dbw_msgs-msg:block_standard_cruise_buttons-val is deprecated.  Use raptor_dbw_msgs-msg:block_standard_cruise_buttons instead.")
  (block_standard_cruise_buttons m))

(cl:ensure-generic-function 'block_adaptive_cruise_buttons-val :lambda-list '(m))
(cl:defmethod block_adaptive_cruise_buttons-val ((m <MiscCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader raptor_dbw_msgs-msg:block_adaptive_cruise_buttons-val is deprecated.  Use raptor_dbw_msgs-msg:block_adaptive_cruise_buttons instead.")
  (block_adaptive_cruise_buttons m))

(cl:ensure-generic-function 'block_turn_signal_stalk-val :lambda-list '(m))
(cl:defmethod block_turn_signal_stalk-val ((m <MiscCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader raptor_dbw_msgs-msg:block_turn_signal_stalk-val is deprecated.  Use raptor_dbw_msgs-msg:block_turn_signal_stalk instead.")
  (block_turn_signal_stalk m))

(cl:ensure-generic-function 'horn_cmd-val :lambda-list '(m))
(cl:defmethod horn_cmd-val ((m <MiscCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader raptor_dbw_msgs-msg:horn_cmd-val is deprecated.  Use raptor_dbw_msgs-msg:horn_cmd instead.")
  (horn_cmd m))

(cl:ensure-generic-function 'low_beam_cmd-val :lambda-list '(m))
(cl:defmethod low_beam_cmd-val ((m <MiscCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader raptor_dbw_msgs-msg:low_beam_cmd-val is deprecated.  Use raptor_dbw_msgs-msg:low_beam_cmd instead.")
  (low_beam_cmd m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MiscCmd>) ostream)
  "Serializes a message object of type '<MiscCmd>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cmd) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'door_request_right_rear) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rolling_counter)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'high_beam_cmd) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'front_wiper_cmd) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'rear_wiper_cmd) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ignition_cmd) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'door_request_left_rear) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'door_request_lift_gate) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'block_standard_cruise_buttons) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'block_adaptive_cruise_buttons) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'block_turn_signal_stalk) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'horn_cmd) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'low_beam_cmd) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MiscCmd>) istream)
  "Deserializes a message object of type '<MiscCmd>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cmd) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'door_request_right_rear) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rolling_counter)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'high_beam_cmd) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'front_wiper_cmd) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'rear_wiper_cmd) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ignition_cmd) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'door_request_left_rear) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'door_request_lift_gate) istream)
    (cl:setf (cl:slot-value msg 'block_standard_cruise_buttons) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'block_adaptive_cruise_buttons) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'block_turn_signal_stalk) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'horn_cmd) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'low_beam_cmd) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MiscCmd>)))
  "Returns string type for a message object of type '<MiscCmd>"
  "raptor_dbw_msgs/MiscCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MiscCmd)))
  "Returns string type for a message object of type 'MiscCmd"
  "raptor_dbw_msgs/MiscCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MiscCmd>)))
  "Returns md5sum for a message object of type '<MiscCmd>"
  "1267e40afe4289757af3bbfb5a1352fe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MiscCmd)))
  "Returns md5sum for a message object of type 'MiscCmd"
  "1267e40afe4289757af3bbfb5a1352fe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MiscCmd>)))
  "Returns full string definition for message of type '<MiscCmd>"
  (cl:format cl:nil "# Turn signal command enumeration~%TurnSignal cmd~%~%DoorRequest door_request_right_rear~%~%uint8 rolling_counter~%~%HighBeam high_beam_cmd~%~%WiperFront front_wiper_cmd~%~%WiperRear rear_wiper_cmd~%~%Ignition ignition_cmd~%DoorRequest door_request_left_rear~%DoorRequest door_request_lift_gate~%~%bool block_standard_cruise_buttons~%bool block_adaptive_cruise_buttons~%bool block_turn_signal_stalk~%~%bool horn_cmd~%~%LowBeam low_beam_cmd~%~%================================================================================~%MSG: raptor_dbw_msgs/TurnSignal~%uint8 value~%~%uint8 NONE = 0~%uint8 LEFT = 1~%uint8 RIGHT = 2~%uint8 HAZARDS = 3~%uint8 SNA = 7~%================================================================================~%MSG: raptor_dbw_msgs/DoorRequest~%uint8 value~%~%uint8 NO_REQUEST=0~%uint8 LIFTGATE_TOGGLE=1~%uint8 LR_DOOR_TOGGLE=2~%uint8 RR_DOOR_TOGGLE=3~%================================================================================~%MSG: raptor_dbw_msgs/HighBeam~%uint8 status~%~%uint8 OFF = 0~%uint8 ON = 1~%uint8 FORCE_ON = 2~%uint8 RESERVED = 3~%~%================================================================================~%MSG: raptor_dbw_msgs/WiperFront~%uint8 status~%~%uint8 OFF = 0~%uint8 INTERVAL_1 = 1~%uint8 INTERVAL_2 = 2~%uint8 INTERVAL_3 = 3~%uint8 INTERVAL_4 = 4~%uint8 INTERVAL_5 = 5~%uint8 INTERVAL_6 = 6~%uint8 CONSTANT_LOW = 11~%uint8 CONSTANT_HIGH = 12~%uint8 WASH_BRIEF = 13~%uint8 WASH_CONTINUOUS = 14~%uint8 SNA = 15~%================================================================================~%MSG: raptor_dbw_msgs/WiperRear~%uint8 status~%~%uint8 OFF = 0~%uint8 INTERVAL_1 = 1~%uint8 CONSTANT_LOW = 11~%uint8 CONSTANT_HIGH = 12~%uint8 WASH_BRIEF = 13~%uint8 WASH_CONTINUOUS = 14~%uint8 SNA = 15~%================================================================================~%MSG: raptor_dbw_msgs/Ignition~%uint8 status~%~%uint8 NO_REQUEST = 0~%uint8 FORCE_OFF = 1~%uint8 ACCESSORY = 2~%uint8 RUN = 3~%uint8 CRANK = 4~%================================================================================~%MSG: raptor_dbw_msgs/LowBeam~%uint8 status~%~%uint8 OFF = 0~%uint8 RESERVED = 1~%uint8 ON = 2~%uint8 RESERVED_1 = 3~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MiscCmd)))
  "Returns full string definition for message of type 'MiscCmd"
  (cl:format cl:nil "# Turn signal command enumeration~%TurnSignal cmd~%~%DoorRequest door_request_right_rear~%~%uint8 rolling_counter~%~%HighBeam high_beam_cmd~%~%WiperFront front_wiper_cmd~%~%WiperRear rear_wiper_cmd~%~%Ignition ignition_cmd~%DoorRequest door_request_left_rear~%DoorRequest door_request_lift_gate~%~%bool block_standard_cruise_buttons~%bool block_adaptive_cruise_buttons~%bool block_turn_signal_stalk~%~%bool horn_cmd~%~%LowBeam low_beam_cmd~%~%================================================================================~%MSG: raptor_dbw_msgs/TurnSignal~%uint8 value~%~%uint8 NONE = 0~%uint8 LEFT = 1~%uint8 RIGHT = 2~%uint8 HAZARDS = 3~%uint8 SNA = 7~%================================================================================~%MSG: raptor_dbw_msgs/DoorRequest~%uint8 value~%~%uint8 NO_REQUEST=0~%uint8 LIFTGATE_TOGGLE=1~%uint8 LR_DOOR_TOGGLE=2~%uint8 RR_DOOR_TOGGLE=3~%================================================================================~%MSG: raptor_dbw_msgs/HighBeam~%uint8 status~%~%uint8 OFF = 0~%uint8 ON = 1~%uint8 FORCE_ON = 2~%uint8 RESERVED = 3~%~%================================================================================~%MSG: raptor_dbw_msgs/WiperFront~%uint8 status~%~%uint8 OFF = 0~%uint8 INTERVAL_1 = 1~%uint8 INTERVAL_2 = 2~%uint8 INTERVAL_3 = 3~%uint8 INTERVAL_4 = 4~%uint8 INTERVAL_5 = 5~%uint8 INTERVAL_6 = 6~%uint8 CONSTANT_LOW = 11~%uint8 CONSTANT_HIGH = 12~%uint8 WASH_BRIEF = 13~%uint8 WASH_CONTINUOUS = 14~%uint8 SNA = 15~%================================================================================~%MSG: raptor_dbw_msgs/WiperRear~%uint8 status~%~%uint8 OFF = 0~%uint8 INTERVAL_1 = 1~%uint8 CONSTANT_LOW = 11~%uint8 CONSTANT_HIGH = 12~%uint8 WASH_BRIEF = 13~%uint8 WASH_CONTINUOUS = 14~%uint8 SNA = 15~%================================================================================~%MSG: raptor_dbw_msgs/Ignition~%uint8 status~%~%uint8 NO_REQUEST = 0~%uint8 FORCE_OFF = 1~%uint8 ACCESSORY = 2~%uint8 RUN = 3~%uint8 CRANK = 4~%================================================================================~%MSG: raptor_dbw_msgs/LowBeam~%uint8 status~%~%uint8 OFF = 0~%uint8 RESERVED = 1~%uint8 ON = 2~%uint8 RESERVED_1 = 3~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MiscCmd>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cmd))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'door_request_right_rear))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'high_beam_cmd))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'front_wiper_cmd))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'rear_wiper_cmd))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ignition_cmd))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'door_request_left_rear))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'door_request_lift_gate))
     1
     1
     1
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'low_beam_cmd))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MiscCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'MiscCmd
    (cl:cons ':cmd (cmd msg))
    (cl:cons ':door_request_right_rear (door_request_right_rear msg))
    (cl:cons ':rolling_counter (rolling_counter msg))
    (cl:cons ':high_beam_cmd (high_beam_cmd msg))
    (cl:cons ':front_wiper_cmd (front_wiper_cmd msg))
    (cl:cons ':rear_wiper_cmd (rear_wiper_cmd msg))
    (cl:cons ':ignition_cmd (ignition_cmd msg))
    (cl:cons ':door_request_left_rear (door_request_left_rear msg))
    (cl:cons ':door_request_lift_gate (door_request_lift_gate msg))
    (cl:cons ':block_standard_cruise_buttons (block_standard_cruise_buttons msg))
    (cl:cons ':block_adaptive_cruise_buttons (block_adaptive_cruise_buttons msg))
    (cl:cons ':block_turn_signal_stalk (block_turn_signal_stalk msg))
    (cl:cons ':horn_cmd (horn_cmd msg))
    (cl:cons ':low_beam_cmd (low_beam_cmd msg))
))
