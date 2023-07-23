;; Auto-generated. Do not edit!


(when (boundp 'raptor_dbw_msgs::MiscReport)
  (if (not (find-package "RAPTOR_DBW_MSGS"))
    (make-package "RAPTOR_DBW_MSGS"))
  (shadow 'MiscReport (find-package "RAPTOR_DBW_MSGS")))
(unless (find-package "RAPTOR_DBW_MSGS::MISCREPORT")
  (make-package "RAPTOR_DBW_MSGS::MISCREPORT"))

(in-package "ROS")
;;//! \htmlinclude MiscReport.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass raptor_dbw_msgs::MiscReport
  :super ros::object
  :slots (_header _fuel_level _drive_by_wire_enabled _vehicle_speed _software_build_number _general_actuator_fault _by_wire_ready _general_driver_activity _comms_fault _ambient_temp ))

(defmethod raptor_dbw_msgs::MiscReport
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:fuel_level __fuel_level) 0.0)
    ((:drive_by_wire_enabled __drive_by_wire_enabled) nil)
    ((:vehicle_speed __vehicle_speed) 0.0)
    ((:software_build_number __software_build_number) 0)
    ((:general_actuator_fault __general_actuator_fault) nil)
    ((:by_wire_ready __by_wire_ready) nil)
    ((:general_driver_activity __general_driver_activity) nil)
    ((:comms_fault __comms_fault) nil)
    ((:ambient_temp __ambient_temp) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _fuel_level (float __fuel_level))
   (setq _drive_by_wire_enabled __drive_by_wire_enabled)
   (setq _vehicle_speed (float __vehicle_speed))
   (setq _software_build_number (round __software_build_number))
   (setq _general_actuator_fault __general_actuator_fault)
   (setq _by_wire_ready __by_wire_ready)
   (setq _general_driver_activity __general_driver_activity)
   (setq _comms_fault __comms_fault)
   (setq _ambient_temp (float __ambient_temp))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:fuel_level
   (&optional __fuel_level)
   (if __fuel_level (setq _fuel_level __fuel_level)) _fuel_level)
  (:drive_by_wire_enabled
   (&optional (__drive_by_wire_enabled :null))
   (if (not (eq __drive_by_wire_enabled :null)) (setq _drive_by_wire_enabled __drive_by_wire_enabled)) _drive_by_wire_enabled)
  (:vehicle_speed
   (&optional __vehicle_speed)
   (if __vehicle_speed (setq _vehicle_speed __vehicle_speed)) _vehicle_speed)
  (:software_build_number
   (&optional __software_build_number)
   (if __software_build_number (setq _software_build_number __software_build_number)) _software_build_number)
  (:general_actuator_fault
   (&optional (__general_actuator_fault :null))
   (if (not (eq __general_actuator_fault :null)) (setq _general_actuator_fault __general_actuator_fault)) _general_actuator_fault)
  (:by_wire_ready
   (&optional (__by_wire_ready :null))
   (if (not (eq __by_wire_ready :null)) (setq _by_wire_ready __by_wire_ready)) _by_wire_ready)
  (:general_driver_activity
   (&optional (__general_driver_activity :null))
   (if (not (eq __general_driver_activity :null)) (setq _general_driver_activity __general_driver_activity)) _general_driver_activity)
  (:comms_fault
   (&optional (__comms_fault :null))
   (if (not (eq __comms_fault :null)) (setq _comms_fault __comms_fault)) _comms_fault)
  (:ambient_temp
   (&optional __ambient_temp)
   (if __ambient_temp (setq _ambient_temp __ambient_temp)) _ambient_temp)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _fuel_level
    4
    ;; bool _drive_by_wire_enabled
    1
    ;; float32 _vehicle_speed
    4
    ;; uint16 _software_build_number
    2
    ;; bool _general_actuator_fault
    1
    ;; bool _by_wire_ready
    1
    ;; bool _general_driver_activity
    1
    ;; bool _comms_fault
    1
    ;; float32 _ambient_temp
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _fuel_level
       (sys::poke _fuel_level (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _drive_by_wire_enabled
       (if _drive_by_wire_enabled (write-byte -1 s) (write-byte 0 s))
     ;; float32 _vehicle_speed
       (sys::poke _vehicle_speed (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint16 _software_build_number
       (write-word _software_build_number s)
     ;; bool _general_actuator_fault
       (if _general_actuator_fault (write-byte -1 s) (write-byte 0 s))
     ;; bool _by_wire_ready
       (if _by_wire_ready (write-byte -1 s) (write-byte 0 s))
     ;; bool _general_driver_activity
       (if _general_driver_activity (write-byte -1 s) (write-byte 0 s))
     ;; bool _comms_fault
       (if _comms_fault (write-byte -1 s) (write-byte 0 s))
     ;; float32 _ambient_temp
       (sys::poke _ambient_temp (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _fuel_level
     (setq _fuel_level (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _drive_by_wire_enabled
     (setq _drive_by_wire_enabled (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _vehicle_speed
     (setq _vehicle_speed (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint16 _software_build_number
     (setq _software_build_number (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; bool _general_actuator_fault
     (setq _general_actuator_fault (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _by_wire_ready
     (setq _by_wire_ready (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _general_driver_activity
     (setq _general_driver_activity (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _comms_fault
     (setq _comms_fault (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _ambient_temp
     (setq _ambient_temp (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get raptor_dbw_msgs::MiscReport :md5sum-) "3f121c2cad2d402df05aa09b1e1117c0")
(setf (get raptor_dbw_msgs::MiscReport :datatype-) "raptor_dbw_msgs/MiscReport")
(setf (get raptor_dbw_msgs::MiscReport :definition-)
      "Header header

float32 fuel_level          # %
bool drive_by_wire_enabled
float32 vehicle_speed       # km/h
uint16 software_build_number
bool general_actuator_fault
bool by_wire_ready
bool general_driver_activity
bool comms_fault
float32 ambient_temp # degrees-C
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

")



(provide :raptor_dbw_msgs/MiscReport "3f121c2cad2d402df05aa09b1e1117c0")


