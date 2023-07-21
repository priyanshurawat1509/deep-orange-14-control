;; Auto-generated. Do not edit!


(when (boundp 'raptor_dbw_msgs::MiscCmd)
  (if (not (find-package "RAPTOR_DBW_MSGS"))
    (make-package "RAPTOR_DBW_MSGS"))
  (shadow 'MiscCmd (find-package "RAPTOR_DBW_MSGS")))
(unless (find-package "RAPTOR_DBW_MSGS::MISCCMD")
  (make-package "RAPTOR_DBW_MSGS::MISCCMD"))

(in-package "ROS")
;;//! \htmlinclude MiscCmd.msg.html


(defclass raptor_dbw_msgs::MiscCmd
  :super ros::object
  :slots (_cmd _door_request_right_rear _rolling_counter _high_beam_cmd _front_wiper_cmd _rear_wiper_cmd _ignition_cmd _door_request_left_rear _door_request_lift_gate _block_standard_cruise_buttons _block_adaptive_cruise_buttons _block_turn_signal_stalk _horn_cmd _low_beam_cmd ))

(defmethod raptor_dbw_msgs::MiscCmd
  (:init
   (&key
    ((:cmd __cmd) (instance raptor_dbw_msgs::TurnSignal :init))
    ((:door_request_right_rear __door_request_right_rear) (instance raptor_dbw_msgs::DoorRequest :init))
    ((:rolling_counter __rolling_counter) 0)
    ((:high_beam_cmd __high_beam_cmd) (instance raptor_dbw_msgs::HighBeam :init))
    ((:front_wiper_cmd __front_wiper_cmd) (instance raptor_dbw_msgs::WiperFront :init))
    ((:rear_wiper_cmd __rear_wiper_cmd) (instance raptor_dbw_msgs::WiperRear :init))
    ((:ignition_cmd __ignition_cmd) (instance raptor_dbw_msgs::Ignition :init))
    ((:door_request_left_rear __door_request_left_rear) (instance raptor_dbw_msgs::DoorRequest :init))
    ((:door_request_lift_gate __door_request_lift_gate) (instance raptor_dbw_msgs::DoorRequest :init))
    ((:block_standard_cruise_buttons __block_standard_cruise_buttons) nil)
    ((:block_adaptive_cruise_buttons __block_adaptive_cruise_buttons) nil)
    ((:block_turn_signal_stalk __block_turn_signal_stalk) nil)
    ((:horn_cmd __horn_cmd) nil)
    ((:low_beam_cmd __low_beam_cmd) (instance raptor_dbw_msgs::LowBeam :init))
    )
   (send-super :init)
   (setq _cmd __cmd)
   (setq _door_request_right_rear __door_request_right_rear)
   (setq _rolling_counter (round __rolling_counter))
   (setq _high_beam_cmd __high_beam_cmd)
   (setq _front_wiper_cmd __front_wiper_cmd)
   (setq _rear_wiper_cmd __rear_wiper_cmd)
   (setq _ignition_cmd __ignition_cmd)
   (setq _door_request_left_rear __door_request_left_rear)
   (setq _door_request_lift_gate __door_request_lift_gate)
   (setq _block_standard_cruise_buttons __block_standard_cruise_buttons)
   (setq _block_adaptive_cruise_buttons __block_adaptive_cruise_buttons)
   (setq _block_turn_signal_stalk __block_turn_signal_stalk)
   (setq _horn_cmd __horn_cmd)
   (setq _low_beam_cmd __low_beam_cmd)
   self)
  (:cmd
   (&rest __cmd)
   (if (keywordp (car __cmd))
       (send* _cmd __cmd)
     (progn
       (if __cmd (setq _cmd (car __cmd)))
       _cmd)))
  (:door_request_right_rear
   (&rest __door_request_right_rear)
   (if (keywordp (car __door_request_right_rear))
       (send* _door_request_right_rear __door_request_right_rear)
     (progn
       (if __door_request_right_rear (setq _door_request_right_rear (car __door_request_right_rear)))
       _door_request_right_rear)))
  (:rolling_counter
   (&optional __rolling_counter)
   (if __rolling_counter (setq _rolling_counter __rolling_counter)) _rolling_counter)
  (:high_beam_cmd
   (&rest __high_beam_cmd)
   (if (keywordp (car __high_beam_cmd))
       (send* _high_beam_cmd __high_beam_cmd)
     (progn
       (if __high_beam_cmd (setq _high_beam_cmd (car __high_beam_cmd)))
       _high_beam_cmd)))
  (:front_wiper_cmd
   (&rest __front_wiper_cmd)
   (if (keywordp (car __front_wiper_cmd))
       (send* _front_wiper_cmd __front_wiper_cmd)
     (progn
       (if __front_wiper_cmd (setq _front_wiper_cmd (car __front_wiper_cmd)))
       _front_wiper_cmd)))
  (:rear_wiper_cmd
   (&rest __rear_wiper_cmd)
   (if (keywordp (car __rear_wiper_cmd))
       (send* _rear_wiper_cmd __rear_wiper_cmd)
     (progn
       (if __rear_wiper_cmd (setq _rear_wiper_cmd (car __rear_wiper_cmd)))
       _rear_wiper_cmd)))
  (:ignition_cmd
   (&rest __ignition_cmd)
   (if (keywordp (car __ignition_cmd))
       (send* _ignition_cmd __ignition_cmd)
     (progn
       (if __ignition_cmd (setq _ignition_cmd (car __ignition_cmd)))
       _ignition_cmd)))
  (:door_request_left_rear
   (&rest __door_request_left_rear)
   (if (keywordp (car __door_request_left_rear))
       (send* _door_request_left_rear __door_request_left_rear)
     (progn
       (if __door_request_left_rear (setq _door_request_left_rear (car __door_request_left_rear)))
       _door_request_left_rear)))
  (:door_request_lift_gate
   (&rest __door_request_lift_gate)
   (if (keywordp (car __door_request_lift_gate))
       (send* _door_request_lift_gate __door_request_lift_gate)
     (progn
       (if __door_request_lift_gate (setq _door_request_lift_gate (car __door_request_lift_gate)))
       _door_request_lift_gate)))
  (:block_standard_cruise_buttons
   (&optional (__block_standard_cruise_buttons :null))
   (if (not (eq __block_standard_cruise_buttons :null)) (setq _block_standard_cruise_buttons __block_standard_cruise_buttons)) _block_standard_cruise_buttons)
  (:block_adaptive_cruise_buttons
   (&optional (__block_adaptive_cruise_buttons :null))
   (if (not (eq __block_adaptive_cruise_buttons :null)) (setq _block_adaptive_cruise_buttons __block_adaptive_cruise_buttons)) _block_adaptive_cruise_buttons)
  (:block_turn_signal_stalk
   (&optional (__block_turn_signal_stalk :null))
   (if (not (eq __block_turn_signal_stalk :null)) (setq _block_turn_signal_stalk __block_turn_signal_stalk)) _block_turn_signal_stalk)
  (:horn_cmd
   (&optional (__horn_cmd :null))
   (if (not (eq __horn_cmd :null)) (setq _horn_cmd __horn_cmd)) _horn_cmd)
  (:low_beam_cmd
   (&rest __low_beam_cmd)
   (if (keywordp (car __low_beam_cmd))
       (send* _low_beam_cmd __low_beam_cmd)
     (progn
       (if __low_beam_cmd (setq _low_beam_cmd (car __low_beam_cmd)))
       _low_beam_cmd)))
  (:serialization-length
   ()
   (+
    ;; raptor_dbw_msgs/TurnSignal _cmd
    (send _cmd :serialization-length)
    ;; raptor_dbw_msgs/DoorRequest _door_request_right_rear
    (send _door_request_right_rear :serialization-length)
    ;; uint8 _rolling_counter
    1
    ;; raptor_dbw_msgs/HighBeam _high_beam_cmd
    (send _high_beam_cmd :serialization-length)
    ;; raptor_dbw_msgs/WiperFront _front_wiper_cmd
    (send _front_wiper_cmd :serialization-length)
    ;; raptor_dbw_msgs/WiperRear _rear_wiper_cmd
    (send _rear_wiper_cmd :serialization-length)
    ;; raptor_dbw_msgs/Ignition _ignition_cmd
    (send _ignition_cmd :serialization-length)
    ;; raptor_dbw_msgs/DoorRequest _door_request_left_rear
    (send _door_request_left_rear :serialization-length)
    ;; raptor_dbw_msgs/DoorRequest _door_request_lift_gate
    (send _door_request_lift_gate :serialization-length)
    ;; bool _block_standard_cruise_buttons
    1
    ;; bool _block_adaptive_cruise_buttons
    1
    ;; bool _block_turn_signal_stalk
    1
    ;; bool _horn_cmd
    1
    ;; raptor_dbw_msgs/LowBeam _low_beam_cmd
    (send _low_beam_cmd :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; raptor_dbw_msgs/TurnSignal _cmd
       (send _cmd :serialize s)
     ;; raptor_dbw_msgs/DoorRequest _door_request_right_rear
       (send _door_request_right_rear :serialize s)
     ;; uint8 _rolling_counter
       (write-byte _rolling_counter s)
     ;; raptor_dbw_msgs/HighBeam _high_beam_cmd
       (send _high_beam_cmd :serialize s)
     ;; raptor_dbw_msgs/WiperFront _front_wiper_cmd
       (send _front_wiper_cmd :serialize s)
     ;; raptor_dbw_msgs/WiperRear _rear_wiper_cmd
       (send _rear_wiper_cmd :serialize s)
     ;; raptor_dbw_msgs/Ignition _ignition_cmd
       (send _ignition_cmd :serialize s)
     ;; raptor_dbw_msgs/DoorRequest _door_request_left_rear
       (send _door_request_left_rear :serialize s)
     ;; raptor_dbw_msgs/DoorRequest _door_request_lift_gate
       (send _door_request_lift_gate :serialize s)
     ;; bool _block_standard_cruise_buttons
       (if _block_standard_cruise_buttons (write-byte -1 s) (write-byte 0 s))
     ;; bool _block_adaptive_cruise_buttons
       (if _block_adaptive_cruise_buttons (write-byte -1 s) (write-byte 0 s))
     ;; bool _block_turn_signal_stalk
       (if _block_turn_signal_stalk (write-byte -1 s) (write-byte 0 s))
     ;; bool _horn_cmd
       (if _horn_cmd (write-byte -1 s) (write-byte 0 s))
     ;; raptor_dbw_msgs/LowBeam _low_beam_cmd
       (send _low_beam_cmd :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; raptor_dbw_msgs/TurnSignal _cmd
     (send _cmd :deserialize buf ptr-) (incf ptr- (send _cmd :serialization-length))
   ;; raptor_dbw_msgs/DoorRequest _door_request_right_rear
     (send _door_request_right_rear :deserialize buf ptr-) (incf ptr- (send _door_request_right_rear :serialization-length))
   ;; uint8 _rolling_counter
     (setq _rolling_counter (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; raptor_dbw_msgs/HighBeam _high_beam_cmd
     (send _high_beam_cmd :deserialize buf ptr-) (incf ptr- (send _high_beam_cmd :serialization-length))
   ;; raptor_dbw_msgs/WiperFront _front_wiper_cmd
     (send _front_wiper_cmd :deserialize buf ptr-) (incf ptr- (send _front_wiper_cmd :serialization-length))
   ;; raptor_dbw_msgs/WiperRear _rear_wiper_cmd
     (send _rear_wiper_cmd :deserialize buf ptr-) (incf ptr- (send _rear_wiper_cmd :serialization-length))
   ;; raptor_dbw_msgs/Ignition _ignition_cmd
     (send _ignition_cmd :deserialize buf ptr-) (incf ptr- (send _ignition_cmd :serialization-length))
   ;; raptor_dbw_msgs/DoorRequest _door_request_left_rear
     (send _door_request_left_rear :deserialize buf ptr-) (incf ptr- (send _door_request_left_rear :serialization-length))
   ;; raptor_dbw_msgs/DoorRequest _door_request_lift_gate
     (send _door_request_lift_gate :deserialize buf ptr-) (incf ptr- (send _door_request_lift_gate :serialization-length))
   ;; bool _block_standard_cruise_buttons
     (setq _block_standard_cruise_buttons (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _block_adaptive_cruise_buttons
     (setq _block_adaptive_cruise_buttons (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _block_turn_signal_stalk
     (setq _block_turn_signal_stalk (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _horn_cmd
     (setq _horn_cmd (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; raptor_dbw_msgs/LowBeam _low_beam_cmd
     (send _low_beam_cmd :deserialize buf ptr-) (incf ptr- (send _low_beam_cmd :serialization-length))
   ;;
   self)
  )

(setf (get raptor_dbw_msgs::MiscCmd :md5sum-) "1267e40afe4289757af3bbfb5a1352fe")
(setf (get raptor_dbw_msgs::MiscCmd :datatype-) "raptor_dbw_msgs/MiscCmd")
(setf (get raptor_dbw_msgs::MiscCmd :definition-)
      "# Turn signal command enumeration
TurnSignal cmd

DoorRequest door_request_right_rear

uint8 rolling_counter

HighBeam high_beam_cmd

WiperFront front_wiper_cmd

WiperRear rear_wiper_cmd

Ignition ignition_cmd
DoorRequest door_request_left_rear
DoorRequest door_request_lift_gate

bool block_standard_cruise_buttons
bool block_adaptive_cruise_buttons
bool block_turn_signal_stalk

bool horn_cmd

LowBeam low_beam_cmd

================================================================================
MSG: raptor_dbw_msgs/TurnSignal
uint8 value

uint8 NONE = 0
uint8 LEFT = 1
uint8 RIGHT = 2
uint8 HAZARDS = 3
uint8 SNA = 7
================================================================================
MSG: raptor_dbw_msgs/DoorRequest
uint8 value

uint8 NO_REQUEST=0
uint8 LIFTGATE_TOGGLE=1
uint8 LR_DOOR_TOGGLE=2
uint8 RR_DOOR_TOGGLE=3
================================================================================
MSG: raptor_dbw_msgs/HighBeam
uint8 status

uint8 OFF = 0
uint8 ON = 1
uint8 FORCE_ON = 2
uint8 RESERVED = 3

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
MSG: raptor_dbw_msgs/LowBeam
uint8 status

uint8 OFF = 0
uint8 RESERVED = 1
uint8 ON = 2
uint8 RESERVED_1 = 3

")



(provide :raptor_dbw_msgs/MiscCmd "1267e40afe4289757af3bbfb5a1352fe")


