;; Auto-generated. Do not edit!


(when (boundp 'deeporange14_msgs::BrakePressureCmd)
  (if (not (find-package "DEEPORANGE14_MSGS"))
    (make-package "DEEPORANGE14_MSGS"))
  (shadow 'BrakePressureCmd (find-package "DEEPORANGE14_MSGS")))
(unless (find-package "DEEPORANGE14_MSGS::BRAKEPRESSURECMD")
  (make-package "DEEPORANGE14_MSGS::BRAKEPRESSURECMD"))

(in-package "ROS")
;;//! \htmlinclude BrakePressureCmd.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass deeporange14_msgs::BrakePressureCmd
  :super ros::object
  :slots (_header _brkL_cmd _brkR_cmd ))

(defmethod deeporange14_msgs::BrakePressureCmd
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:brkL_cmd __brkL_cmd) 0.0)
    ((:brkR_cmd __brkR_cmd) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _brkL_cmd (float __brkL_cmd))
   (setq _brkR_cmd (float __brkR_cmd))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:brkL_cmd
   (&optional __brkL_cmd)
   (if __brkL_cmd (setq _brkL_cmd __brkL_cmd)) _brkL_cmd)
  (:brkR_cmd
   (&optional __brkR_cmd)
   (if __brkR_cmd (setq _brkR_cmd __brkR_cmd)) _brkR_cmd)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _brkL_cmd
    8
    ;; float64 _brkR_cmd
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _brkL_cmd
       (sys::poke _brkL_cmd (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _brkR_cmd
       (sys::poke _brkR_cmd (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _brkL_cmd
     (setq _brkL_cmd (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _brkR_cmd
     (setq _brkR_cmd (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get deeporange14_msgs::BrakePressureCmd :md5sum-) "8a6c3b4b6c9de0dcdfdf346411efc7fa")
(setf (get deeporange14_msgs::BrakePressureCmd :datatype-) "deeporange14_msgs/BrakePressureCmd")
(setf (get deeporange14_msgs::BrakePressureCmd :definition-)
      "#Message contains timestamped Brake pressure commands
Header header

float64 brkL_cmd
float64 brkR_cmd
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



(provide :deeporange14_msgs/BrakePressureCmd "8a6c3b4b6c9de0dcdfdf346411efc7fa")


