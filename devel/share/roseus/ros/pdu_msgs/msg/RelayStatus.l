;; Auto-generated. Do not edit!


(when (boundp 'pdu_msgs::RelayStatus)
  (if (not (find-package "PDU_MSGS"))
    (make-package "PDU_MSGS"))
  (shadow 'RelayStatus (find-package "PDU_MSGS")))
(unless (find-package "PDU_MSGS::RELAYSTATUS")
  (make-package "PDU_MSGS::RELAYSTATUS"))

(in-package "ROS")
;;//! \htmlinclude RelayStatus.msg.html


(intern "*OK*" (find-package "PDU_MSGS::RELAYSTATUS"))
(shadow '*OK* (find-package "PDU_MSGS::RELAYSTATUS"))
(defconstant pdu_msgs::RelayStatus::*OK* 0)
(intern "*RELAY_COIL_OPEN*" (find-package "PDU_MSGS::RELAYSTATUS"))
(shadow '*RELAY_COIL_OPEN* (find-package "PDU_MSGS::RELAYSTATUS"))
(defconstant pdu_msgs::RelayStatus::*RELAY_COIL_OPEN* 1)
(intern "*RELAY_COIL_SHORTED*" (find-package "PDU_MSGS::RELAYSTATUS"))
(shadow '*RELAY_COIL_SHORTED* (find-package "PDU_MSGS::RELAYSTATUS"))
(defconstant pdu_msgs::RelayStatus::*RELAY_COIL_SHORTED* 2)
(intern "*NORM_OPEN_RELAY_OPEN*" (find-package "PDU_MSGS::RELAYSTATUS"))
(shadow '*NORM_OPEN_RELAY_OPEN* (find-package "PDU_MSGS::RELAYSTATUS"))
(defconstant pdu_msgs::RelayStatus::*NORM_OPEN_RELAY_OPEN* 3)
(intern "*NORM_CLOSED_RELAY_OPEN*" (find-package "PDU_MSGS::RELAYSTATUS"))
(shadow '*NORM_CLOSED_RELAY_OPEN* (find-package "PDU_MSGS::RELAYSTATUS"))
(defconstant pdu_msgs::RelayStatus::*NORM_CLOSED_RELAY_OPEN* 4)
(intern "*COIL_NOT_POWERED*" (find-package "PDU_MSGS::RELAYSTATUS"))
(shadow '*COIL_NOT_POWERED* (find-package "PDU_MSGS::RELAYSTATUS"))
(defconstant pdu_msgs::RelayStatus::*COIL_NOT_POWERED* 5)
(intern "*NORM_OPEN_RELAY_SHORTED*" (find-package "PDU_MSGS::RELAYSTATUS"))
(shadow '*NORM_OPEN_RELAY_SHORTED* (find-package "PDU_MSGS::RELAYSTATUS"))
(defconstant pdu_msgs::RelayStatus::*NORM_OPEN_RELAY_SHORTED* 6)
(intern "*NORM_CLOSED_RELAY_SHORTED*" (find-package "PDU_MSGS::RELAYSTATUS"))
(shadow '*NORM_CLOSED_RELAY_SHORTED* (find-package "PDU_MSGS::RELAYSTATUS"))
(defconstant pdu_msgs::RelayStatus::*NORM_CLOSED_RELAY_SHORTED* 7)
(intern "*RESERVED_01*" (find-package "PDU_MSGS::RELAYSTATUS"))
(shadow '*RESERVED_01* (find-package "PDU_MSGS::RELAYSTATUS"))
(defconstant pdu_msgs::RelayStatus::*RESERVED_01* 8)
(intern "*RESERVED_02*" (find-package "PDU_MSGS::RELAYSTATUS"))
(shadow '*RESERVED_02* (find-package "PDU_MSGS::RELAYSTATUS"))
(defconstant pdu_msgs::RelayStatus::*RESERVED_02* 9)
(intern "*RESERVED_03*" (find-package "PDU_MSGS::RELAYSTATUS"))
(shadow '*RESERVED_03* (find-package "PDU_MSGS::RELAYSTATUS"))
(defconstant pdu_msgs::RelayStatus::*RESERVED_03* 10)
(intern "*HIGH_SIDE_FAULT*" (find-package "PDU_MSGS::RELAYSTATUS"))
(shadow '*HIGH_SIDE_FAULT* (find-package "PDU_MSGS::RELAYSTATUS"))
(defconstant pdu_msgs::RelayStatus::*HIGH_SIDE_FAULT* 11)
(intern "*HIGH_SIDE_OPEN_LOAD*" (find-package "PDU_MSGS::RELAYSTATUS"))
(shadow '*HIGH_SIDE_OPEN_LOAD* (find-package "PDU_MSGS::RELAYSTATUS"))
(defconstant pdu_msgs::RelayStatus::*HIGH_SIDE_OPEN_LOAD* 12)
(intern "*HIGH_SIDE_OVER_VOLTAGE*" (find-package "PDU_MSGS::RELAYSTATUS"))
(shadow '*HIGH_SIDE_OVER_VOLTAGE* (find-package "PDU_MSGS::RELAYSTATUS"))
(defconstant pdu_msgs::RelayStatus::*HIGH_SIDE_OVER_VOLTAGE* 13)
(intern "*RESERVED_04*" (find-package "PDU_MSGS::RELAYSTATUS"))
(shadow '*RESERVED_04* (find-package "PDU_MSGS::RELAYSTATUS"))
(defconstant pdu_msgs::RelayStatus::*RESERVED_04* 14)
(intern "*RELAY_LOCATION_NOT_USED*" (find-package "PDU_MSGS::RELAYSTATUS"))
(shadow '*RELAY_LOCATION_NOT_USED* (find-package "PDU_MSGS::RELAYSTATUS"))
(defconstant pdu_msgs::RelayStatus::*RELAY_LOCATION_NOT_USED* 15)

(defun pdu_msgs::RelayStatus-to-symbol (const)
  (cond
        ((= const 0) 'pdu_msgs::RelayStatus::*OK*)
        ((= const 1) 'pdu_msgs::RelayStatus::*RELAY_COIL_OPEN*)
        ((= const 2) 'pdu_msgs::RelayStatus::*RELAY_COIL_SHORTED*)
        ((= const 3) 'pdu_msgs::RelayStatus::*NORM_OPEN_RELAY_OPEN*)
        ((= const 4) 'pdu_msgs::RelayStatus::*NORM_CLOSED_RELAY_OPEN*)
        ((= const 5) 'pdu_msgs::RelayStatus::*COIL_NOT_POWERED*)
        ((= const 6) 'pdu_msgs::RelayStatus::*NORM_OPEN_RELAY_SHORTED*)
        ((= const 7) 'pdu_msgs::RelayStatus::*NORM_CLOSED_RELAY_SHORTED*)
        ((= const 8) 'pdu_msgs::RelayStatus::*RESERVED_01*)
        ((= const 9) 'pdu_msgs::RelayStatus::*RESERVED_02*)
        ((= const 10) 'pdu_msgs::RelayStatus::*RESERVED_03*)
        ((= const 11) 'pdu_msgs::RelayStatus::*HIGH_SIDE_FAULT*)
        ((= const 12) 'pdu_msgs::RelayStatus::*HIGH_SIDE_OPEN_LOAD*)
        ((= const 13) 'pdu_msgs::RelayStatus::*HIGH_SIDE_OVER_VOLTAGE*)
        ((= const 14) 'pdu_msgs::RelayStatus::*RESERVED_04*)
        ((= const 15) 'pdu_msgs::RelayStatus::*RELAY_LOCATION_NOT_USED*)
        (t nil)))

(defclass pdu_msgs::RelayStatus
  :super ros::object
  :slots (_value ))

(defmethod pdu_msgs::RelayStatus
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

(setf (get pdu_msgs::RelayStatus :md5sum-) "747c0056a2372beaf7485ce2d5289570")
(setf (get pdu_msgs::RelayStatus :datatype-) "pdu_msgs/RelayStatus")
(setf (get pdu_msgs::RelayStatus :definition-)
      "uint8 value

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



(provide :pdu_msgs/RelayStatus "747c0056a2372beaf7485ce2d5289570")


