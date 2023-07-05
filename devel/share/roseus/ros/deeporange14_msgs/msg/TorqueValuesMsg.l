;; Auto-generated. Do not edit!


(when (boundp 'deeporange14_msgs::TorqueValuesMsg)
  (if (not (find-package "DEEPORANGE14_MSGS"))
    (make-package "DEEPORANGE14_MSGS"))
  (shadow 'TorqueValuesMsg (find-package "DEEPORANGE14_MSGS")))
(unless (find-package "DEEPORANGE14_MSGS::TORQUEVALUESMSG")
  (make-package "DEEPORANGE14_MSGS::TORQUEVALUESMSG"))

(in-package "ROS")
;;//! \htmlinclude TorqueValuesMsg.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass deeporange14_msgs::TorqueValuesMsg
  :super ros::object
  :slots (_header _left_torque _right_torque ))

(defmethod deeporange14_msgs::TorqueValuesMsg
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:left_torque __left_torque) 0.0)
    ((:right_torque __right_torque) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _left_torque (float __left_torque))
   (setq _right_torque (float __right_torque))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:left_torque
   (&optional __left_torque)
   (if __left_torque (setq _left_torque __left_torque)) _left_torque)
  (:right_torque
   (&optional __right_torque)
   (if __right_torque (setq _right_torque __right_torque)) _right_torque)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _left_torque
    8
    ;; float64 _right_torque
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _left_torque
       (sys::poke _left_torque (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _right_torque
       (sys::poke _right_torque (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _left_torque
     (setq _left_torque (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _right_torque
     (setq _right_torque (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get deeporange14_msgs::TorqueValuesMsg :md5sum-) "6d520ba6826fce2ad8c1220c1158f51a")
(setf (get deeporange14_msgs::TorqueValuesMsg :datatype-) "deeporange14_msgs/TorqueValuesMsg")
(setf (get deeporange14_msgs::TorqueValuesMsg :definition-)
      "Header header

float64 left_torque
float64 right_torque

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



(provide :deeporange14_msgs/TorqueValuesMsg "6d520ba6826fce2ad8c1220c1158f51a")


