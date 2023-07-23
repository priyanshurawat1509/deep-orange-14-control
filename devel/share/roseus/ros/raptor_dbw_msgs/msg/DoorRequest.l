;; Auto-generated. Do not edit!


(when (boundp 'raptor_dbw_msgs::DoorRequest)
  (if (not (find-package "RAPTOR_DBW_MSGS"))
    (make-package "RAPTOR_DBW_MSGS"))
  (shadow 'DoorRequest (find-package "RAPTOR_DBW_MSGS")))
(unless (find-package "RAPTOR_DBW_MSGS::DOORREQUEST")
  (make-package "RAPTOR_DBW_MSGS::DOORREQUEST"))

(in-package "ROS")
;;//! \htmlinclude DoorRequest.msg.html


(intern "*NO_REQUEST*" (find-package "RAPTOR_DBW_MSGS::DOORREQUEST"))
(shadow '*NO_REQUEST* (find-package "RAPTOR_DBW_MSGS::DOORREQUEST"))
(defconstant raptor_dbw_msgs::DoorRequest::*NO_REQUEST* 0)
(intern "*LIFTGATE_TOGGLE*" (find-package "RAPTOR_DBW_MSGS::DOORREQUEST"))
(shadow '*LIFTGATE_TOGGLE* (find-package "RAPTOR_DBW_MSGS::DOORREQUEST"))
(defconstant raptor_dbw_msgs::DoorRequest::*LIFTGATE_TOGGLE* 1)
(intern "*LR_DOOR_TOGGLE*" (find-package "RAPTOR_DBW_MSGS::DOORREQUEST"))
(shadow '*LR_DOOR_TOGGLE* (find-package "RAPTOR_DBW_MSGS::DOORREQUEST"))
(defconstant raptor_dbw_msgs::DoorRequest::*LR_DOOR_TOGGLE* 2)
(intern "*RR_DOOR_TOGGLE*" (find-package "RAPTOR_DBW_MSGS::DOORREQUEST"))
(shadow '*RR_DOOR_TOGGLE* (find-package "RAPTOR_DBW_MSGS::DOORREQUEST"))
(defconstant raptor_dbw_msgs::DoorRequest::*RR_DOOR_TOGGLE* 3)

(defun raptor_dbw_msgs::DoorRequest-to-symbol (const)
  (cond
        ((= const 0) 'raptor_dbw_msgs::DoorRequest::*NO_REQUEST*)
        ((= const 1) 'raptor_dbw_msgs::DoorRequest::*LIFTGATE_TOGGLE*)
        ((= const 2) 'raptor_dbw_msgs::DoorRequest::*LR_DOOR_TOGGLE*)
        ((= const 3) 'raptor_dbw_msgs::DoorRequest::*RR_DOOR_TOGGLE*)
        (t nil)))

(defclass raptor_dbw_msgs::DoorRequest
  :super ros::object
  :slots (_value ))

(defmethod raptor_dbw_msgs::DoorRequest
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

(setf (get raptor_dbw_msgs::DoorRequest :md5sum-) "348349c0ab8ef301126c09608a2bcad3")
(setf (get raptor_dbw_msgs::DoorRequest :datatype-) "raptor_dbw_msgs/DoorRequest")
(setf (get raptor_dbw_msgs::DoorRequest :definition-)
      "uint8 value

uint8 NO_REQUEST=0
uint8 LIFTGATE_TOGGLE=1
uint8 LR_DOOR_TOGGLE=2
uint8 RR_DOOR_TOGGLE=3
")



(provide :raptor_dbw_msgs/DoorRequest "348349c0ab8ef301126c09608a2bcad3")


