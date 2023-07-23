;; Auto-generated. Do not edit!


(when (boundp 'raptor_dbw_msgs::LowBeam)
  (if (not (find-package "RAPTOR_DBW_MSGS"))
    (make-package "RAPTOR_DBW_MSGS"))
  (shadow 'LowBeam (find-package "RAPTOR_DBW_MSGS")))
(unless (find-package "RAPTOR_DBW_MSGS::LOWBEAM")
  (make-package "RAPTOR_DBW_MSGS::LOWBEAM"))

(in-package "ROS")
;;//! \htmlinclude LowBeam.msg.html


(intern "*OFF*" (find-package "RAPTOR_DBW_MSGS::LOWBEAM"))
(shadow '*OFF* (find-package "RAPTOR_DBW_MSGS::LOWBEAM"))
(defconstant raptor_dbw_msgs::LowBeam::*OFF* 0)
(intern "*RESERVED*" (find-package "RAPTOR_DBW_MSGS::LOWBEAM"))
(shadow '*RESERVED* (find-package "RAPTOR_DBW_MSGS::LOWBEAM"))
(defconstant raptor_dbw_msgs::LowBeam::*RESERVED* 1)
(intern "*ON*" (find-package "RAPTOR_DBW_MSGS::LOWBEAM"))
(shadow '*ON* (find-package "RAPTOR_DBW_MSGS::LOWBEAM"))
(defconstant raptor_dbw_msgs::LowBeam::*ON* 2)
(intern "*RESERVED_1*" (find-package "RAPTOR_DBW_MSGS::LOWBEAM"))
(shadow '*RESERVED_1* (find-package "RAPTOR_DBW_MSGS::LOWBEAM"))
(defconstant raptor_dbw_msgs::LowBeam::*RESERVED_1* 3)

(defun raptor_dbw_msgs::LowBeam-to-symbol (const)
  (cond
        ((= const 0) 'raptor_dbw_msgs::LowBeam::*OFF*)
        ((= const 1) 'raptor_dbw_msgs::LowBeam::*RESERVED*)
        ((= const 2) 'raptor_dbw_msgs::LowBeam::*ON*)
        ((= const 3) 'raptor_dbw_msgs::LowBeam::*RESERVED_1*)
        (t nil)))

(defclass raptor_dbw_msgs::LowBeam
  :super ros::object
  :slots (_status ))

(defmethod raptor_dbw_msgs::LowBeam
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

(setf (get raptor_dbw_msgs::LowBeam :md5sum-) "8826c7708bf89daa736515ad7f74a875")
(setf (get raptor_dbw_msgs::LowBeam :datatype-) "raptor_dbw_msgs/LowBeam")
(setf (get raptor_dbw_msgs::LowBeam :definition-)
      "uint8 status

uint8 OFF = 0
uint8 RESERVED = 1
uint8 ON = 2
uint8 RESERVED_1 = 3

")



(provide :raptor_dbw_msgs/LowBeam "8826c7708bf89daa736515ad7f74a875")


