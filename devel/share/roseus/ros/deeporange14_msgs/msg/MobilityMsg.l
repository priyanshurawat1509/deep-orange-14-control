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
  :slots (_header _seq _stamp _left_torque _right_torque _au_state _brake_enable ))

(defmethod deeporange14_msgs::MobilityMsg
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:seq __seq) 0)
    ((:stamp __stamp) (instance ros::time :init))
    ((:left_torque __left_torque) 0.0)
    ((:right_torque __right_torque) 0.0)
    ((:au_state __au_state) 0)
    ((:brake_enable __brake_enable) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _seq (round __seq))
   (setq _stamp __stamp)
   (setq _left_torque (float __left_torque))
   (setq _right_torque (float __right_torque))
   (setq _au_state (round __au_state))
   (setq _brake_enable __brake_enable)
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
  (:left_torque
   (&optional __left_torque)
   (if __left_torque (setq _left_torque __left_torque)) _left_torque)
  (:right_torque
   (&optional __right_torque)
   (if __right_torque (setq _right_torque __right_torque)) _right_torque)
  (:au_state
   (&optional __au_state)
   (if __au_state (setq _au_state __au_state)) _au_state)
  (:brake_enable
   (&optional (__brake_enable :null))
   (if (not (eq __brake_enable :null)) (setq _brake_enable __brake_enable)) _brake_enable)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _seq
    4
    ;; time _stamp
    8
    ;; float64 _left_torque
    8
    ;; float64 _right_torque
    8
    ;; uint8 _au_state
    1
    ;; bool _brake_enable
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
     ;; float64 _left_torque
       (sys::poke _left_torque (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _right_torque
       (sys::poke _right_torque (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _au_state
       (write-byte _au_state s)
     ;; bool _brake_enable
       (if _brake_enable (write-byte -1 s) (write-byte 0 s))
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
   ;; float64 _left_torque
     (setq _left_torque (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _right_torque
     (setq _right_torque (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _au_state
     (setq _au_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _brake_enable
     (setq _brake_enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get deeporange14_msgs::MobilityMsg :md5sum-) "d380c00cdf73d1bf5d0bffc60363a2cb")
(setf (get deeporange14_msgs::MobilityMsg :datatype-) "deeporange14_msgs/MobilityMsg")
(setf (get deeporange14_msgs::MobilityMsg :definition-)
      "#This represents a vector in free space -- currently defined to hold the left and right track #velocities
Header header
  uint32 seq
  time stamp

float64 left_torque
float64 right_torque
uint8 au_state 
bool brake_enable
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



(provide :deeporange14_msgs/MobilityMsg "d380c00cdf73d1bf5d0bffc60363a2cb")


