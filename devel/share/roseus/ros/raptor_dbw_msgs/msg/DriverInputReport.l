;; Auto-generated. Do not edit!


(when (boundp 'raptor_dbw_msgs::DriverInputReport)
  (if (not (find-package "RAPTOR_DBW_MSGS"))
    (make-package "RAPTOR_DBW_MSGS"))
  (shadow 'DriverInputReport (find-package "RAPTOR_DBW_MSGS")))
(unless (find-package "RAPTOR_DBW_MSGS::DRIVERINPUTREPORT")
  (make-package "RAPTOR_DBW_MSGS::DRIVERINPUTREPORT"))

(in-package "ROS")
;;//! \htmlinclude DriverInputReport.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass raptor_dbw_msgs::DriverInputReport
  :super ros::object
  :slots (_header _turn_signal _high_beam_headlights _wiper _cruise_resume_button _cruise_cancel_button _cruise_accel_button _cruise_decel_button _cruise_on_off_button _adaptive_cruise_on_off_button _adaptive_cruise_increase_distance_button _adaptive_cruise_decrease_distance_button _driver_door_ajar _passenger_door_ajar _rear_left_door_ajar _rear_right_door_ajar _liftgate_ajar _any_seatbelt_unbuckled _airbag_deployed _door_or_hood_ajar ))

(defmethod raptor_dbw_msgs::DriverInputReport
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:turn_signal __turn_signal) (instance raptor_dbw_msgs::TurnSignal :init))
    ((:high_beam_headlights __high_beam_headlights) (instance raptor_dbw_msgs::HighBeam :init))
    ((:wiper __wiper) (instance raptor_dbw_msgs::WiperFront :init))
    ((:cruise_resume_button __cruise_resume_button) nil)
    ((:cruise_cancel_button __cruise_cancel_button) nil)
    ((:cruise_accel_button __cruise_accel_button) nil)
    ((:cruise_decel_button __cruise_decel_button) nil)
    ((:cruise_on_off_button __cruise_on_off_button) nil)
    ((:adaptive_cruise_on_off_button __adaptive_cruise_on_off_button) nil)
    ((:adaptive_cruise_increase_distance_button __adaptive_cruise_increase_distance_button) nil)
    ((:adaptive_cruise_decrease_distance_button __adaptive_cruise_decrease_distance_button) nil)
    ((:driver_door_ajar __driver_door_ajar) nil)
    ((:passenger_door_ajar __passenger_door_ajar) nil)
    ((:rear_left_door_ajar __rear_left_door_ajar) nil)
    ((:rear_right_door_ajar __rear_right_door_ajar) nil)
    ((:liftgate_ajar __liftgate_ajar) nil)
    ((:any_seatbelt_unbuckled __any_seatbelt_unbuckled) nil)
    ((:airbag_deployed __airbag_deployed) nil)
    ((:door_or_hood_ajar __door_or_hood_ajar) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _turn_signal __turn_signal)
   (setq _high_beam_headlights __high_beam_headlights)
   (setq _wiper __wiper)
   (setq _cruise_resume_button __cruise_resume_button)
   (setq _cruise_cancel_button __cruise_cancel_button)
   (setq _cruise_accel_button __cruise_accel_button)
   (setq _cruise_decel_button __cruise_decel_button)
   (setq _cruise_on_off_button __cruise_on_off_button)
   (setq _adaptive_cruise_on_off_button __adaptive_cruise_on_off_button)
   (setq _adaptive_cruise_increase_distance_button __adaptive_cruise_increase_distance_button)
   (setq _adaptive_cruise_decrease_distance_button __adaptive_cruise_decrease_distance_button)
   (setq _driver_door_ajar __driver_door_ajar)
   (setq _passenger_door_ajar __passenger_door_ajar)
   (setq _rear_left_door_ajar __rear_left_door_ajar)
   (setq _rear_right_door_ajar __rear_right_door_ajar)
   (setq _liftgate_ajar __liftgate_ajar)
   (setq _any_seatbelt_unbuckled __any_seatbelt_unbuckled)
   (setq _airbag_deployed __airbag_deployed)
   (setq _door_or_hood_ajar __door_or_hood_ajar)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:turn_signal
   (&rest __turn_signal)
   (if (keywordp (car __turn_signal))
       (send* _turn_signal __turn_signal)
     (progn
       (if __turn_signal (setq _turn_signal (car __turn_signal)))
       _turn_signal)))
  (:high_beam_headlights
   (&rest __high_beam_headlights)
   (if (keywordp (car __high_beam_headlights))
       (send* _high_beam_headlights __high_beam_headlights)
     (progn
       (if __high_beam_headlights (setq _high_beam_headlights (car __high_beam_headlights)))
       _high_beam_headlights)))
  (:wiper
   (&rest __wiper)
   (if (keywordp (car __wiper))
       (send* _wiper __wiper)
     (progn
       (if __wiper (setq _wiper (car __wiper)))
       _wiper)))
  (:cruise_resume_button
   (&optional (__cruise_resume_button :null))
   (if (not (eq __cruise_resume_button :null)) (setq _cruise_resume_button __cruise_resume_button)) _cruise_resume_button)
  (:cruise_cancel_button
   (&optional (__cruise_cancel_button :null))
   (if (not (eq __cruise_cancel_button :null)) (setq _cruise_cancel_button __cruise_cancel_button)) _cruise_cancel_button)
  (:cruise_accel_button
   (&optional (__cruise_accel_button :null))
   (if (not (eq __cruise_accel_button :null)) (setq _cruise_accel_button __cruise_accel_button)) _cruise_accel_button)
  (:cruise_decel_button
   (&optional (__cruise_decel_button :null))
   (if (not (eq __cruise_decel_button :null)) (setq _cruise_decel_button __cruise_decel_button)) _cruise_decel_button)
  (:cruise_on_off_button
   (&optional (__cruise_on_off_button :null))
   (if (not (eq __cruise_on_off_button :null)) (setq _cruise_on_off_button __cruise_on_off_button)) _cruise_on_off_button)
  (:adaptive_cruise_on_off_button
   (&optional (__adaptive_cruise_on_off_button :null))
   (if (not (eq __adaptive_cruise_on_off_button :null)) (setq _adaptive_cruise_on_off_button __adaptive_cruise_on_off_button)) _adaptive_cruise_on_off_button)
  (:adaptive_cruise_increase_distance_button
   (&optional (__adaptive_cruise_increase_distance_button :null))
   (if (not (eq __adaptive_cruise_increase_distance_button :null)) (setq _adaptive_cruise_increase_distance_button __adaptive_cruise_increase_distance_button)) _adaptive_cruise_increase_distance_button)
  (:adaptive_cruise_decrease_distance_button
   (&optional (__adaptive_cruise_decrease_distance_button :null))
   (if (not (eq __adaptive_cruise_decrease_distance_button :null)) (setq _adaptive_cruise_decrease_distance_button __adaptive_cruise_decrease_distance_button)) _adaptive_cruise_decrease_distance_button)
  (:driver_door_ajar
   (&optional (__driver_door_ajar :null))
   (if (not (eq __driver_door_ajar :null)) (setq _driver_door_ajar __driver_door_ajar)) _driver_door_ajar)
  (:passenger_door_ajar
   (&optional (__passenger_door_ajar :null))
   (if (not (eq __passenger_door_ajar :null)) (setq _passenger_door_ajar __passenger_door_ajar)) _passenger_door_ajar)
  (:rear_left_door_ajar
   (&optional (__rear_left_door_ajar :null))
   (if (not (eq __rear_left_door_ajar :null)) (setq _rear_left_door_ajar __rear_left_door_ajar)) _rear_left_door_ajar)
  (:rear_right_door_ajar
   (&optional (__rear_right_door_ajar :null))
   (if (not (eq __rear_right_door_ajar :null)) (setq _rear_right_door_ajar __rear_right_door_ajar)) _rear_right_door_ajar)
  (:liftgate_ajar
   (&optional (__liftgate_ajar :null))
   (if (not (eq __liftgate_ajar :null)) (setq _liftgate_ajar __liftgate_ajar)) _liftgate_ajar)
  (:any_seatbelt_unbuckled
   (&optional (__any_seatbelt_unbuckled :null))
   (if (not (eq __any_seatbelt_unbuckled :null)) (setq _any_seatbelt_unbuckled __any_seatbelt_unbuckled)) _any_seatbelt_unbuckled)
  (:airbag_deployed
   (&optional (__airbag_deployed :null))
   (if (not (eq __airbag_deployed :null)) (setq _airbag_deployed __airbag_deployed)) _airbag_deployed)
  (:door_or_hood_ajar
   (&optional (__door_or_hood_ajar :null))
   (if (not (eq __door_or_hood_ajar :null)) (setq _door_or_hood_ajar __door_or_hood_ajar)) _door_or_hood_ajar)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; raptor_dbw_msgs/TurnSignal _turn_signal
    (send _turn_signal :serialization-length)
    ;; raptor_dbw_msgs/HighBeam _high_beam_headlights
    (send _high_beam_headlights :serialization-length)
    ;; raptor_dbw_msgs/WiperFront _wiper
    (send _wiper :serialization-length)
    ;; bool _cruise_resume_button
    1
    ;; bool _cruise_cancel_button
    1
    ;; bool _cruise_accel_button
    1
    ;; bool _cruise_decel_button
    1
    ;; bool _cruise_on_off_button
    1
    ;; bool _adaptive_cruise_on_off_button
    1
    ;; bool _adaptive_cruise_increase_distance_button
    1
    ;; bool _adaptive_cruise_decrease_distance_button
    1
    ;; bool _driver_door_ajar
    1
    ;; bool _passenger_door_ajar
    1
    ;; bool _rear_left_door_ajar
    1
    ;; bool _rear_right_door_ajar
    1
    ;; bool _liftgate_ajar
    1
    ;; bool _any_seatbelt_unbuckled
    1
    ;; bool _airbag_deployed
    1
    ;; bool _door_or_hood_ajar
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; raptor_dbw_msgs/TurnSignal _turn_signal
       (send _turn_signal :serialize s)
     ;; raptor_dbw_msgs/HighBeam _high_beam_headlights
       (send _high_beam_headlights :serialize s)
     ;; raptor_dbw_msgs/WiperFront _wiper
       (send _wiper :serialize s)
     ;; bool _cruise_resume_button
       (if _cruise_resume_button (write-byte -1 s) (write-byte 0 s))
     ;; bool _cruise_cancel_button
       (if _cruise_cancel_button (write-byte -1 s) (write-byte 0 s))
     ;; bool _cruise_accel_button
       (if _cruise_accel_button (write-byte -1 s) (write-byte 0 s))
     ;; bool _cruise_decel_button
       (if _cruise_decel_button (write-byte -1 s) (write-byte 0 s))
     ;; bool _cruise_on_off_button
       (if _cruise_on_off_button (write-byte -1 s) (write-byte 0 s))
     ;; bool _adaptive_cruise_on_off_button
       (if _adaptive_cruise_on_off_button (write-byte -1 s) (write-byte 0 s))
     ;; bool _adaptive_cruise_increase_distance_button
       (if _adaptive_cruise_increase_distance_button (write-byte -1 s) (write-byte 0 s))
     ;; bool _adaptive_cruise_decrease_distance_button
       (if _adaptive_cruise_decrease_distance_button (write-byte -1 s) (write-byte 0 s))
     ;; bool _driver_door_ajar
       (if _driver_door_ajar (write-byte -1 s) (write-byte 0 s))
     ;; bool _passenger_door_ajar
       (if _passenger_door_ajar (write-byte -1 s) (write-byte 0 s))
     ;; bool _rear_left_door_ajar
       (if _rear_left_door_ajar (write-byte -1 s) (write-byte 0 s))
     ;; bool _rear_right_door_ajar
       (if _rear_right_door_ajar (write-byte -1 s) (write-byte 0 s))
     ;; bool _liftgate_ajar
       (if _liftgate_ajar (write-byte -1 s) (write-byte 0 s))
     ;; bool _any_seatbelt_unbuckled
       (if _any_seatbelt_unbuckled (write-byte -1 s) (write-byte 0 s))
     ;; bool _airbag_deployed
       (if _airbag_deployed (write-byte -1 s) (write-byte 0 s))
     ;; bool _door_or_hood_ajar
       (if _door_or_hood_ajar (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; raptor_dbw_msgs/TurnSignal _turn_signal
     (send _turn_signal :deserialize buf ptr-) (incf ptr- (send _turn_signal :serialization-length))
   ;; raptor_dbw_msgs/HighBeam _high_beam_headlights
     (send _high_beam_headlights :deserialize buf ptr-) (incf ptr- (send _high_beam_headlights :serialization-length))
   ;; raptor_dbw_msgs/WiperFront _wiper
     (send _wiper :deserialize buf ptr-) (incf ptr- (send _wiper :serialization-length))
   ;; bool _cruise_resume_button
     (setq _cruise_resume_button (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _cruise_cancel_button
     (setq _cruise_cancel_button (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _cruise_accel_button
     (setq _cruise_accel_button (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _cruise_decel_button
     (setq _cruise_decel_button (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _cruise_on_off_button
     (setq _cruise_on_off_button (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _adaptive_cruise_on_off_button
     (setq _adaptive_cruise_on_off_button (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _adaptive_cruise_increase_distance_button
     (setq _adaptive_cruise_increase_distance_button (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _adaptive_cruise_decrease_distance_button
     (setq _adaptive_cruise_decrease_distance_button (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _driver_door_ajar
     (setq _driver_door_ajar (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _passenger_door_ajar
     (setq _passenger_door_ajar (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _rear_left_door_ajar
     (setq _rear_left_door_ajar (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _rear_right_door_ajar
     (setq _rear_right_door_ajar (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _liftgate_ajar
     (setq _liftgate_ajar (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _any_seatbelt_unbuckled
     (setq _any_seatbelt_unbuckled (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _airbag_deployed
     (setq _airbag_deployed (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _door_or_hood_ajar
     (setq _door_or_hood_ajar (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get raptor_dbw_msgs::DriverInputReport :md5sum-) "39b09090e1c37c932f4f9021bb96dc32")
(setf (get raptor_dbw_msgs::DriverInputReport :datatype-) "raptor_dbw_msgs/DriverInputReport")
(setf (get raptor_dbw_msgs::DriverInputReport :definition-)
      "Header header

# Turn Signal enumeration
TurnSignal turn_signal

# High beams
HighBeam high_beam_headlights

# Front Windshield Wipers enumeration
WiperFront wiper

# Buttons
bool cruise_resume_button
bool cruise_cancel_button
bool cruise_accel_button
bool cruise_decel_button
bool cruise_on_off_button
bool adaptive_cruise_on_off_button
bool adaptive_cruise_increase_distance_button
bool adaptive_cruise_decrease_distance_button

# Door status
bool driver_door_ajar
bool passenger_door_ajar
bool rear_left_door_ajar
bool rear_right_door_ajar
bool liftgate_ajar
bool any_seatbelt_unbuckled
bool airbag_deployed
bool door_or_hood_ajar

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
")



(provide :raptor_dbw_msgs/DriverInputReport "39b09090e1c37c932f4f9021bb96dc32")


