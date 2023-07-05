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
  :slots (_header _left_torque _right_torque _left_brkPressure _right_brkPressure _au_state _brake_enable ))

(defmethod deeporange14_msgs::MobilityMsg
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:left_torque __left_torque) 0.0)
    ((:right_torque __right_torque) 0.0)
    ((:left_brkPressure __left_brkPressure) 0)
    ((:right_brkPressure __right_brkPressure) 0)
    ((:au_state __au_state) 0)
    ((:brake_enable __brake_enable) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _left_torque (float __left_torque))
   (setq _right_torque (float __right_torque))
   (setq _left_brkPressure (round __left_brkPressure))
   (setq _right_brkPressure (round __right_brkPressure))
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
  (:left_torque
   (&optional __left_torque)
   (if __left_torque (setq _left_torque __left_torque)) _left_torque)
  (:right_torque
   (&optional __right_torque)
   (if __right_torque (setq _right_torque __right_torque)) _right_torque)
  (:left_brkPressure
   (&optional __left_brkPressure)
   (if __left_brkPressure (setq _left_brkPressure __left_brkPressure)) _left_brkPressure)
  (:right_brkPressure
   (&optional __right_brkPressure)
   (if __right_brkPressure (setq _right_brkPressure __right_brkPressure)) _right_brkPressure)
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
    ;; float64 _left_torque
    8
    ;; float64 _right_torque
    8
    ;; uint8 _left_brkPressure
    1
    ;; uint8 _right_brkPressure
    1
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
     ;; float64 _left_torque
       (sys::poke _left_torque (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _right_torque
       (sys::poke _right_torque (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _left_brkPressure
       (write-byte _left_brkPressure s)
     ;; uint8 _right_brkPressure
       (write-byte _right_brkPressure s)
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
   ;; float64 _left_torque
     (setq _left_torque (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _right_torque
     (setq _right_torque (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _left_brkPressure
     (setq _left_brkPressure (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _right_brkPressure
     (setq _right_brkPressure (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _au_state
     (setq _au_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _brake_enable
     (setq _brake_enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get deeporange14_msgs::MobilityMsg :md5sum-) "d0eaaf6b23ead9b732ddff611e74f7ec")
(setf (get deeporange14_msgs::MobilityMsg :datatype-) "deeporange14_msgs/MobilityMsg")
(setf (get deeporange14_msgs::MobilityMsg :definition-)
      "#This represents a vector in free space -- currently defined to hold the left and right track #velocities
Header header

float64 left_torque
float64 right_torque
uint8 left_brkPressure
uint8 right_brkPressure
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



(provide :deeporange14_msgs/MobilityMsg "d0eaaf6b23ead9b732ddff611e74f7ec")


