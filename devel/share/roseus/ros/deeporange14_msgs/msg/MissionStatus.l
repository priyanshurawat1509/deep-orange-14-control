;; Auto-generated. Do not edit!


(when (boundp 'deeporange14_msgs::MissionStatus)
  (if (not (find-package "DEEPORANGE14_MSGS"))
    (make-package "DEEPORANGE14_MSGS"))
  (shadow 'MissionStatus (find-package "DEEPORANGE14_MSGS")))
(unless (find-package "DEEPORANGE14_MSGS::MISSIONSTATUS")
  (make-package "DEEPORANGE14_MSGS::MISSIONSTATUS"))

(in-package "ROS")
;;//! \htmlinclude MissionStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass deeporange14_msgs::MissionStatus
  :super ros::object
  :slots (_header _status _stop_ros ))

(defmethod deeporange14_msgs::MissionStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:status __status) "")
    ((:stop_ros __stop_ros) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _status (string __status))
   (setq _stop_ros __stop_ros)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:stop_ros
   (&optional (__stop_ros :null))
   (if (not (eq __stop_ros :null)) (setq _stop_ros __stop_ros)) _stop_ros)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _status
    4 (length _status)
    ;; bool _stop_ros
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _status
       (write-long (length _status) s) (princ _status s)
     ;; bool _stop_ros
       (if _stop_ros (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; bool _stop_ros
     (setq _stop_ros (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get deeporange14_msgs::MissionStatus :md5sum-) "edb2d94e8a16ca298be038805a2c00e1")
(setf (get deeporange14_msgs::MissionStatus :datatype-) "deeporange14_msgs/MissionStatus")
(setf (get deeporange14_msgs::MissionStatus :definition-)
      "Header header

string status
bool stop_ros

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



(provide :deeporange14_msgs/MissionStatus "edb2d94e8a16ca298be038805a2c00e1")


