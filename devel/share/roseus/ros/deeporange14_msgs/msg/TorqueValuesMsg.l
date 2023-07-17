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
  :slots (_header _seq _stamp _left_torque_cmd _right_torque_cmd ))

(defmethod deeporange14_msgs::TorqueValuesMsg
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:seq __seq) 0)
    ((:stamp __stamp) (instance ros::time :init))
    ((:left_torque_cmd __left_torque_cmd) 0.0)
    ((:right_torque_cmd __right_torque_cmd) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _seq (round __seq))
   (setq _stamp __stamp)
   (setq _left_torque_cmd (float __left_torque_cmd))
   (setq _right_torque_cmd (float __right_torque_cmd))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:seq
   (&optional __seq)
   (if __seq (setq _seq __seq)) _seq)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:left_torque_cmd
   (&optional __left_torque_cmd)
   (if __left_torque_cmd (setq _left_torque_cmd __left_torque_cmd)) _left_torque_cmd)
  (:right_torque_cmd
   (&optional __right_torque_cmd)
   (if __right_torque_cmd (setq _right_torque_cmd __right_torque_cmd)) _right_torque_cmd)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _seq
    4
    ;; time _stamp
    8
    ;; float64 _left_torque_cmd
    8
    ;; float64 _right_torque_cmd
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _seq
       (write-long _seq s)
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; float64 _left_torque_cmd
       (sys::poke _left_torque_cmd (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _right_torque_cmd
       (sys::poke _right_torque_cmd (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _seq
     (setq _seq (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _left_torque_cmd
     (setq _left_torque_cmd (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _right_torque_cmd
     (setq _right_torque_cmd (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get deeporange14_msgs::TorqueValuesMsg :md5sum-) "f1b98deb31033bbbe89e52918f5fea36")
(setf (get deeporange14_msgs::TorqueValuesMsg :datatype-) "deeporange14_msgs/TorqueValuesMsg")
(setf (get deeporange14_msgs::TorqueValuesMsg :definition-)
      "Header header
  uint32 seq
  time stamp
float64 left_torque_cmd
float64 right_torque_cmd

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



(provide :deeporange14_msgs/TorqueValuesMsg "f1b98deb31033bbbe89e52918f5fea36")


