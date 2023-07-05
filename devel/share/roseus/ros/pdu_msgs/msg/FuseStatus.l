;; Auto-generated. Do not edit!


(when (boundp 'pdu_msgs::FuseStatus)
  (if (not (find-package "PDU_MSGS"))
    (make-package "PDU_MSGS"))
  (shadow 'FuseStatus (find-package "PDU_MSGS")))
(unless (find-package "PDU_MSGS::FUSESTATUS")
  (make-package "PDU_MSGS::FUSESTATUS"))

(in-package "ROS")
;;//! \htmlinclude FuseStatus.msg.html


(intern "*NO_FAULT*" (find-package "PDU_MSGS::FUSESTATUS"))
(shadow '*NO_FAULT* (find-package "PDU_MSGS::FUSESTATUS"))
(defconstant pdu_msgs::FuseStatus::*NO_FAULT* 0)
(intern "*BLOWN*" (find-package "PDU_MSGS::FUSESTATUS"))
(shadow '*BLOWN* (find-package "PDU_MSGS::FUSESTATUS"))
(defconstant pdu_msgs::FuseStatus::*BLOWN* 1)
(intern "*NOT_POWERED*" (find-package "PDU_MSGS::FUSESTATUS"))
(shadow '*NOT_POWERED* (find-package "PDU_MSGS::FUSESTATUS"))
(defconstant pdu_msgs::FuseStatus::*NOT_POWERED* 2)
(intern "*NOT_USED*" (find-package "PDU_MSGS::FUSESTATUS"))
(shadow '*NOT_USED* (find-package "PDU_MSGS::FUSESTATUS"))
(defconstant pdu_msgs::FuseStatus::*NOT_USED* 3)

(defun pdu_msgs::FuseStatus-to-symbol (const)
  (cond
        ((= const 0) 'pdu_msgs::FuseStatus::*NO_FAULT*)
        ((= const 1) 'pdu_msgs::FuseStatus::*BLOWN*)
        ((= const 2) 'pdu_msgs::FuseStatus::*NOT_POWERED*)
        ((= const 3) 'pdu_msgs::FuseStatus::*NOT_USED*)
        (t nil)))

(defclass pdu_msgs::FuseStatus
  :super ros::object
  :slots (_value ))

(defmethod pdu_msgs::FuseStatus
  (:init
   (&key
    ((:value __value) 0)
    )
   (send-super :init)
   (setq _value (round __value))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; uint8 _value
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _value
       (write-byte _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _value
     (setq _value (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get pdu_msgs::FuseStatus :md5sum-) "04b2eb2c07f677f2fee7409032421fc8")
(setf (get pdu_msgs::FuseStatus :datatype-) "pdu_msgs/FuseStatus")
(setf (get pdu_msgs::FuseStatus :definition-)
      "uint8 value

uint8 NO_FAULT = 0
uint8 BLOWN = 1
uint8 NOT_POWERED = 2
uint8 NOT_USED = 3

")



(provide :pdu_msgs/FuseStatus "04b2eb2c07f677f2fee7409032421fc8")


