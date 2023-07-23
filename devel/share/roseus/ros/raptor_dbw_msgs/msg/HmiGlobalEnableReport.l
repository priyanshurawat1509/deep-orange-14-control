;; Auto-generated. Do not edit!


(when (boundp 'raptor_dbw_msgs::HmiGlobalEnableReport)
  (if (not (find-package "RAPTOR_DBW_MSGS"))
    (make-package "RAPTOR_DBW_MSGS"))
  (shadow 'HmiGlobalEnableReport (find-package "RAPTOR_DBW_MSGS")))
(unless (find-package "RAPTOR_DBW_MSGS::HMIGLOBALENABLEREPORT")
  (make-package "RAPTOR_DBW_MSGS::HMIGLOBALENABLEREPORT"))

(in-package "ROS")
;;//! \htmlinclude HmiGlobalEnableReport.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass raptor_dbw_msgs::HmiGlobalEnableReport
  :super ros::object
  :slots (_header _enable_request _disable_request _checksum _ecu_build_number _rolling_counter ))

(defmethod raptor_dbw_msgs::HmiGlobalEnableReport
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:enable_request __enable_request) nil)
    ((:disable_request __disable_request) nil)
    ((:checksum __checksum) 0)
    ((:ecu_build_number __ecu_build_number) 0)
    ((:rolling_counter __rolling_counter) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _enable_request __enable_request)
   (setq _disable_request __disable_request)
   (setq _checksum (round __checksum))
   (setq _ecu_build_number (round __ecu_build_number))
   (setq _rolling_counter (round __rolling_counter))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:enable_request
   (&optional (__enable_request :null))
   (if (not (eq __enable_request :null)) (setq _enable_request __enable_request)) _enable_request)
  (:disable_request
   (&optional (__disable_request :null))
   (if (not (eq __disable_request :null)) (setq _disable_request __disable_request)) _disable_request)
  (:checksum
   (&optional __checksum)
   (if __checksum (setq _checksum __checksum)) _checksum)
  (:ecu_build_number
   (&optional __ecu_build_number)
   (if __ecu_build_number (setq _ecu_build_number __ecu_build_number)) _ecu_build_number)
  (:rolling_counter
   (&optional __rolling_counter)
   (if __rolling_counter (setq _rolling_counter __rolling_counter)) _rolling_counter)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _enable_request
    1
    ;; bool _disable_request
    1
    ;; uint8 _checksum
    1
    ;; uint16 _ecu_build_number
    2
    ;; uint8 _rolling_counter
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _enable_request
       (if _enable_request (write-byte -1 s) (write-byte 0 s))
     ;; bool _disable_request
       (if _disable_request (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _checksum
       (write-byte _checksum s)
     ;; uint16 _ecu_build_number
       (write-word _ecu_build_number s)
     ;; uint8 _rolling_counter
       (write-byte _rolling_counter s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _enable_request
     (setq _enable_request (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _disable_request
     (setq _disable_request (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _checksum
     (setq _checksum (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _ecu_build_number
     (setq _ecu_build_number (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _rolling_counter
     (setq _rolling_counter (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get raptor_dbw_msgs::HmiGlobalEnableReport :md5sum-) "29d00e37d7749f78ca339d3a70968c0e")
(setf (get raptor_dbw_msgs::HmiGlobalEnableReport :datatype-) "raptor_dbw_msgs/HmiGlobalEnableReport")
(setf (get raptor_dbw_msgs::HmiGlobalEnableReport :definition-)
      "Header header

bool enable_request

bool disable_request

uint8 checksum

uint16 ecu_build_number

uint8 rolling_counter
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



(provide :raptor_dbw_msgs/HmiGlobalEnableReport "29d00e37d7749f78ca339d3a70968c0e")


