;; Auto-generated. Do not edit!


(when (boundp 'pdu_msgs::RelayCommand)
  (if (not (find-package "PDU_MSGS"))
    (make-package "PDU_MSGS"))
  (shadow 'RelayCommand (find-package "PDU_MSGS")))
(unless (find-package "PDU_MSGS::RELAYCOMMAND")
  (make-package "PDU_MSGS::RELAYCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude RelayCommand.msg.html


(defclass pdu_msgs::RelayCommand
  :super ros::object
  :slots (_relay_1 _relay_2 _relay_3 _relay_4 _relay_5 _relay_6 _relay_7 _relay_8 ))

(defmethod pdu_msgs::RelayCommand
  (:init
   (&key
    ((:relay_1 __relay_1) (instance pdu_msgs::RelayState :init))
    ((:relay_2 __relay_2) (instance pdu_msgs::RelayState :init))
    ((:relay_3 __relay_3) (instance pdu_msgs::RelayState :init))
    ((:relay_4 __relay_4) (instance pdu_msgs::RelayState :init))
    ((:relay_5 __relay_5) (instance pdu_msgs::RelayState :init))
    ((:relay_6 __relay_6) (instance pdu_msgs::RelayState :init))
    ((:relay_7 __relay_7) (instance pdu_msgs::RelayState :init))
    ((:relay_8 __relay_8) (instance pdu_msgs::RelayState :init))
    )
   (send-super :init)
   (setq _relay_1 __relay_1)
   (setq _relay_2 __relay_2)
   (setq _relay_3 __relay_3)
   (setq _relay_4 __relay_4)
   (setq _relay_5 __relay_5)
   (setq _relay_6 __relay_6)
   (setq _relay_7 __relay_7)
   (setq _relay_8 __relay_8)
   self)
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
    ;; pdu_msgs/RelayState _relay_1
    (send _relay_1 :serialization-length)
    ;; pdu_msgs/RelayState _relay_2
    (send _relay_2 :serialization-length)
    ;; pdu_msgs/RelayState _relay_3
    (send _relay_3 :serialization-length)
    ;; pdu_msgs/RelayState _relay_4
    (send _relay_4 :serialization-length)
    ;; pdu_msgs/RelayState _relay_5
    (send _relay_5 :serialization-length)
    ;; pdu_msgs/RelayState _relay_6
    (send _relay_6 :serialization-length)
    ;; pdu_msgs/RelayState _relay_7
    (send _relay_7 :serialization-length)
    ;; pdu_msgs/RelayState _relay_8
    (send _relay_8 :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; pdu_msgs/RelayState _relay_1
       (send _relay_1 :serialize s)
     ;; pdu_msgs/RelayState _relay_2
       (send _relay_2 :serialize s)
     ;; pdu_msgs/RelayState _relay_3
       (send _relay_3 :serialize s)
     ;; pdu_msgs/RelayState _relay_4
       (send _relay_4 :serialize s)
     ;; pdu_msgs/RelayState _relay_5
       (send _relay_5 :serialize s)
     ;; pdu_msgs/RelayState _relay_6
       (send _relay_6 :serialize s)
     ;; pdu_msgs/RelayState _relay_7
       (send _relay_7 :serialize s)
     ;; pdu_msgs/RelayState _relay_8
       (send _relay_8 :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; pdu_msgs/RelayState _relay_1
     (send _relay_1 :deserialize buf ptr-) (incf ptr- (send _relay_1 :serialization-length))
   ;; pdu_msgs/RelayState _relay_2
     (send _relay_2 :deserialize buf ptr-) (incf ptr- (send _relay_2 :serialization-length))
   ;; pdu_msgs/RelayState _relay_3
     (send _relay_3 :deserialize buf ptr-) (incf ptr- (send _relay_3 :serialization-length))
   ;; pdu_msgs/RelayState _relay_4
     (send _relay_4 :deserialize buf ptr-) (incf ptr- (send _relay_4 :serialization-length))
   ;; pdu_msgs/RelayState _relay_5
     (send _relay_5 :deserialize buf ptr-) (incf ptr- (send _relay_5 :serialization-length))
   ;; pdu_msgs/RelayState _relay_6
     (send _relay_6 :deserialize buf ptr-) (incf ptr- (send _relay_6 :serialization-length))
   ;; pdu_msgs/RelayState _relay_7
     (send _relay_7 :deserialize buf ptr-) (incf ptr- (send _relay_7 :serialization-length))
   ;; pdu_msgs/RelayState _relay_8
     (send _relay_8 :deserialize buf ptr-) (incf ptr- (send _relay_8 :serialization-length))
   ;;
   self)
  )

(setf (get pdu_msgs::RelayCommand :md5sum-) "2244ce8be7c2912abb85c303db68d2b3")
(setf (get pdu_msgs::RelayCommand :datatype-) "pdu_msgs/RelayCommand")
(setf (get pdu_msgs::RelayCommand :definition-)
      "# Relay state enumerations

RelayState relay_1
RelayState relay_2
RelayState relay_3
RelayState relay_4
RelayState relay_5
RelayState relay_6
RelayState relay_7
RelayState relay_8

================================================================================
MSG: pdu_msgs/RelayState
uint8 value

# MAINTAIN_STATE items perform the same function.
uint8 RELAY_OFF = 0
uint8 RELAY_ON = 1
uint8 MAINTAIN_STATE = 2

")



(provide :pdu_msgs/RelayCommand "2244ce8be7c2912abb85c303db68d2b3")


