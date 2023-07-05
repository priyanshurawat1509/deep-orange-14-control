;; Auto-generated. Do not edit!


(when (boundp 'raptor_dbw_msgs::SteeringReport)
  (if (not (find-package "RAPTOR_DBW_MSGS"))
    (make-package "RAPTOR_DBW_MSGS"))
  (shadow 'SteeringReport (find-package "RAPTOR_DBW_MSGS")))
(unless (find-package "RAPTOR_DBW_MSGS::STEERINGREPORT")
  (make-package "RAPTOR_DBW_MSGS::STEERINGREPORT"))

(in-package "ROS")
;;//! \htmlinclude SteeringReport.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass raptor_dbw_msgs::SteeringReport
  :super ros::object
  :slots (_header _steering_wheel_angle _steering_wheel_angle_cmd _steering_wheel_torque _enabled _driver_activity _fault_steering_system _overheat_prevention_mode _rolling_counter _control_type _steering_overheat_warning ))

(defmethod raptor_dbw_msgs::SteeringReport
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:steering_wheel_angle __steering_wheel_angle) 0.0)
    ((:steering_wheel_angle_cmd __steering_wheel_angle_cmd) 0.0)
    ((:steering_wheel_torque __steering_wheel_torque) 0.0)
    ((:enabled __enabled) nil)
    ((:driver_activity __driver_activity) nil)
    ((:fault_steering_system __fault_steering_system) nil)
    ((:overheat_prevention_mode __overheat_prevention_mode) nil)
    ((:rolling_counter __rolling_counter) 0)
    ((:control_type __control_type) (instance raptor_dbw_msgs::ActuatorControlMode :init))
    ((:steering_overheat_warning __steering_overheat_warning) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _steering_wheel_angle (float __steering_wheel_angle))
   (setq _steering_wheel_angle_cmd (float __steering_wheel_angle_cmd))
   (setq _steering_wheel_torque (float __steering_wheel_torque))
   (setq _enabled __enabled)
   (setq _driver_activity __driver_activity)
   (setq _fault_steering_system __fault_steering_system)
   (setq _overheat_prevention_mode __overheat_prevention_mode)
   (setq _rolling_counter (round __rolling_counter))
   (setq _control_type __control_type)
   (setq _steering_overheat_warning __steering_overheat_warning)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:steering_wheel_angle
   (&optional __steering_wheel_angle)
   (if __steering_wheel_angle (setq _steering_wheel_angle __steering_wheel_angle)) _steering_wheel_angle)
  (:steering_wheel_angle_cmd
   (&optional __steering_wheel_angle_cmd)
   (if __steering_wheel_angle_cmd (setq _steering_wheel_angle_cmd __steering_wheel_angle_cmd)) _steering_wheel_angle_cmd)
  (:steering_wheel_torque
   (&optional __steering_wheel_torque)
   (if __steering_wheel_torque (setq _steering_wheel_torque __steering_wheel_torque)) _steering_wheel_torque)
  (:enabled
   (&optional (__enabled :null))
   (if (not (eq __enabled :null)) (setq _enabled __enabled)) _enabled)
  (:driver_activity
   (&optional (__driver_activity :null))
   (if (not (eq __driver_activity :null)) (setq _driver_activity __driver_activity)) _driver_activity)
  (:fault_steering_system
   (&optional (__fault_steering_system :null))
   (if (not (eq __fault_steering_system :null)) (setq _fault_steering_system __fault_steering_system)) _fault_steering_system)
  (:overheat_prevention_mode
   (&optional (__overheat_prevention_mode :null))
   (if (not (eq __overheat_prevention_mode :null)) (setq _overheat_prevention_mode __overheat_prevention_mode)) _overheat_prevention_mode)
  (:rolling_counter
   (&optional __rolling_counter)
   (if __rolling_counter (setq _rolling_counter __rolling_counter)) _rolling_counter)
  (:control_type
   (&rest __control_type)
   (if (keywordp (car __control_type))
       (send* _control_type __control_type)
     (progn
       (if __control_type (setq _control_type (car __control_type)))
       _control_type)))
  (:steering_overheat_warning
   (&optional (__steering_overheat_warning :null))
   (if (not (eq __steering_overheat_warning :null)) (setq _steering_overheat_warning __steering_overheat_warning)) _steering_overheat_warning)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _steering_wheel_angle
    4
    ;; float32 _steering_wheel_angle_cmd
    4
    ;; float32 _steering_wheel_torque
    4
    ;; bool _enabled
    1
    ;; bool _driver_activity
    1
    ;; bool _fault_steering_system
    1
    ;; bool _overheat_prevention_mode
    1
    ;; uint8 _rolling_counter
    1
    ;; raptor_dbw_msgs/ActuatorControlMode _control_type
    (send _control_type :serialization-length)
    ;; bool _steering_overheat_warning
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _steering_wheel_angle
       (sys::poke _steering_wheel_angle (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _steering_wheel_angle_cmd
       (sys::poke _steering_wheel_angle_cmd (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _steering_wheel_torque
       (sys::poke _steering_wheel_torque (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _enabled
       (if _enabled (write-byte -1 s) (write-byte 0 s))
     ;; bool _driver_activity
       (if _driver_activity (write-byte -1 s) (write-byte 0 s))
     ;; bool _fault_steering_system
       (if _fault_steering_system (write-byte -1 s) (write-byte 0 s))
     ;; bool _overheat_prevention_mode
       (if _overheat_prevention_mode (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _rolling_counter
       (write-byte _rolling_counter s)
     ;; raptor_dbw_msgs/ActuatorControlMode _control_type
       (send _control_type :serialize s)
     ;; bool _steering_overheat_warning
       (if _steering_overheat_warning (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _steering_wheel_angle
     (setq _steering_wheel_angle (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _steering_wheel_angle_cmd
     (setq _steering_wheel_angle_cmd (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _steering_wheel_torque
     (setq _steering_wheel_torque (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _enabled
     (setq _enabled (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _driver_activity
     (setq _driver_activity (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _fault_steering_system
     (setq _fault_steering_system (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _overheat_prevention_mode
     (setq _overheat_prevention_mode (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _rolling_counter
     (setq _rolling_counter (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; raptor_dbw_msgs/ActuatorControlMode _control_type
     (send _control_type :deserialize buf ptr-) (incf ptr- (send _control_type :serialization-length))
   ;; bool _steering_overheat_warning
     (setq _steering_overheat_warning (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get raptor_dbw_msgs::SteeringReport :md5sum-) "591f9fcdf310bb0c5cda95f4d6f03ec2")
(setf (get raptor_dbw_msgs::SteeringReport :datatype-) "raptor_dbw_msgs/SteeringReport")
(setf (get raptor_dbw_msgs::SteeringReport :definition-)
      "Header header

# Steering Wheel
float32 steering_wheel_angle      # degrees
float32 steering_wheel_angle_cmd  # degrees
float32 steering_wheel_torque     # 0 to 100%

# Status
bool enabled  
bool driver_activity

bool fault_steering_system

bool overheat_prevention_mode

uint8 rolling_counter

ActuatorControlMode control_type

bool steering_overheat_warning

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
MSG: raptor_dbw_msgs/ActuatorControlMode
uint8 value

uint8 open_loop = 0
uint8 closed_loop_actuator = 1
uint8 closed_loop_vehicle = 2
uint8 none = 255
")



(provide :raptor_dbw_msgs/SteeringReport "591f9fcdf310bb0c5cda95f4d6f03ec2")


