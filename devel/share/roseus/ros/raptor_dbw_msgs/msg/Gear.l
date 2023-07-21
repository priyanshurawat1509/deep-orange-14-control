;; Auto-generated. Do not edit!


(when (boundp 'raptor_dbw_msgs::Gear)
  (if (not (find-package "RAPTOR_DBW_MSGS"))
    (make-package "RAPTOR_DBW_MSGS"))
  (shadow 'Gear (find-package "RAPTOR_DBW_MSGS")))
(unless (find-package "RAPTOR_DBW_MSGS::GEAR")
  (make-package "RAPTOR_DBW_MSGS::GEAR"))

(in-package "ROS")
;;//! \htmlinclude Gear.msg.html


(intern "*NONE*" (find-package "RAPTOR_DBW_MSGS::GEAR"))
(shadow '*NONE* (find-package "RAPTOR_DBW_MSGS::GEAR"))
(defconstant raptor_dbw_msgs::Gear::*NONE* 0)
(intern "*PARK*" (find-package "RAPTOR_DBW_MSGS::GEAR"))
(shadow '*PARK* (find-package "RAPTOR_DBW_MSGS::GEAR"))
(defconstant raptor_dbw_msgs::Gear::*PARK* 1)
(intern "*REVERSE*" (find-package "RAPTOR_DBW_MSGS::GEAR"))
(shadow '*REVERSE* (find-package "RAPTOR_DBW_MSGS::GEAR"))
(defconstant raptor_dbw_msgs::Gear::*REVERSE* 2)
(intern "*NEUTRAL*" (find-package "RAPTOR_DBW_MSGS::GEAR"))
(shadow '*NEUTRAL* (find-package "RAPTOR_DBW_MSGS::GEAR"))
(defconstant raptor_dbw_msgs::Gear::*NEUTRAL* 3)
(intern "*DRIVE*" (find-package "RAPTOR_DBW_MSGS::GEAR"))
(shadow '*DRIVE* (find-package "RAPTOR_DBW_MSGS::GEAR"))
(defconstant raptor_dbw_msgs::Gear::*DRIVE* 4)
(intern "*LOW*" (find-package "RAPTOR_DBW_MSGS::GEAR"))
(shadow '*LOW* (find-package "RAPTOR_DBW_MSGS::GEAR"))
(defconstant raptor_dbw_msgs::Gear::*LOW* 5)

(defun raptor_dbw_msgs::Gear-to-symbol (const)
  (cond
        ((= const 0) 'raptor_dbw_msgs::Gear::*NONE*)
        ((= const 1) 'raptor_dbw_msgs::Gear::*PARK*)
        ((= const 2) 'raptor_dbw_msgs::Gear::*REVERSE*)
        ((= const 3) 'raptor_dbw_msgs::Gear::*NEUTRAL*)
        ((= const 4) 'raptor_dbw_msgs::Gear::*DRIVE*)
        ((= const 5) 'raptor_dbw_msgs::Gear::*LOW*)
        (t nil)))

(defclass raptor_dbw_msgs::Gear
  :super ros::object
  :slots (_gear ))

(defmethod raptor_dbw_msgs::Gear
  (:init
   (&key
    ((:gear __gear) 0)
    )
   (send-super :init)
   (setq _gear (round __gear))
   self)
  (:gear
   (&optional __gear)
   (if __gear (setq _gear __gear)) _gear)
  (:serialization-length
   ()
   (+
    ;; uint8 _gear
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _gear
       (write-byte _gear s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _gear
     (setq _gear (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get raptor_dbw_msgs::Gear :md5sum-) "79b3cd667a7556f4bc4a66af7d189c96")
(setf (get raptor_dbw_msgs::Gear :datatype-) "raptor_dbw_msgs/Gear")
(setf (get raptor_dbw_msgs::Gear :definition-)
      "uint8 gear

uint8 NONE=0
uint8 PARK=1
uint8 REVERSE=2
uint8 NEUTRAL=3
uint8 DRIVE=4
uint8 LOW=5

")



(provide :raptor_dbw_msgs/Gear "79b3cd667a7556f4bc4a66af7d189c96")


