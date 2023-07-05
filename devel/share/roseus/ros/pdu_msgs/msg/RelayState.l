;; Auto-generated. Do not edit!


(when (boundp 'pdu_msgs::RelayState)
  (if (not (find-package "PDU_MSGS"))
    (make-package "PDU_MSGS"))
  (shadow 'RelayState (find-package "PDU_MSGS")))
(unless (find-package "PDU_MSGS::RELAYSTATE")
  (make-package "PDU_MSGS::RELAYSTATE"))

(in-package "ROS")
;;//! \htmlinclude RelayState.msg.html


(intern "*RELAY_OFF*" (find-package "PDU_MSGS::RELAYSTATE"))
(shadow '*RELAY_OFF* (find-package "PDU_MSGS::RELAYSTATE"))
(defconstant pdu_msgs::RelayState::*RELAY_OFF* 0)
(intern "*RELAY_ON*" (find-package "PDU_MSGS::RELAYSTATE"))
(shadow '*RELAY_ON* (find-package "PDU_MSGS::RELAYSTATE"))
(defconstant pdu_msgs::RelayState::*RELAY_ON* 1)
(intern "*MAINTAIN_STATE*" (find-package "PDU_MSGS::RELAYSTATE"))
(shadow '*MAINTAIN_STATE* (find-package "PDU_MSGS::RELAYSTATE"))
(defconstant pdu_msgs::RelayState::*MAINTAIN_STATE* 2)

(defun pdu_msgs::RelayState-to-symbol (const)
  (cond
        ((= const 0) 'pdu_msgs::RelayState::*RELAY_OFF*)
        ((= const 1) 'pdu_msgs::RelayState::*RELAY_ON*)
        ((= const 2) 'pdu_msgs::RelayState::*MAINTAIN_STATE*)
        (t nil)))

(defclass pdu_msgs::RelayState
  :super ros::object
  :slots (_value ))

(defmethod pdu_msgs::RelayState
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

(setf (get pdu_msgs::RelayState :md5sum-) "4fde2a8d5834550d49c7175d413bd2df")
(setf (get pdu_msgs::RelayState :datatype-) "pdu_msgs/RelayState")
(setf (get pdu_msgs::RelayState :definition-)
      "uint8 value

# MAINTAIN_STATE items perform the same function.
uint8 RELAY_OFF = 0
uint8 RELAY_ON = 1
uint8 MAINTAIN_STATE = 2

")



(provide :pdu_msgs/RelayState "4fde2a8d5834550d49c7175d413bd2df")


