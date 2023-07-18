;; Auto-generated. Do not edit!


(when (boundp 'deeporange14_msgs::BrakePressure)
  (if (not (find-package "DEEPORANGE14_MSGS"))
    (make-package "DEEPORANGE14_MSGS"))
  (shadow 'BrakePressure (find-package "DEEPORANGE14_MSGS")))
(unless (find-package "DEEPORANGE14_MSGS::BRAKEPRESSURE")
  (make-package "DEEPORANGE14_MSGS::BRAKEPRESSURE"))

(in-package "ROS")
;;//! \htmlinclude BrakePressure.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass deeporange14_msgs::BrakePressure
  :super ros::object
  :slots (_header _brkL_pr _brkR_pr ))

(defmethod deeporange14_msgs::BrakePressure
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:brkL_pr __brkL_pr) 0.0)
    ((:brkR_pr __brkR_pr) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _brkL_pr (float __brkL_pr))
   (setq _brkR_pr (float __brkR_pr))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:brkL_pr
   (&optional __brkL_pr)
   (if __brkL_pr (setq _brkL_pr __brkL_pr)) _brkL_pr)
  (:brkR_pr
   (&optional __brkR_pr)
   (if __brkR_pr (setq _brkR_pr __brkR_pr)) _brkR_pr)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _brkL_pr
    8
    ;; float64 _brkR_pr
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _brkL_pr
       (sys::poke _brkL_pr (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _brkR_pr
       (sys::poke _brkR_pr (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _brkL_pr
     (setq _brkL_pr (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _brkR_pr
     (setq _brkR_pr (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get deeporange14_msgs::BrakePressure :md5sum-) "a255ffc9ccf37ff061f56bd425f52afa")
(setf (get deeporange14_msgs::BrakePressure :datatype-) "deeporange14_msgs/BrakePressure")
(setf (get deeporange14_msgs::BrakePressure :definition-)
      "#Message contains timestamped Brake pressure commands
Header header

float64 brkL_pr
float64 brkR_pr
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



(provide :deeporange14_msgs/BrakePressure "a255ffc9ccf37ff061f56bd425f52afa")


