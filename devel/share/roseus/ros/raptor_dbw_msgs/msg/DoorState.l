;; Auto-generated. Do not edit!


(when (boundp 'raptor_dbw_msgs::DoorState)
  (if (not (find-package "RAPTOR_DBW_MSGS"))
    (make-package "RAPTOR_DBW_MSGS"))
  (shadow 'DoorState (find-package "RAPTOR_DBW_MSGS")))
(unless (find-package "RAPTOR_DBW_MSGS::DOORSTATE")
  (make-package "RAPTOR_DBW_MSGS::DOORSTATE"))

(in-package "ROS")
;;//! \htmlinclude DoorState.msg.html


(intern "*UNDEFINED*" (find-package "RAPTOR_DBW_MSGS::DOORSTATE"))
(shadow '*UNDEFINED* (find-package "RAPTOR_DBW_MSGS::DOORSTATE"))
(defconstant raptor_dbw_msgs::DoorState::*UNDEFINED* 0)
(intern "*CLOSED*" (find-package "RAPTOR_DBW_MSGS::DOORSTATE"))
(shadow '*CLOSED* (find-package "RAPTOR_DBW_MSGS::DOORSTATE"))
(defconstant raptor_dbw_msgs::DoorState::*CLOSED* 1)
(intern "*OPEN*" (find-package "RAPTOR_DBW_MSGS::DOORSTATE"))
(shadow '*OPEN* (find-package "RAPTOR_DBW_MSGS::DOORSTATE"))
(defconstant raptor_dbw_msgs::DoorState::*OPEN* 2)
(intern "*SNA*" (find-package "RAPTOR_DBW_MSGS::DOORSTATE"))
(shadow '*SNA* (find-package "RAPTOR_DBW_MSGS::DOORSTATE"))
(defconstant raptor_dbw_msgs::DoorState::*SNA* 3)

(defun raptor_dbw_msgs::DoorState-to-symbol (const)
  (cond
        ((= const 0) 'raptor_dbw_msgs::DoorState::*UNDEFINED*)
        ((= const 1) 'raptor_dbw_msgs::DoorState::*CLOSED*)
        ((= const 2) 'raptor_dbw_msgs::DoorState::*OPEN*)
        ((= const 3) 'raptor_dbw_msgs::DoorState::*SNA*)
        (t nil)))

(defclass raptor_dbw_msgs::DoorState
  :super ros::object
  :slots (_value ))

(defmethod raptor_dbw_msgs::DoorState
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

(setf (get raptor_dbw_msgs::DoorState :md5sum-) "734fc9673f17db31d1d2f7bd478bd498")
(setf (get raptor_dbw_msgs::DoorState :datatype-) "raptor_dbw_msgs/DoorState")
(setf (get raptor_dbw_msgs::DoorState :definition-)
      "uint8 value

uint8 UNDEFINED = 0
uint8 CLOSED = 1
uint8 OPEN = 2
uint8 SNA = 3

")



(provide :raptor_dbw_msgs/DoorState "734fc9673f17db31d1d2f7bd478bd498")


