;; Auto-generated. Do not edit!


(when (boundp 'raptor_dbw_msgs::Brake2Report)
  (if (not (find-package "RAPTOR_DBW_MSGS"))
    (make-package "RAPTOR_DBW_MSGS"))
  (shadow 'Brake2Report (find-package "RAPTOR_DBW_MSGS")))
(unless (find-package "RAPTOR_DBW_MSGS::BRAKE2REPORT")
  (make-package "RAPTOR_DBW_MSGS::BRAKE2REPORT"))

(in-package "ROS")
;;//! \htmlinclude Brake2Report.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass raptor_dbw_msgs::Brake2Report
  :super ros::object
  :slots (_header _brake_pressure _estimated_road_slope _speed_set_point ))

(defmethod raptor_dbw_msgs::Brake2Report
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:brake_pressure __brake_pressure) 0.0)
    ((:estimated_road_slope __estimated_road_slope) 0.0)
    ((:speed_set_point __speed_set_point) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _brake_pressure (float __brake_pressure))
   (setq _estimated_road_slope (float __estimated_road_slope))
   (setq _speed_set_point (float __speed_set_point))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:brake_pressure
   (&optional __brake_pressure)
   (if __brake_pressure (setq _brake_pressure __brake_pressure)) _brake_pressure)
  (:estimated_road_slope
   (&optional __estimated_road_slope)
   (if __estimated_road_slope (setq _estimated_road_slope __estimated_road_slope)) _estimated_road_slope)
  (:speed_set_point
   (&optional __speed_set_point)
   (if __speed_set_point (setq _speed_set_point __speed_set_point)) _speed_set_point)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _brake_pressure
    4
    ;; float32 _estimated_road_slope
    4
    ;; float32 _speed_set_point
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _brake_pressure
       (sys::poke _brake_pressure (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _estimated_road_slope
       (sys::poke _estimated_road_slope (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _speed_set_point
       (sys::poke _speed_set_point (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _brake_pressure
     (setq _brake_pressure (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _estimated_road_slope
     (setq _estimated_road_slope (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _speed_set_point
     (setq _speed_set_point (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get raptor_dbw_msgs::Brake2Report :md5sum-) "91c57e75406042c8cada9e740cceeb96")
(setf (get raptor_dbw_msgs::Brake2Report :datatype-) "raptor_dbw_msgs/Brake2Report")
(setf (get raptor_dbw_msgs::Brake2Report :definition-)
      "Header header

float32 brake_pressure # units are bars, gauge pressure

float32 estimated_road_slope # degrees

float32 speed_set_point # m/s
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



(provide :raptor_dbw_msgs/Brake2Report "91c57e75406042c8cada9e740cceeb96")


