;; Auto-generated. Do not edit!


(when (boundp 'raptor_dbw_msgs::HighBeam)
  (if (not (find-package "RAPTOR_DBW_MSGS"))
    (make-package "RAPTOR_DBW_MSGS"))
  (shadow 'HighBeam (find-package "RAPTOR_DBW_MSGS")))
(unless (find-package "RAPTOR_DBW_MSGS::HIGHBEAM")
  (make-package "RAPTOR_DBW_MSGS::HIGHBEAM"))

(in-package "ROS")
;;//! \htmlinclude HighBeam.msg.html


(intern "*OFF*" (find-package "RAPTOR_DBW_MSGS::HIGHBEAM"))
(shadow '*OFF* (find-package "RAPTOR_DBW_MSGS::HIGHBEAM"))
(defconstant raptor_dbw_msgs::HighBeam::*OFF* 0)
(intern "*ON*" (find-package "RAPTOR_DBW_MSGS::HIGHBEAM"))
(shadow '*ON* (find-package "RAPTOR_DBW_MSGS::HIGHBEAM"))
(defconstant raptor_dbw_msgs::HighBeam::*ON* 1)
(intern "*FORCE_ON*" (find-package "RAPTOR_DBW_MSGS::HIGHBEAM"))
(shadow '*FORCE_ON* (find-package "RAPTOR_DBW_MSGS::HIGHBEAM"))
(defconstant raptor_dbw_msgs::HighBeam::*FORCE_ON* 2)
(intern "*RESERVED*" (find-package "RAPTOR_DBW_MSGS::HIGHBEAM"))
(shadow '*RESERVED* (find-package "RAPTOR_DBW_MSGS::HIGHBEAM"))
(defconstant raptor_dbw_msgs::HighBeam::*RESERVED* 3)

(defun raptor_dbw_msgs::HighBeam-to-symbol (const)
  (cond
        ((= const 0) 'raptor_dbw_msgs::HighBeam::*OFF*)
        ((= const 1) 'raptor_dbw_msgs::HighBeam::*ON*)
        ((= const 2) 'raptor_dbw_msgs::HighBeam::*FORCE_ON*)
        ((= const 3) 'raptor_dbw_msgs::HighBeam::*RESERVED*)
        (t nil)))

(defclass raptor_dbw_msgs::HighBeam
  :super ros::object
  :slots (_status ))

(defmethod raptor_dbw_msgs::HighBeam
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

(setf (get raptor_dbw_msgs::HighBeam :md5sum-) "adbf7a951d077ba41a11250e8c7184ce")
(setf (get raptor_dbw_msgs::HighBeam :datatype-) "raptor_dbw_msgs/HighBeam")
(setf (get raptor_dbw_msgs::HighBeam :definition-)
      "uint8 status

uint8 OFF = 0
uint8 ON = 1
uint8 FORCE_ON = 2
uint8 RESERVED = 3

")



(provide :raptor_dbw_msgs/HighBeam "adbf7a951d077ba41a11250e8c7184ce")


