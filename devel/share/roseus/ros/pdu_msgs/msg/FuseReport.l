;; Auto-generated. Do not edit!


(when (boundp 'pdu_msgs::FuseReport)
  (if (not (find-package "PDU_MSGS"))
    (make-package "PDU_MSGS"))
  (shadow 'FuseReport (find-package "PDU_MSGS")))
(unless (find-package "PDU_MSGS::FUSEREPORT")
  (make-package "PDU_MSGS::FUSEREPORT"))

(in-package "ROS")
;;//! \htmlinclude FuseReport.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass pdu_msgs::FuseReport
  :super ros::object
  :slots (_header _GridAddress _fuse_1 _fuse_2 _fuse_3 _fuse_4 _fuse_5 _fuse_6 _fuse_7 _fuse_8 _fuse_9 _fuse_10 _fuse_11 _fuse_12 _fuse_13 _fuse_14 _fuse_15 _fuse_16 ))

(defmethod pdu_msgs::FuseReport
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:GridAddress __GridAddress) 0)
    ((:fuse_1 __fuse_1) (instance pdu_msgs::FuseStatus :init))
    ((:fuse_2 __fuse_2) (instance pdu_msgs::FuseStatus :init))
    ((:fuse_3 __fuse_3) (instance pdu_msgs::FuseStatus :init))
    ((:fuse_4 __fuse_4) (instance pdu_msgs::FuseStatus :init))
    ((:fuse_5 __fuse_5) (instance pdu_msgs::FuseStatus :init))
    ((:fuse_6 __fuse_6) (instance pdu_msgs::FuseStatus :init))
    ((:fuse_7 __fuse_7) (instance pdu_msgs::FuseStatus :init))
    ((:fuse_8 __fuse_8) (instance pdu_msgs::FuseStatus :init))
    ((:fuse_9 __fuse_9) (instance pdu_msgs::FuseStatus :init))
    ((:fuse_10 __fuse_10) (instance pdu_msgs::FuseStatus :init))
    ((:fuse_11 __fuse_11) (instance pdu_msgs::FuseStatus :init))
    ((:fuse_12 __fuse_12) (instance pdu_msgs::FuseStatus :init))
    ((:fuse_13 __fuse_13) (instance pdu_msgs::FuseStatus :init))
    ((:fuse_14 __fuse_14) (instance pdu_msgs::FuseStatus :init))
    ((:fuse_15 __fuse_15) (instance pdu_msgs::FuseStatus :init))
    ((:fuse_16 __fuse_16) (instance pdu_msgs::FuseStatus :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _GridAddress (round __GridAddress))
   (setq _fuse_1 __fuse_1)
   (setq _fuse_2 __fuse_2)
   (setq _fuse_3 __fuse_3)
   (setq _fuse_4 __fuse_4)
   (setq _fuse_5 __fuse_5)
   (setq _fuse_6 __fuse_6)
   (setq _fuse_7 __fuse_7)
   (setq _fuse_8 __fuse_8)
   (setq _fuse_9 __fuse_9)
   (setq _fuse_10 __fuse_10)
   (setq _fuse_11 __fuse_11)
   (setq _fuse_12 __fuse_12)
   (setq _fuse_13 __fuse_13)
   (setq _fuse_14 __fuse_14)
   (setq _fuse_15 __fuse_15)
   (setq _fuse_16 __fuse_16)
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
  (:fuse_1
   (&rest __fuse_1)
   (if (keywordp (car __fuse_1))
       (send* _fuse_1 __fuse_1)
     (progn
       (if __fuse_1 (setq _fuse_1 (car __fuse_1)))
       _fuse_1)))
  (:fuse_2
   (&rest __fuse_2)
   (if (keywordp (car __fuse_2))
       (send* _fuse_2 __fuse_2)
     (progn
       (if __fuse_2 (setq _fuse_2 (car __fuse_2)))
       _fuse_2)))
  (:fuse_3
   (&rest __fuse_3)
   (if (keywordp (car __fuse_3))
       (send* _fuse_3 __fuse_3)
     (progn
       (if __fuse_3 (setq _fuse_3 (car __fuse_3)))
       _fuse_3)))
  (:fuse_4
   (&rest __fuse_4)
   (if (keywordp (car __fuse_4))
       (send* _fuse_4 __fuse_4)
     (progn
       (if __fuse_4 (setq _fuse_4 (car __fuse_4)))
       _fuse_4)))
  (:fuse_5
   (&rest __fuse_5)
   (if (keywordp (car __fuse_5))
       (send* _fuse_5 __fuse_5)
     (progn
       (if __fuse_5 (setq _fuse_5 (car __fuse_5)))
       _fuse_5)))
  (:fuse_6
   (&rest __fuse_6)
   (if (keywordp (car __fuse_6))
       (send* _fuse_6 __fuse_6)
     (progn
       (if __fuse_6 (setq _fuse_6 (car __fuse_6)))
       _fuse_6)))
  (:fuse_7
   (&rest __fuse_7)
   (if (keywordp (car __fuse_7))
       (send* _fuse_7 __fuse_7)
     (progn
       (if __fuse_7 (setq _fuse_7 (car __fuse_7)))
       _fuse_7)))
  (:fuse_8
   (&rest __fuse_8)
   (if (keywordp (car __fuse_8))
       (send* _fuse_8 __fuse_8)
     (progn
       (if __fuse_8 (setq _fuse_8 (car __fuse_8)))
       _fuse_8)))
  (:fuse_9
   (&rest __fuse_9)
   (if (keywordp (car __fuse_9))
       (send* _fuse_9 __fuse_9)
     (progn
       (if __fuse_9 (setq _fuse_9 (car __fuse_9)))
       _fuse_9)))
  (:fuse_10
   (&rest __fuse_10)
   (if (keywordp (car __fuse_10))
       (send* _fuse_10 __fuse_10)
     (progn
       (if __fuse_10 (setq _fuse_10 (car __fuse_10)))
       _fuse_10)))
  (:fuse_11
   (&rest __fuse_11)
   (if (keywordp (car __fuse_11))
       (send* _fuse_11 __fuse_11)
     (progn
       (if __fuse_11 (setq _fuse_11 (car __fuse_11)))
       _fuse_11)))
  (:fuse_12
   (&rest __fuse_12)
   (if (keywordp (car __fuse_12))
       (send* _fuse_12 __fuse_12)
     (progn
       (if __fuse_12 (setq _fuse_12 (car __fuse_12)))
       _fuse_12)))
  (:fuse_13
   (&rest __fuse_13)
   (if (keywordp (car __fuse_13))
       (send* _fuse_13 __fuse_13)
     (progn
       (if __fuse_13 (setq _fuse_13 (car __fuse_13)))
       _fuse_13)))
  (:fuse_14
   (&rest __fuse_14)
   (if (keywordp (car __fuse_14))
       (send* _fuse_14 __fuse_14)
     (progn
       (if __fuse_14 (setq _fuse_14 (car __fuse_14)))
       _fuse_14)))
  (:fuse_15
   (&rest __fuse_15)
   (if (keywordp (car __fuse_15))
       (send* _fuse_15 __fuse_15)
     (progn
       (if __fuse_15 (setq _fuse_15 (car __fuse_15)))
       _fuse_15)))
  (:fuse_16
   (&rest __fuse_16)
   (if (keywordp (car __fuse_16))
       (send* _fuse_16 __fuse_16)
     (progn
       (if __fuse_16 (setq _fuse_16 (car __fuse_16)))
       _fuse_16)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _GridAddress
    1
    ;; pdu_msgs/FuseStatus _fuse_1
    (send _fuse_1 :serialization-length)
    ;; pdu_msgs/FuseStatus _fuse_2
    (send _fuse_2 :serialization-length)
    ;; pdu_msgs/FuseStatus _fuse_3
    (send _fuse_3 :serialization-length)
    ;; pdu_msgs/FuseStatus _fuse_4
    (send _fuse_4 :serialization-length)
    ;; pdu_msgs/FuseStatus _fuse_5
    (send _fuse_5 :serialization-length)
    ;; pdu_msgs/FuseStatus _fuse_6
    (send _fuse_6 :serialization-length)
    ;; pdu_msgs/FuseStatus _fuse_7
    (send _fuse_7 :serialization-length)
    ;; pdu_msgs/FuseStatus _fuse_8
    (send _fuse_8 :serialization-length)
    ;; pdu_msgs/FuseStatus _fuse_9
    (send _fuse_9 :serialization-length)
    ;; pdu_msgs/FuseStatus _fuse_10
    (send _fuse_10 :serialization-length)
    ;; pdu_msgs/FuseStatus _fuse_11
    (send _fuse_11 :serialization-length)
    ;; pdu_msgs/FuseStatus _fuse_12
    (send _fuse_12 :serialization-length)
    ;; pdu_msgs/FuseStatus _fuse_13
    (send _fuse_13 :serialization-length)
    ;; pdu_msgs/FuseStatus _fuse_14
    (send _fuse_14 :serialization-length)
    ;; pdu_msgs/FuseStatus _fuse_15
    (send _fuse_15 :serialization-length)
    ;; pdu_msgs/FuseStatus _fuse_16
    (send _fuse_16 :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _GridAddress
       (write-byte _GridAddress s)
     ;; pdu_msgs/FuseStatus _fuse_1
       (send _fuse_1 :serialize s)
     ;; pdu_msgs/FuseStatus _fuse_2
       (send _fuse_2 :serialize s)
     ;; pdu_msgs/FuseStatus _fuse_3
       (send _fuse_3 :serialize s)
     ;; pdu_msgs/FuseStatus _fuse_4
       (send _fuse_4 :serialize s)
     ;; pdu_msgs/FuseStatus _fuse_5
       (send _fuse_5 :serialize s)
     ;; pdu_msgs/FuseStatus _fuse_6
       (send _fuse_6 :serialize s)
     ;; pdu_msgs/FuseStatus _fuse_7
       (send _fuse_7 :serialize s)
     ;; pdu_msgs/FuseStatus _fuse_8
       (send _fuse_8 :serialize s)
     ;; pdu_msgs/FuseStatus _fuse_9
       (send _fuse_9 :serialize s)
     ;; pdu_msgs/FuseStatus _fuse_10
       (send _fuse_10 :serialize s)
     ;; pdu_msgs/FuseStatus _fuse_11
       (send _fuse_11 :serialize s)
     ;; pdu_msgs/FuseStatus _fuse_12
       (send _fuse_12 :serialize s)
     ;; pdu_msgs/FuseStatus _fuse_13
       (send _fuse_13 :serialize s)
     ;; pdu_msgs/FuseStatus _fuse_14
       (send _fuse_14 :serialize s)
     ;; pdu_msgs/FuseStatus _fuse_15
       (send _fuse_15 :serialize s)
     ;; pdu_msgs/FuseStatus _fuse_16
       (send _fuse_16 :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _GridAddress
     (setq _GridAddress (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; pdu_msgs/FuseStatus _fuse_1
     (send _fuse_1 :deserialize buf ptr-) (incf ptr- (send _fuse_1 :serialization-length))
   ;; pdu_msgs/FuseStatus _fuse_2
     (send _fuse_2 :deserialize buf ptr-) (incf ptr- (send _fuse_2 :serialization-length))
   ;; pdu_msgs/FuseStatus _fuse_3
     (send _fuse_3 :deserialize buf ptr-) (incf ptr- (send _fuse_3 :serialization-length))
   ;; pdu_msgs/FuseStatus _fuse_4
     (send _fuse_4 :deserialize buf ptr-) (incf ptr- (send _fuse_4 :serialization-length))
   ;; pdu_msgs/FuseStatus _fuse_5
     (send _fuse_5 :deserialize buf ptr-) (incf ptr- (send _fuse_5 :serialization-length))
   ;; pdu_msgs/FuseStatus _fuse_6
     (send _fuse_6 :deserialize buf ptr-) (incf ptr- (send _fuse_6 :serialization-length))
   ;; pdu_msgs/FuseStatus _fuse_7
     (send _fuse_7 :deserialize buf ptr-) (incf ptr- (send _fuse_7 :serialization-length))
   ;; pdu_msgs/FuseStatus _fuse_8
     (send _fuse_8 :deserialize buf ptr-) (incf ptr- (send _fuse_8 :serialization-length))
   ;; pdu_msgs/FuseStatus _fuse_9
     (send _fuse_9 :deserialize buf ptr-) (incf ptr- (send _fuse_9 :serialization-length))
   ;; pdu_msgs/FuseStatus _fuse_10
     (send _fuse_10 :deserialize buf ptr-) (incf ptr- (send _fuse_10 :serialization-length))
   ;; pdu_msgs/FuseStatus _fuse_11
     (send _fuse_11 :deserialize buf ptr-) (incf ptr- (send _fuse_11 :serialization-length))
   ;; pdu_msgs/FuseStatus _fuse_12
     (send _fuse_12 :deserialize buf ptr-) (incf ptr- (send _fuse_12 :serialization-length))
   ;; pdu_msgs/FuseStatus _fuse_13
     (send _fuse_13 :deserialize buf ptr-) (incf ptr- (send _fuse_13 :serialization-length))
   ;; pdu_msgs/FuseStatus _fuse_14
     (send _fuse_14 :deserialize buf ptr-) (incf ptr- (send _fuse_14 :serialization-length))
   ;; pdu_msgs/FuseStatus _fuse_15
     (send _fuse_15 :deserialize buf ptr-) (incf ptr- (send _fuse_15 :serialization-length))
   ;; pdu_msgs/FuseStatus _fuse_16
     (send _fuse_16 :deserialize buf ptr-) (incf ptr- (send _fuse_16 :serialization-length))
   ;;
   self)
  )

(setf (get pdu_msgs::FuseReport :md5sum-) "f4b7abf88dd96ecf35a3983dc0c26eef")
(setf (get pdu_msgs::FuseReport :datatype-) "pdu_msgs/FuseReport")
(setf (get pdu_msgs::FuseReport :definition-)
      "Header header

# Fuse status enumeration
uint8 GridAddress

FuseStatus fuse_1
FuseStatus fuse_2
FuseStatus fuse_3
FuseStatus fuse_4
FuseStatus fuse_5
FuseStatus fuse_6
FuseStatus fuse_7
FuseStatus fuse_8
FuseStatus fuse_9
FuseStatus fuse_10
FuseStatus fuse_11
FuseStatus fuse_12
FuseStatus fuse_13
FuseStatus fuse_14
FuseStatus fuse_15
FuseStatus fuse_16

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
MSG: pdu_msgs/FuseStatus
uint8 value

uint8 NO_FAULT = 0
uint8 BLOWN = 1
uint8 NOT_POWERED = 2
uint8 NOT_USED = 3

")



(provide :pdu_msgs/FuseReport "f4b7abf88dd96ecf35a3983dc0c26eef")


