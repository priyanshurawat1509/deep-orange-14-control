;; Auto-generated. Do not edit!


(when (boundp 'raptor_dbw_msgs::ParkingBrake)
  (if (not (find-package "RAPTOR_DBW_MSGS"))
    (make-package "RAPTOR_DBW_MSGS"))
  (shadow 'ParkingBrake (find-package "RAPTOR_DBW_MSGS")))
(unless (find-package "RAPTOR_DBW_MSGS::PARKINGBRAKE")
  (make-package "RAPTOR_DBW_MSGS::PARKINGBRAKE"))

(in-package "ROS")
;;//! \htmlinclude ParkingBrake.msg.html


(intern "*OFF*" (find-package "RAPTOR_DBW_MSGS::PARKINGBRAKE"))
(shadow '*OFF* (find-package "RAPTOR_DBW_MSGS::PARKINGBRAKE"))
(defconstant raptor_dbw_msgs::ParkingBrake::*OFF* 0)
(intern "*TRANS*" (find-package "RAPTOR_DBW_MSGS::PARKINGBRAKE"))
(shadow '*TRANS* (find-package "RAPTOR_DBW_MSGS::PARKINGBRAKE"))
(defconstant raptor_dbw_msgs::ParkingBrake::*TRANS* 1)
(intern "*ON*" (find-package "RAPTOR_DBW_MSGS::PARKINGBRAKE"))
(shadow '*ON* (find-package "RAPTOR_DBW_MSGS::PARKINGBRAKE"))
(defconstant raptor_dbw_msgs::ParkingBrake::*ON* 2)
(intern "*FAULT*" (find-package "RAPTOR_DBW_MSGS::PARKINGBRAKE"))
(shadow '*FAULT* (find-package "RAPTOR_DBW_MSGS::PARKINGBRAKE"))
(defconstant raptor_dbw_msgs::ParkingBrake::*FAULT* 3)

(defun raptor_dbw_msgs::ParkingBrake-to-symbol (const)
  (cond
        ((= const 0) 'raptor_dbw_msgs::ParkingBrake::*OFF*)
        ((= const 1) 'raptor_dbw_msgs::ParkingBrake::*TRANS*)
        ((= const 2) 'raptor_dbw_msgs::ParkingBrake::*ON*)
        ((= const 3) 'raptor_dbw_msgs::ParkingBrake::*FAULT*)
        (t nil)))

(defclass raptor_dbw_msgs::ParkingBrake
  :super ros::object
  :slots (_status ))

(defmethod raptor_dbw_msgs::ParkingBrake
  (:init
   (&key
    ((:status __status) 0)
    )
   (send-super :init)
   (setq _status (round __status))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:serialization-length
   ()
   (+
    ;; uint8 _status
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _status
       (write-byte _status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get raptor_dbw_msgs::ParkingBrake :md5sum-) "2280b2c9c46fd98be0f067aa92f74fc4")
(setf (get raptor_dbw_msgs::ParkingBrake :datatype-) "raptor_dbw_msgs/ParkingBrake")
(setf (get raptor_dbw_msgs::ParkingBrake :definition-)
      "uint8 status

uint8 OFF=0
uint8 TRANS=1
uint8 ON=2
uint8 FAULT=3

")



(provide :raptor_dbw_msgs/ParkingBrake "2280b2c9c46fd98be0f067aa92f74fc4")


