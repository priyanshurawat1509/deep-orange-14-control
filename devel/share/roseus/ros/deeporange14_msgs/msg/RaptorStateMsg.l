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
  :slots (_header _system_state _dbw_mode _speed_state _log_cmd _brk_Lpres _brk_Rpres ))

(defmethod deeporange14_msgs::RaptorStateMsg
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:system_state __system_state) 0)
    ((:dbw_mode __dbw_mode) 0)
    ((:speed_state __speed_state) 0)
    ((:log_cmd __log_cmd) nil)
    ((:brk_Lpres __brk_Lpres) 0.0)
    ((:brk_Rpres __brk_Rpres) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _system_state (round __system_state))
   (setq _dbw_mode (round __dbw_mode))
   (setq _speed_state (round __speed_state))
   (setq _log_cmd __log_cmd)
   (setq _brk_Lpres (float __brk_Lpres))
   (setq _brk_Rpres (float __brk_Rpres))
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
  (:speed_state
   (&optional __speed_state)
   (if __speed_state (setq _speed_state __speed_state)) _speed_state)
  (:log_cmd
   (&optional (__log_cmd :null))
   (if (not (eq __log_cmd :null)) (setq _log_cmd __log_cmd)) _log_cmd)
  (:brk_Lpres
   (&optional __brk_Lpres)
   (if __brk_Lpres (setq _brk_Lpres __brk_Lpres)) _brk_Lpres)
  (:brk_Rpres
   (&optional __brk_Rpres)
   (if __brk_Rpres (setq _brk_Rpres __brk_Rpres)) _brk_Rpres)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _system_state
    1
    ;; uint8 _dbw_mode
    1
    ;; uint8 _speed_state
    1
    ;; bool _log_cmd
    1
    ;; float64 _brk_Lpres
    8
    ;; float64 _brk_Rpres
    8
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
     ;; uint8 _speed_state
       (write-byte _speed_state s)
     ;; bool _log_cmd
       (if _log_cmd (write-byte -1 s) (write-byte 0 s))
     ;; float64 _brk_Lpres
       (sys::poke _brk_Lpres (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _brk_Rpres
       (sys::poke _brk_Rpres (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
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
   ;; uint8 _speed_state
     (setq _speed_state (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; bool _log_cmd
     (setq _log_cmd (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _brk_Lpres
     (setq _brk_Lpres (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _brk_Rpres
     (setq _brk_Rpres (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get deeporange14_msgs::RaptorStateMsg :md5sum-) "9c2bf3014b9a7a42f7e5e8b26caa8e03")
(setf (get deeporange14_msgs::RaptorStateMsg :datatype-) "deeporange14_msgs/RaptorStateMsg")
(setf (get deeporange14_msgs::RaptorStateMsg :definition-)
      "Header header

uint8 system_state
uint8 dbw_mode
uint8 speed_state
bool log_cmd
float64 brk_Lpres 
float64 brk_Rpres

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



(provide :deeporange14_msgs/RaptorStateMsg "9c2bf3014b9a7a42f7e5e8b26caa8e03")


