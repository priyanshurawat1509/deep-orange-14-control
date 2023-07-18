;; Auto-generated. Do not edit!


(when (boundp 'deeporange14_msgs::TorqueCmdStamped)
  (if (not (find-package "DEEPORANGE14_MSGS"))
    (make-package "DEEPORANGE14_MSGS"))
  (shadow 'TorqueCmdStamped (find-package "DEEPORANGE14_MSGS")))
(unless (find-package "DEEPORANGE14_MSGS::TORQUECMDSTAMPED")
  (make-package "DEEPORANGE14_MSGS::TORQUECMDSTAMPED"))

(in-package "ROS")
;;//! \htmlinclude TorqueCmdStamped.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass deeporange14_msgs::TorqueCmdStamped
  :super ros::object
  :slots (_header _tqL_cmd _tqR_cmd ))

(defmethod deeporange14_msgs::TorqueCmdStamped
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:tqL_cmd __tqL_cmd) 0.0)
    ((:tqR_cmd __tqR_cmd) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _tqL_cmd (float __tqL_cmd))
   (setq _tqR_cmd (float __tqR_cmd))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:tqL_cmd
   (&optional __tqL_cmd)
   (if __tqL_cmd (setq _tqL_cmd __tqL_cmd)) _tqL_cmd)
  (:tqR_cmd
   (&optional __tqR_cmd)
   (if __tqR_cmd (setq _tqR_cmd __tqR_cmd)) _tqR_cmd)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _tqL_cmd
    8
    ;; float64 _tqR_cmd
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _tqL_cmd
       (sys::poke _tqL_cmd (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _tqR_cmd
       (sys::poke _tqR_cmd (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _tqL_cmd
     (setq _tqL_cmd (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _tqR_cmd
     (setq _tqR_cmd (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get deeporange14_msgs::TorqueCmdStamped :md5sum-) "d2b993d9f9c7329f407ee1c3b8d87a65")
(setf (get deeporange14_msgs::TorqueCmdStamped :datatype-) "deeporange14_msgs/TorqueCmdStamped")
(setf (get deeporange14_msgs::TorqueCmdStamped :definition-)
      "#Message contains timestamped torque commands
Header header

float64 tqL_cmd
float64 tqR_cmd
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



(provide :deeporange14_msgs/TorqueCmdStamped "d2b993d9f9c7329f407ee1c3b8d87a65")


