;; Auto-generated. Do not edit!


(when (boundp 'deeporange14_msgs::AuStatusMsg)
  (if (not (find-package "DEEPORANGE14_MSGS"))
    (make-package "DEEPORANGE14_MSGS"))
  (shadow 'AuStatusMsg (find-package "DEEPORANGE14_MSGS")))
(unless (find-package "DEEPORANGE14_MSGS::AUSTATUSMSG")
  (make-package "DEEPORANGE14_MSGS::AUSTATUSMSG"))

(in-package "ROS")
;;//! \htmlinclude AuStatusMsg.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass deeporange14_msgs::AuStatusMsg
  :super ros::object
  :slots (_header _seq _stamp _measuredVx _measuredWz _rtkStatus _timesecVx _timesecWz _timesecRtk ))

(defmethod deeporange14_msgs::AuStatusMsg
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:seq __seq) 0)
    ((:stamp __stamp) (instance ros::time :init))
    ((:measuredVx __measuredVx) 0.0)
    ((:measuredWz __measuredWz) 0.0)
    ((:rtkStatus __rtkStatus) 0)
    ((:timesecVx __timesecVx) 0.0)
    ((:timesecWz __timesecWz) 0.0)
    ((:timesecRtk __timesecRtk) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _seq (round __seq))
   (setq _stamp __stamp)
   (setq _measuredVx (float __measuredVx))
   (setq _measuredWz (float __measuredWz))
   (setq _rtkStatus (round __rtkStatus))
   (setq _timesecVx (float __timesecVx))
   (setq _timesecWz (float __timesecWz))
   (setq _timesecRtk (float __timesecRtk))
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
  (:measuredVx
   (&optional __measuredVx)
   (if __measuredVx (setq _measuredVx __measuredVx)) _measuredVx)
  (:measuredWz
   (&optional __measuredWz)
   (if __measuredWz (setq _measuredWz __measuredWz)) _measuredWz)
  (:rtkStatus
   (&optional __rtkStatus)
   (if __rtkStatus (setq _rtkStatus __rtkStatus)) _rtkStatus)
  (:timesecVx
   (&optional __timesecVx)
   (if __timesecVx (setq _timesecVx __timesecVx)) _timesecVx)
  (:timesecWz
   (&optional __timesecWz)
   (if __timesecWz (setq _timesecWz __timesecWz)) _timesecWz)
  (:timesecRtk
   (&optional __timesecRtk)
   (if __timesecRtk (setq _timesecRtk __timesecRtk)) _timesecRtk)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _seq
    4
    ;; time _stamp
    8
    ;; float64 _measuredVx
    8
    ;; float64 _measuredWz
    8
    ;; uint8 _rtkStatus
    1
    ;; float64 _timesecVx
    8
    ;; float64 _timesecWz
    8
    ;; float64 _timesecRtk
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
     ;; float64 _measuredVx
       (sys::poke _measuredVx (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _measuredWz
       (sys::poke _measuredWz (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint8 _rtkStatus
       (write-byte _rtkStatus s)
     ;; float64 _timesecVx
       (sys::poke _timesecVx (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _timesecWz
       (sys::poke _timesecWz (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _timesecRtk
       (sys::poke _timesecRtk (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
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
   ;; float64 _measuredVx
     (setq _measuredVx (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _measuredWz
     (setq _measuredWz (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint8 _rtkStatus
     (setq _rtkStatus (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float64 _timesecVx
     (setq _timesecVx (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _timesecWz
     (setq _timesecWz (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _timesecRtk
     (setq _timesecRtk (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get deeporange14_msgs::AuStatusMsg :md5sum-) "91fca660e197d2c15adbbf497ed3e284")
(setf (get deeporange14_msgs::AuStatusMsg :datatype-) "deeporange14_msgs/AuStatusMsg")
(setf (get deeporange14_msgs::AuStatusMsg :definition-)
      "# Measured velocities from gps; Vx -> novatel/odom; Wz -> novatel/corrimu 
Header header
  uint32 seq
  time stamp
float64 measuredVx
float64 measuredWz
uint8 rtkStatus
float64 timesecVx
float64 timesecWz
float64 timesecRtk
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



(provide :deeporange14_msgs/AuStatusMsg "91fca660e197d2c15adbbf497ed3e284")


