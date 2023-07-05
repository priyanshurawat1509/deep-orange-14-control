;; Auto-generated. Do not edit!


(when (boundp 'deeporange14_msgs::RaptorStateMsg)
  (if (not (find-package "DEEPORANGE14_MSGS"))
    (make-package "DEEPORANGE14_MSGS"))
  (shadow 'RaptorStateMsg (find-package "DEEPORANGE14_MSGS")))
(unless (find-package "DEEPORANGE14_MSGS::RAPTORSTATEMSG")
  (make-package "DEEPORANGE14_MSGS::RAPTORSTATEMSG"))

(in-package "ROS")
;;//! \htmlinclude RaptorStateMsg.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass deeporange14_msgs::RaptorStateMsg
  :super ros::object
  :slots (_header _system_state _dbw_mode _brake_enable_status ))

(defmethod deeporange14_msgs::RaptorStateMsg
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:system_state __system_state) 0)
    ((:dbw_mode __dbw_mode) 0)
    ((:brake_enable_status __brake_enable_status) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _system_state (round __system_state))
   (setq _dbw_mode (round __dbw_mode))
   (setq _brake_enable_status __brake_enable_status)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:system_state
   (&optional __system_state)
   (if __system_state (setq _system_state __system_state)) _system_state)
  (:dbw_mode
   (&optional __dbw_mode)
   (if __dbw_mode (setq _dbw_mode __dbw_mode)) _dbw_mode)
  (:brake_enable_status
   (&optional (__brake_enable_status :null))
   (if (not (eq __brake_enable_status :null)) (setq _brake_enable_status __brake_enable_status)) _brake_enable_status)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _system_state
    1
    ;; uint8 _dbw_mode
    1
    ;; bool _brake_enable_status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _system_state
       (write-byte _system_state s)
     ;; uint8 _dbw_mode
       (write-byte _dbw_mode s)
     ;; bool _brake_enable_status
       (if _brake_enable_status (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _system_state
     (setq _system_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _dbw_mode
     (setq _dbw_mode (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _brake_enable_status
     (setq _brake_enable_status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get deeporange14_msgs::RaptorStateMsg :md5sum-) "ae18ce3d33a6f151cb9a6cb40431fc15")
(setf (get deeporange14_msgs::RaptorStateMsg :datatype-) "deeporange14_msgs/RaptorStateMsg")
(setf (get deeporange14_msgs::RaptorStateMsg :definition-)
      "Header header

uint8 system_state
uint8 dbw_mode
bool brake_enable_status

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



(provide :deeporange14_msgs/RaptorStateMsg "ae18ce3d33a6f151cb9a6cb40431fc15")


