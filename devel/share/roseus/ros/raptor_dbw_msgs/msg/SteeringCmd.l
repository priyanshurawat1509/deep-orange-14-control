;; Auto-generated. Do not edit!


(when (boundp 'raptor_dbw_msgs::SteeringCmd)
  (if (not (find-package "RAPTOR_DBW_MSGS"))
    (make-package "RAPTOR_DBW_MSGS"))
  (shadow 'SteeringCmd (find-package "RAPTOR_DBW_MSGS")))
(unless (find-package "RAPTOR_DBW_MSGS::STEERINGCMD")
  (make-package "RAPTOR_DBW_MSGS::STEERINGCMD"))

(in-package "ROS")
;;//! \htmlinclude SteeringCmd.msg.html


(defclass raptor_dbw_msgs::SteeringCmd
  :super ros::object
  :slots (_angle_cmd _angle_velocity _enable _ignore _rolling_counter _torque_cmd _vehicle_curvature_cmd _control_type ))

(defmethod raptor_dbw_msgs::SteeringCmd
  (:init
   (&key
    ((:angle_cmd __angle_cmd) 0.0)
    ((:angle_velocity __angle_velocity) 0.0)
    ((:enable __enable) nil)
    ((:ignore __ignore) nil)
    ((:rolling_counter __rolling_counter) 0)
    ((:torque_cmd __torque_cmd) 0.0)
    ((:vehicle_curvature_cmd __vehicle_curvature_cmd) 0.0)
    ((:control_type __control_type) (instance raptor_dbw_msgs::ActuatorControlMode :init))
    )
   (send-super :init)
   (setq _angle_cmd (float __angle_cmd))
   (setq _angle_velocity (float __angle_velocity))
   (setq _enable __enable)
   (setq _ignore __ignore)
   (setq _rolling_counter (round __rolling_counter))
   (setq _torque_cmd (float __torque_cmd))
   (setq _vehicle_curvature_cmd (float __vehicle_curvature_cmd))
   (setq _control_type __control_type)
   self)
  (:angle_cmd
   (&optional __angle_cmd)
   (if __angle_cmd (setq _angle_cmd __angle_cmd)) _angle_cmd)
  (:angle_velocity
   (&optional __angle_velocity)
   (if __angle_velocity (setq _angle_velocity __angle_velocity)) _angle_velocity)
  (:enable
   (&optional (__enable :null))
   (if (not (eq __enable :null)) (setq _enable __enable)) _enable)
  (:ignore
   (&optional (__ignore :null))
   (if (not (eq __ignore :null)) (setq _ignore __ignore)) _ignore)
  (:rolling_counter
   (&optional __rolling_counter)
   (if __rolling_counter (setq _rolling_counter __rolling_counter)) _rolling_counter)
  (:torque_cmd
   (&optional __torque_cmd)
   (if __torque_cmd (setq _torque_cmd __torque_cmd)) _torque_cmd)
  (:vehicle_curvature_cmd
   (&optional __vehicle_curvature_cmd)
   (if __vehicle_curvature_cmd (setq _vehicle_curvature_cmd __vehicle_curvature_cmd)) _vehicle_curvature_cmd)
  (:control_type
   (&rest __control_type)
   (if (keywordp (car __control_type))
       (send* _control_type __control_type)
     (progn
       (if __control_type (setq _control_type (car __control_type)))
       _control_type)))
  (:serialization-length
   ()
   (+
    ;; float32 _angle_cmd
    4
    ;; float32 _angle_velocity
    4
    ;; bool _enable
    1
    ;; bool _ignore
    1
    ;; uint8 _rolling_counter
    1
    ;; float32 _torque_cmd
    4
    ;; float32 _vehicle_curvature_cmd
    4
    ;; raptor_dbw_msgs/ActuatorControlMode _control_type
    (send _control_type :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _angle_cmd
       (sys::poke _angle_cmd (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _angle_velocity
       (sys::poke _angle_velocity (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _enable
       (if _enable (write-byte -1 s) (write-byte 0 s))
     ;; bool _ignore
       (if _ignore (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _rolling_counter
       (write-byte _rolling_counter s)
     ;; float32 _torque_cmd
       (sys::poke _torque_cmd (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vehicle_curvature_cmd
       (sys::poke _vehicle_curvature_cmd (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; raptor_dbw_msgs/ActuatorControlMode _control_type
       (send _control_type :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _angle_cmd
     (setq _angle_cmd (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _angle_velocity
     (setq _angle_velocity (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _enable
     (setq _enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _ignore
     (setq _ignore (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _rolling_counter
     (setq _rolling_counter (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _torque_cmd
     (setq _torque_cmd (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vehicle_curvature_cmd
     (setq _vehicle_curvature_cmd (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; raptor_dbw_msgs/ActuatorControlMode _control_type
     (send _control_type :deserialize buf ptr-) (incf ptr- (send _control_type :serialization-length))
   ;;
   self)
  )

(setf (get raptor_dbw_msgs::SteeringCmd :md5sum-) "604a9bcc92c8bb45c3c9ce85f6bc45e1")
(setf (get raptor_dbw_msgs::SteeringCmd :datatype-) "raptor_dbw_msgs/SteeringCmd")
(setf (get raptor_dbw_msgs::SteeringCmd :definition-)
      "# Steering Wheel
float32 angle_cmd        # degrees, range -500 to 500
float32 angle_velocity   # degrees/s, range 0 to 498, 0 = maximum

# Enable
bool enable

# Ignore driver overrides
bool ignore

# Watchdog counter (optional)
uint8 rolling_counter

float32 torque_cmd # %-torque

float32 vehicle_curvature_cmd # 1/m

ActuatorControlMode control_type
================================================================================
MSG: raptor_dbw_msgs/ActuatorControlMode
uint8 value

uint8 open_loop = 0
uint8 closed_loop_actuator = 1
uint8 closed_loop_vehicle = 2
uint8 none = 255
")



(provide :raptor_dbw_msgs/SteeringCmd "604a9bcc92c8bb45c3c9ce85f6bc45e1")


