;; Auto-generated. Do not edit!


(when (boundp 'pdu_msgs::RelayReport)
  (if (not (find-package "PDU_MSGS"))
    (make-package "PDU_MSGS"))
  (shadow 'RelayReport (find-package "PDU_MSGS")))
(unless (find-package "PDU_MSGS::RELAYREPORT")
  (make-package "PDU_MSGS::RELAYREPORT"))

(in-package "ROS")
;;//! \htmlinclude RelayReport.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pdu_msgs::RelayReport
  :super ros::object
  :slots (_header _GridAddress _relay_1 _relay_2 _relay_3 _relay_4 _relay_5 _relay_6 _relay_7 _relay_8 ))

(defmethod pdu_msgs::RelayReport
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:GridAddress __GridAddress) 0)
    ((:relay_1 __relay_1) (instance pdu_msgs::RelayStatus :init))
    ((:relay_2 __relay_2) (instance pdu_msgs::RelayStatus :init))
    ((:relay_3 __relay_3) (instance pdu_msgs::RelayStatus :init))
    ((:relay_4 __relay_4) (instance pdu_msgs::RelayStatus :init))
    ((:relay_5 __relay_5) (instance pdu_msgs::RelayStatus :init))
    ((:relay_6 __relay_6) (instance pdu_msgs::RelayStatus :init))
    ((:relay_7 __relay_7) (instance pdu_msgs::RelayStatus :init))
    ((:relay_8 __relay_8) (instance pdu_msgs::RelayStatus :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _GridAddress (round __GridAddress))
   (setq _relay_1 __relay_1)
   (setq _relay_2 __relay_2)
   (setq _relay_3 __relay_3)
   (setq _relay_4 __relay_4)
   (setq _relay_5 __relay_5)
   (setq _relay_6 __relay_6)
   (setq _relay_7 __relay_7)
   (setq _relay_8 __relay_8)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:GridAddress
   (&optional __GridAddress)
   (if __GridAddress (setq _GridAddress __GridAddress)) _GridAddress)
  (:relay_1
   (&rest __relay_1)
   (if (keywordp (car __relay_1))
       (send* _relay_1 __relay_1)
     (progn
       (if __relay_1 (setq _relay_1 (car __relay_1)))
       _relay_1)))
  (:relay_2
   (&rest __relay_2)
   (if (keywordp (car __relay_2))
       (send* _relay_2 __relay_2)
     (progn
       (if __relay_2 (setq _relay_2 (car __relay_2)))
       _relay_2)))
  (:relay_3
   (&rest __relay_3)
   (if (keywordp (car __relay_3))
       (send* _relay_3 __relay_3)
     (progn
       (if __relay_3 (setq _relay_3 (car __relay_3)))
       _relay_3)))
  (:relay_4
   (&rest __relay_4)
   (if (keywordp (car __relay_4))
       (send* _relay_4 __relay_4)
     (progn
       (if __relay_4 (setq _relay_4 (car __relay_4)))
       _relay_4)))
  (:relay_5
   (&rest __relay_5)
   (if (keywordp (car __relay_5))
       (send* _relay_5 __relay_5)
     (progn
       (if __relay_5 (setq _relay_5 (car __relay_5)))
       _relay_5)))
  (:relay_6
   (&rest __relay_6)
   (if (keywordp (car __relay_6))
       (send* _relay_6 __relay_6)
     (progn
       (if __relay_6 (setq _relay_6 (car __relay_6)))
       _relay_6)))
  (:relay_7
   (&rest __relay_7)
   (if (keywordp (car __relay_7))
       (send* _relay_7 __relay_7)
     (progn
       (if __relay_7 (setq _relay_7 (car __relay_7)))
       _relay_7)))
  (:relay_8
   (&rest __relay_8)
   (if (keywordp (car __relay_8))
       (send* _relay_8 __relay_8)
     (progn
       (if __relay_8 (setq _relay_8 (car __relay_8)))
       _relay_8)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _GridAddress
    1
    ;; pdu_msgs/RelayStatus _relay_1
    (send _relay_1 :serialization-length)
    ;; pdu_msgs/RelayStatus _relay_2
    (send _relay_2 :serialization-length)
    ;; pdu_msgs/RelayStatus _relay_3
    (send _relay_3 :serialization-length)
    ;; pdu_msgs/RelayStatus _relay_4
    (send _relay_4 :serialization-length)
    ;; pdu_msgs/RelayStatus _relay_5
    (send _relay_5 :serialization-length)
    ;; pdu_msgs/RelayStatus _relay_6
    (send _relay_6 :serialization-length)
    ;; pdu_msgs/RelayStatus _relay_7
    (send _relay_7 :serialization-length)
    ;; pdu_msgs/RelayStatus _relay_8
    (send _relay_8 :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _GridAddress
       (write-byte _GridAddress s)
     ;; pdu_msgs/RelayStatus _relay_1
       (send _relay_1 :serialize s)
     ;; pdu_msgs/RelayStatus _relay_2
       (send _relay_2 :serialize s)
     ;; pdu_msgs/RelayStatus _relay_3
       (send _relay_3 :serialize s)
     ;; pdu_msgs/RelayStatus _relay_4
       (send _relay_4 :serialize s)
     ;; pdu_msgs/RelayStatus _relay_5
       (send _relay_5 :serialize s)
     ;; pdu_msgs/RelayStatus _relay_6
       (send _relay_6 :serialize s)
     ;; pdu_msgs/RelayStatus _relay_7
       (send _relay_7 :serialize s)
     ;; pdu_msgs/RelayStatus _relay_8
       (send _relay_8 :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _GridAddress
     (setq _GridAddress (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; pdu_msgs/RelayStatus _relay_1
     (send _relay_1 :deserialize buf ptr-) (incf ptr- (send _relay_1 :serialization-length))
   ;; pdu_msgs/RelayStatus _relay_2
     (send _relay_2 :deserialize buf ptr-) (incf ptr- (send _relay_2 :serialization-length))
   ;; pdu_msgs/RelayStatus _relay_3
     (send _relay_3 :deserialize buf ptr-) (incf ptr- (send _relay_3 :serialization-length))
   ;; pdu_msgs/RelayStatus _relay_4
     (send _relay_4 :deserialize buf ptr-) (incf ptr- (send _relay_4 :serialization-length))
   ;; pdu_msgs/RelayStatus _relay_5
     (send _relay_5 :deserialize buf ptr-) (incf ptr- (send _relay_5 :serialization-length))
   ;; pdu_msgs/RelayStatus _relay_6
     (send _relay_6 :deserialize buf ptr-) (incf ptr- (send _relay_6 :serialization-length))
   ;; pdu_msgs/RelayStatus _relay_7
     (send _relay_7 :deserialize buf ptr-) (incf ptr- (send _relay_7 :serialization-length))
   ;; pdu_msgs/RelayStatus _relay_8
     (send _relay_8 :deserialize buf ptr-) (incf ptr- (send _relay_8 :serialization-length))
   ;;
   self)
  )

(setf (get pdu_msgs::RelayReport :md5sum-) "5013cdfb5b7f5657dbdcb6339106d711")
(setf (get pdu_msgs::RelayReport :datatype-) "pdu_msgs/RelayReport")
(setf (get pdu_msgs::RelayReport :definition-)
      "Header header

# Fuse status enumeration
uint8 GridAddress

RelayStatus relay_1
RelayStatus relay_2
RelayStatus relay_3
RelayStatus relay_4
RelayStatus relay_5
RelayStatus relay_6
RelayStatus relay_7
RelayStatus relay_8

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

================================================================================
MSG: pdu_msgs/RelayStatus
uint8 value

uint8 OK = 0
uint8 RELAY_COIL_OPEN = 1
uint8 RELAY_COIL_SHORTED = 2
uint8 NORM_OPEN_RELAY_OPEN = 3
uint8 NORM_CLOSED_RELAY_OPEN = 4
uint8 COIL_NOT_POWERED = 5
uint8 NORM_OPEN_RELAY_SHORTED = 6
uint8 NORM_CLOSED_RELAY_SHORTED = 7
uint8 RESERVED_01 = 8
uint8 RESERVED_02 = 9
uint8 RESERVED_03 = 10
uint8 HIGH_SIDE_FAULT = 11
uint8 HIGH_SIDE_OPEN_LOAD = 12
uint8 HIGH_SIDE_OVER_VOLTAGE = 13
uint8 RESERVED_04 = 14
uint8 RELAY_LOCATION_NOT_USED = 15

")



(provide :pdu_msgs/RelayReport "5013cdfb5b7f5657dbdcb6339106d711")


