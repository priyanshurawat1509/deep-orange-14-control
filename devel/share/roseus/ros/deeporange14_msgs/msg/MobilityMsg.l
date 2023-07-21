;; Auto-generated. Do not edit!


(when (boundp 'deeporange14_msgs::MobilityMsg)
  (if (not (find-package "DEEPORANGE14_MSGS"))
    (make-package "DEEPORANGE14_MSGS"))
  (shadow 'MobilityMsg (find-package "DEEPORANGE14_MSGS")))
(unless (find-package "DEEPORANGE14_MSGS::MOBILITYMSG")
  (make-package "DEEPORANGE14_MSGS::MOBILITYMSG"))

(in-package "ROS")
;;//! \htmlinclude MobilityMsg.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass deeporange14_msgs::MobilityMsg
  :super ros::object
  :slots (_header _tqL_cmd _tqR_cmd _brkL_cmd _brkR_cmd _au_state ))

(defmethod deeporange14_msgs::MobilityMsg
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:tqL_cmd __tqL_cmd) 0.0)
    ((:tqR_cmd __tqR_cmd) 0.0)
    ((:brkL_cmd __brkL_cmd) 0.0)
    ((:brkR_cmd __brkR_cmd) 0.0)
    ((:au_state __au_state) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _tqL_cmd (float __tqL_cmd))
   (setq _tqR_cmd (float __tqR_cmd))
   (setq _brkL_cmd (float __brkL_cmd))
   (setq _brkR_cmd (float __brkR_cmd))
   (setq _au_state (round __au_state))
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
  (:brkL_cmd
   (&optional __brkL_cmd)
   (if __brkL_cmd (setq _brkL_cmd __brkL_cmd)) _brkL_cmd)
  (:brkR_cmd
   (&optional __brkR_cmd)
   (if __brkR_cmd (setq _brkR_cmd __brkR_cmd)) _brkR_cmd)
  (:au_state
   (&optional __au_state)
   (if __au_state (setq _au_state __au_state)) _au_state)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _tqL_cmd
    8
    ;; float64 _tqR_cmd
    8
    ;; float32 _brkL_cmd
    4
    ;; float32 _brkR_cmd
    4
    ;; uint8 _au_state
    1
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
     ;; float32 _brkL_cmd
       (sys::poke _brkL_cmd (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _brkR_cmd
       (sys::poke _brkR_cmd (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint8 _au_state
       (write-byte _au_state s)
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
   ;; float32 _brkL_cmd
     (setq _brkL_cmd (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _brkR_cmd
     (setq _brkR_cmd (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint8 _au_state
     (setq _au_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get deeporange14_msgs::MobilityMsg :md5sum-) "db3ff148ca2e480eda9720b0eb366e47")
(setf (get deeporange14_msgs::MobilityMsg :datatype-) "deeporange14_msgs/MobilityMsg")
(setf (get deeporange14_msgs::MobilityMsg :definition-)
      "#This represents a vector in free space -- currently defined to hold the left and right track #velocities
Header header

float64 tqL_cmd
float64 tqR_cmd
float32 brkL_cmd
float32 brkR_cmd
uint8 au_state 

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



(provide :deeporange14_msgs/MobilityMsg "db3ff148ca2e480eda9720b0eb366e47")


