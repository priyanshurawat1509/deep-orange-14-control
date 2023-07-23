;; Auto-generated. Do not edit!


(when (boundp 'raptor_dbw_msgs::BrakeCmd)
  (if (not (find-package "RAPTOR_DBW_MSGS"))
    (make-package "RAPTOR_DBW_MSGS"))
  (shadow 'BrakeCmd (find-package "RAPTOR_DBW_MSGS")))
(unless (find-package "RAPTOR_DBW_MSGS::BRAKECMD")
  (make-package "RAPTOR_DBW_MSGS::BRAKECMD"))

(in-package "ROS")
;;//! \htmlinclude BrakeCmd.msg.html


(defclass raptor_dbw_msgs::BrakeCmd
  :super ros::object
  :slots (_pedal_cmd _enable _rolling_counter _torque_cmd _decel_limit _control_type _decel_negative_jerk_limit ))

(defmethod raptor_dbw_msgs::BrakeCmd
  (:init
   (&key
    ((:pedal_cmd __pedal_cmd) 0.0)
    ((:enable __enable) nil)
    ((:rolling_counter __rolling_counter) 0)
    ((:torque_cmd __torque_cmd) 0.0)
    ((:decel_limit __decel_limit) 0.0)
    ((:control_type __control_type) (instance raptor_dbw_msgs::ActuatorControlMode :init))
    ((:decel_negative_jerk_limit __decel_negative_jerk_limit) 0.0)
    )
   (send-super :init)
   (setq _pedal_cmd (float __pedal_cmd))
   (setq _enable __enable)
   (setq _rolling_counter (round __rolling_counter))
   (setq _torque_cmd (float __torque_cmd))
   (setq _decel_limit (float __decel_limit))
   (setq _control_type __control_type)
   (setq _decel_negative_jerk_limit (float __decel_negative_jerk_limit))
   self)
  (:pedal_cmd
   (&optional __pedal_cmd)
   (if __pedal_cmd (setq _pedal_cmd __pedal_cmd)) _pedal_cmd)
  (:enable
   (&optional (__enable :null))
   (if (not (eq __enable :null)) (setq _enable __enable)) _enable)
  (:rolling_counter
   (&optional __rolling_counter)
   (if __rolling_counter (setq _rolling_counter __rolling_counter)) _rolling_counter)
  (:torque_cmd
   (&optional __torque_cmd)
   (if __torque_cmd (setq _torque_cmd __torque_cmd)) _torque_cmd)
  (:decel_limit
   (&optional __decel_limit)
   (if __decel_limit (setq _decel_limit __decel_limit)) _decel_limit)
  (:control_type
   (&rest __control_type)
   (if (keywordp (car __control_type))
       (send* _control_type __control_type)
     (progn
       (if __control_type (setq _control_type (car __control_type)))
       _control_type)))
  (:decel_negative_jerk_limit
   (&optional __decel_negative_jerk_limit)
   (if __decel_negative_jerk_limit (setq _decel_negative_jerk_limit __decel_negative_jerk_limit)) _decel_negative_jerk_limit)
  (:serialization-length
   ()
   (+
    ;; float32 _pedal_cmd
    4
    ;; bool _enable
    1
    ;; uint8 _rolling_counter
    1
    ;; float32 _torque_cmd
    4
    ;; float32 _decel_limit
    4
    ;; raptor_dbw_msgs/ActuatorControlMode _control_type
    (send _control_type :serialization-length)
    ;; float32 _decel_negative_jerk_limit
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _pedal_cmd
       (sys::poke _pedal_cmd (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _enable
       (if _enable (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _rolling_counter
       (write-byte _rolling_counter s)
     ;; float32 _torque_cmd
       (sys::poke _torque_cmd (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _decel_limit
       (sys::poke _decel_limit (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; raptor_dbw_msgs/ActuatorControlMode _control_type
       (send _control_type :serialize s)
     ;; float32 _decel_negative_jerk_limit
       (sys::poke _decel_negative_jerk_limit (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _pedal_cmd
     (setq _pedal_cmd (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _enable
     (setq _enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _rolling_counter
     (setq _rolling_counter (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _torque_cmd
     (setq _torque_cmd (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _decel_limit
     (setq _decel_limit (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; raptor_dbw_msgs/ActuatorControlMode _control_type
     (send _control_type :deserialize buf ptr-) (incf ptr- (send _control_type :serialization-length))
   ;; float32 _decel_negative_jerk_limit
     (setq _decel_negative_jerk_limit (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get raptor_dbw_msgs::BrakeCmd :md5sum-) "4d6dead8aa3923674dc63b7884f45810")
(setf (get raptor_dbw_msgs::BrakeCmd :datatype-) "raptor_dbw_msgs/BrakeCmd")
(setf (get raptor_dbw_msgs::BrakeCmd :definition-)
      "# Brake pedal (%)
float32 pedal_cmd

# Enable
bool enable

# Watchdog counter (optional)
uint8 rolling_counter

float32 torque_cmd # %-torque 
float32 decel_limit # m/s^2

ActuatorControlMode control_type

float32 decel_negative_jerk_limit # m/s^3
================================================================================
MSG: raptor_dbw_msgs/ActuatorControlMode
uint8 value

uint8 open_loop = 0
uint8 closed_loop_actuator = 1
uint8 closed_loop_vehicle = 2
uint8 none = 255
")



(provide :raptor_dbw_msgs/BrakeCmd "4d6dead8aa3923674dc63b7884f45810")


