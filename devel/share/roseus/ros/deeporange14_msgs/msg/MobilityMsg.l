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
  :slots (_header _seq _stamp _tqL_cmd _tqR_cmd _brkL_cmd _brkR_cmd _au_state ))

(defmethod deeporange14_msgs::MobilityMsg
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:seq __seq) 0)
    ((:stamp __stamp) (instance ros::time :init))
    ((:tqL_cmd __tqL_cmd) 0.0)
    ((:tqR_cmd __tqR_cmd) 0.0)
    ((:brkL_cmd __brkL_cmd) 0)
    ((:brkR_cmd __brkR_cmd) 0)
    ((:au_state __au_state) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _seq (round __seq))
   (setq _stamp __stamp)
   (setq _tqL_cmd (float __tqL_cmd))
   (setq _tqR_cmd (float __tqR_cmd))
   (setq _brkL_cmd (round __brkL_cmd))
   (setq _brkR_cmd (round __brkR_cmd))
   (setq _au_state (round __au_state))
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
    ;; uint32 _seq
    4
    ;; time _stamp
    8
    ;; float64 _tqL_cmd
    8
    ;; float64 _tqR_cmd
    8
    ;; uint8 _brkL_cmd
    1
    ;; uint8 _brkR_cmd
    1
    ;; uint8 _au_state
    1
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
     ;; float64 _tqL_cmd
       (sys::poke _tqL_cmd (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _tqR_cmd
       (sys::poke _tqR_cmd (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _brkL_cmd
       (write-byte _brkL_cmd s)
     ;; uint8 _brkR_cmd
       (write-byte _brkR_cmd s)
     ;; uint8 _au_state
       (write-byte _au_state s)
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
   ;; float64 _tqL_cmd
     (setq _tqL_cmd (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _tqR_cmd
     (setq _tqR_cmd (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _brkL_cmd
     (setq _brkL_cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _brkR_cmd
     (setq _brkR_cmd (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _au_state
     (setq _au_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get deeporange14_msgs::MobilityMsg :md5sum-) "52b5461a1748b83406c477db1e2e86bd")
(setf (get deeporange14_msgs::MobilityMsg :datatype-) "deeporange14_msgs/MobilityMsg")
(setf (get deeporange14_msgs::MobilityMsg :definition-)
      "#This represents a vector in free space -- currently defined to hold the left and right track #velocities
Header header
  uint32 seq
  time stamp

float64 tqL_cmd
float64 tqR_cmd
uint8 brkL_cmd
uint8 brkR_cmd
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



(provide :deeporange14_msgs/MobilityMsg "52b5461a1748b83406c477db1e2e86bd")


