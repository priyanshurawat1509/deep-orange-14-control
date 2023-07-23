;; Auto-generated. Do not edit!


(when (boundp 'raptor_dbw_msgs::OtherActuatorsReport)
  (if (not (find-package "RAPTOR_DBW_MSGS"))
    (make-package "RAPTOR_DBW_MSGS"))
  (shadow 'OtherActuatorsReport (find-package "RAPTOR_DBW_MSGS")))
(unless (find-package "RAPTOR_DBW_MSGS::OTHERACTUATORSREPORT")
  (make-package "RAPTOR_DBW_MSGS::OTHERACTUATORSREPORT"))

(in-package "ROS")
;;//! \htmlinclude OtherActuatorsReport.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass raptor_dbw_msgs::OtherActuatorsReport
  :super ros::object
  :slots (_header _turn_signal_state _right_rear_door_state _high_beam_state _front_wiper_state _rear_wiper_state _ignition_state _left_rear_door_state _liftgate_door_state _horn_state _low_beam_state _rolling_counter ))

(defmethod raptor_dbw_msgs::OtherActuatorsReport
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:turn_signal_state __turn_signal_state) (instance raptor_dbw_msgs::TurnSignal :init))
    ((:right_rear_door_state __right_rear_door_state) (instance raptor_dbw_msgs::DoorState :init))
    ((:high_beam_state __high_beam_state) (instance raptor_dbw_msgs::HighBeamState :init))
    ((:front_wiper_state __front_wiper_state) (instance raptor_dbw_msgs::WiperFront :init))
    ((:rear_wiper_state __rear_wiper_state) (instance raptor_dbw_msgs::WiperRear :init))
    ((:ignition_state __ignition_state) (instance raptor_dbw_msgs::Ignition :init))
    ((:left_rear_door_state __left_rear_door_state) (instance raptor_dbw_msgs::DoorState :init))
    ((:liftgate_door_state __liftgate_door_state) (instance raptor_dbw_msgs::DoorState :init))
    ((:horn_state __horn_state) (instance raptor_dbw_msgs::HornState :init))
    ((:low_beam_state __low_beam_state) (instance raptor_dbw_msgs::LowBeam :init))
    ((:rolling_counter __rolling_counter) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _turn_signal_state __turn_signal_state)
   (setq _right_rear_door_state __right_rear_door_state)
   (setq _high_beam_state __high_beam_state)
   (setq _front_wiper_state __front_wiper_state)
   (setq _rear_wiper_state __rear_wiper_state)
   (setq _ignition_state __ignition_state)
   (setq _left_rear_door_state __left_rear_door_state)
   (setq _liftgate_door_state __liftgate_door_state)
   (setq _horn_state __horn_state)
   (setq _low_beam_state __low_beam_state)
   (setq _rolling_counter (round __rolling_counter))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:turn_signal_state
   (&rest __turn_signal_state)
   (if (keywordp (car __turn_signal_state))
       (send* _turn_signal_state __turn_signal_state)
     (progn
       (if __turn_signal_state (setq _turn_signal_state (car __turn_signal_state)))
       _turn_signal_state)))
  (:right_rear_door_state
   (&rest __right_rear_door_state)
   (if (keywordp (car __right_rear_door_state))
       (send* _right_rear_door_state __right_rear_door_state)
     (progn
       (if __right_rear_door_state (setq _right_rear_door_state (car __right_rear_door_state)))
       _right_rear_door_state)))
  (:high_beam_state
   (&rest __high_beam_state)
   (if (keywordp (car __high_beam_state))
       (send* _high_beam_state __high_beam_state)
     (progn
       (if __high_beam_state (setq _high_beam_state (car __high_beam_state)))
       _high_beam_state)))
  (:front_wiper_state
   (&rest __front_wiper_state)
   (if (keywordp (car __front_wiper_state))
       (send* _front_wiper_state __front_wiper_state)
     (progn
       (if __front_wiper_state (setq _front_wiper_state (car __front_wiper_state)))
       _front_wiper_state)))
  (:rear_wiper_state
   (&rest __rear_wiper_state)
   (if (keywordp (car __rear_wiper_state))
       (send* _rear_wiper_state __rear_wiper_state)
     (progn
       (if __rear_wiper_state (setq _rear_wiper_state (car __rear_wiper_state)))
       _rear_wiper_state)))
  (:ignition_state
   (&rest __ignition_state)
   (if (keywordp (car __ignition_state))
       (send* _ignition_state __ignition_state)
     (progn
       (if __ignition_state (setq _ignition_state (car __ignition_state)))
       _ignition_state)))
  (:left_rear_door_state
   (&rest __left_rear_door_state)
   (if (keywordp (car __left_rear_door_state))
       (send* _left_rear_door_state __left_rear_door_state)
     (progn
       (if __left_rear_door_state (setq _left_rear_door_state (car __left_rear_door_state)))
       _left_rear_door_state)))
  (:liftgate_door_state
   (&rest __liftgate_door_state)
   (if (keywordp (car __liftgate_door_state))
       (send* _liftgate_door_state __liftgate_door_state)
     (progn
       (if __liftgate_door_state (setq _liftgate_door_state (car __liftgate_door_state)))
       _liftgate_door_state)))
  (:horn_state
   (&rest __horn_state)
   (if (keywordp (car __horn_state))
       (send* _horn_state __horn_state)
     (progn
       (if __horn_state (setq _horn_state (car __horn_state)))
       _horn_state)))
  (:low_beam_state
   (&rest __low_beam_state)
   (if (keywordp (car __low_beam_state))
       (send* _low_beam_state __low_beam_state)
     (progn
       (if __low_beam_state (setq _low_beam_state (car __low_beam_state)))
       _low_beam_state)))
  (:rolling_counter
   (&optional __rolling_counter)
   (if __rolling_counter (setq _rolling_counter __rolling_counter)) _rolling_counter)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; raptor_dbw_msgs/TurnSignal _turn_signal_state
    (send _turn_signal_state :serialization-length)
    ;; raptor_dbw_msgs/DoorState _right_rear_door_state
    (send _right_rear_door_state :serialization-length)
    ;; raptor_dbw_msgs/HighBeamState _high_beam_state
    (send _high_beam_state :serialization-length)
    ;; raptor_dbw_msgs/WiperFront _front_wiper_state
    (send _front_wiper_state :serialization-length)
    ;; raptor_dbw_msgs/WiperRear _rear_wiper_state
    (send _rear_wiper_state :serialization-length)
    ;; raptor_dbw_msgs/Ignition _ignition_state
    (send _ignition_state :serialization-length)
    ;; raptor_dbw_msgs/DoorState _left_rear_door_state
    (send _left_rear_door_state :serialization-length)
    ;; raptor_dbw_msgs/DoorState _liftgate_door_state
    (send _liftgate_door_state :serialization-length)
    ;; raptor_dbw_msgs/HornState _horn_state
    (send _horn_state :serialization-length)
    ;; raptor_dbw_msgs/LowBeam _low_beam_state
    (send _low_beam_state :serialization-length)
    ;; uint8 _rolling_counter
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; raptor_dbw_msgs/TurnSignal _turn_signal_state
       (send _turn_signal_state :serialize s)
     ;; raptor_dbw_msgs/DoorState _right_rear_door_state
       (send _right_rear_door_state :serialize s)
     ;; raptor_dbw_msgs/HighBeamState _high_beam_state
       (send _high_beam_state :serialize s)
     ;; raptor_dbw_msgs/WiperFront _front_wiper_state
       (send _front_wiper_state :serialize s)
     ;; raptor_dbw_msgs/WiperRear _rear_wiper_state
       (send _rear_wiper_state :serialize s)
     ;; raptor_dbw_msgs/Ignition _ignition_state
       (send _ignition_state :serialize s)
     ;; raptor_dbw_msgs/DoorState _left_rear_door_state
       (send _left_rear_door_state :serialize s)
     ;; raptor_dbw_msgs/DoorState _liftgate_door_state
       (send _liftgate_door_state :serialize s)
     ;; raptor_dbw_msgs/HornState _horn_state
       (send _horn_state :serialize s)
     ;; raptor_dbw_msgs/LowBeam _low_beam_state
       (send _low_beam_state :serialize s)
     ;; uint8 _rolling_counter
       (write-byte _rolling_counter s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; raptor_dbw_msgs/TurnSignal _turn_signal_state
     (send _turn_signal_state :deserialize buf ptr-) (incf ptr- (send _turn_signal_state :serialization-length))
   ;; raptor_dbw_msgs/DoorState _right_rear_door_state
     (send _right_rear_door_state :deserialize buf ptr-) (incf ptr- (send _right_rear_door_state :serialization-length))
   ;; raptor_dbw_msgs/HighBeamState _high_beam_state
     (send _high_beam_state :deserialize buf ptr-) (incf ptr- (send _high_beam_state :serialization-length))
   ;; raptor_dbw_msgs/WiperFront _front_wiper_state
     (send _front_wiper_state :deserialize buf ptr-) (incf ptr- (send _front_wiper_state :serialization-length))
   ;; raptor_dbw_msgs/WiperRear _rear_wiper_state
     (send _rear_wiper_state :deserialize buf ptr-) (incf ptr- (send _rear_wiper_state :serialization-length))
   ;; raptor_dbw_msgs/Ignition _ignition_state
     (send _ignition_state :deserialize buf ptr-) (incf ptr- (send _ignition_state :serialization-length))
   ;; raptor_dbw_msgs/DoorState _left_rear_door_state
     (send _left_rear_door_state :deserialize buf ptr-) (incf ptr- (send _left_rear_door_state :serialization-length))
   ;; raptor_dbw_msgs/DoorState _liftgate_door_state
     (send _liftgate_door_state :deserialize buf ptr-) (incf ptr- (send _liftgate_door_state :serialization-length))
   ;; raptor_dbw_msgs/HornState _horn_state
     (send _horn_state :deserialize buf ptr-) (incf ptr- (send _horn_state :serialization-length))
   ;; raptor_dbw_msgs/LowBeam _low_beam_state
     (send _low_beam_state :deserialize buf ptr-) (incf ptr- (send _low_beam_state :serialization-length))
   ;; uint8 _rolling_counter
     (setq _rolling_counter (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get raptor_dbw_msgs::OtherActuatorsReport :md5sum-) "2109072233b64ea71bab77b539413ada")
(setf (get raptor_dbw_msgs::OtherActuatorsReport :datatype-) "raptor_dbw_msgs/OtherActuatorsReport")
(setf (get raptor_dbw_msgs::OtherActuatorsReport :definition-)
      "Header header

TurnSignal turn_signal_state 
DoorState right_rear_door_state 
HighBeamState high_beam_state 
WiperFront front_wiper_state 
WiperRear rear_wiper_state 
Ignition ignition_state 
DoorState left_rear_door_state 
DoorState liftgate_door_state 
HornState horn_state 
LowBeam low_beam_state 

uint8 rolling_counter

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: raptor_dbw_msgs/TurnSignal
uint8 value

uint8 NONE = 0
uint8 LEFT = 1
uint8 RIGHT = 2
uint8 HAZARDS = 3
uint8 SNA = 7
================================================================================
MSG: raptor_dbw_msgs/DoorState
uint8 value

uint8 UNDEFINED = 0
uint8 CLOSED = 1
uint8 OPEN = 2
uint8 SNA = 3

================================================================================
MSG: raptor_dbw_msgs/HighBeamState
uint8 value

uint8 SNA = 0
uint8 RESERVED = 1
uint8 ON = 2
uint8 OFF = 0
================================================================================
MSG: raptor_dbw_msgs/WiperFront
uint8 status

uint8 OFF = 0
uint8 INTERVAL_1 = 1
uint8 INTERVAL_2 = 2
uint8 INTERVAL_3 = 3
uint8 INTERVAL_4 = 4
uint8 INTERVAL_5 = 5
uint8 INTERVAL_6 = 6
uint8 CONSTANT_LOW = 11
uint8 CONSTANT_HIGH = 12
uint8 WASH_BRIEF = 13
uint8 WASH_CONTINUOUS = 14
uint8 SNA = 15
================================================================================
MSG: raptor_dbw_msgs/WiperRear
uint8 status

uint8 OFF = 0
uint8 INTERVAL_1 = 1
uint8 CONSTANT_LOW = 11
uint8 CONSTANT_HIGH = 12
uint8 WASH_BRIEF = 13
uint8 WASH_CONTINUOUS = 14
uint8 SNA = 15
================================================================================
MSG: raptor_dbw_msgs/Ignition
uint8 status

uint8 NO_REQUEST = 0
uint8 FORCE_OFF = 1
uint8 ACCESSORY = 2
uint8 RUN = 3
uint8 CRANK = 4
================================================================================
MSG: raptor_dbw_msgs/HornState
uint8 status

uint8 OFF = 0
uint8 ON = 1
uint8 SNA = 2

================================================================================
MSG: raptor_dbw_msgs/LowBeam
uint8 status

uint8 OFF = 0
uint8 RESERVED = 1
uint8 ON = 2
uint8 RESERVED_1 = 3

")



(provide :raptor_dbw_msgs/OtherActuatorsReport "2109072233b64ea71bab77b539413ada")


