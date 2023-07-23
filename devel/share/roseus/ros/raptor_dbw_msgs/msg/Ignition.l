;; Auto-generated. Do not edit!


(when (boundp 'raptor_dbw_msgs::Ignition)
  (if (not (find-package "RAPTOR_DBW_MSGS"))
    (make-package "RAPTOR_DBW_MSGS"))
  (shadow 'Ignition (find-package "RAPTOR_DBW_MSGS")))
(unless (find-package "RAPTOR_DBW_MSGS::IGNITION")
  (make-package "RAPTOR_DBW_MSGS::IGNITION"))

(in-package "ROS")
;;//! \htmlinclude Ignition.msg.html


(intern "*NO_REQUEST*" (find-package "RAPTOR_DBW_MSGS::IGNITION"))
(shadow '*NO_REQUEST* (find-package "RAPTOR_DBW_MSGS::IGNITION"))
(defconstant raptor_dbw_msgs::Ignition::*NO_REQUEST* 0)
(intern "*FORCE_OFF*" (find-package "RAPTOR_DBW_MSGS::IGNITION"))
(shadow '*FORCE_OFF* (find-package "RAPTOR_DBW_MSGS::IGNITION"))
(defconstant raptor_dbw_msgs::Ignition::*FORCE_OFF* 1)
(intern "*ACCESSORY*" (find-package "RAPTOR_DBW_MSGS::IGNITION"))
(shadow '*ACCESSORY* (find-package "RAPTOR_DBW_MSGS::IGNITION"))
(defconstant raptor_dbw_msgs::Ignition::*ACCESSORY* 2)
(intern "*RUN*" (find-package "RAPTOR_DBW_MSGS::IGNITION"))
(shadow '*RUN* (find-package "RAPTOR_DBW_MSGS::IGNITION"))
(defconstant raptor_dbw_msgs::Ignition::*RUN* 3)
(intern "*CRANK*" (find-package "RAPTOR_DBW_MSGS::IGNITION"))
(shadow '*CRANK* (find-package "RAPTOR_DBW_MSGS::IGNITION"))
(defconstant raptor_dbw_msgs::Ignition::*CRANK* 4)

(defun raptor_dbw_msgs::Ignition-to-symbol (const)
  (cond
        ((= const 0) 'raptor_dbw_msgs::Ignition::*NO_REQUEST*)
        ((= const 1) 'raptor_dbw_msgs::Ignition::*FORCE_OFF*)
        ((= const 2) 'raptor_dbw_msgs::Ignition::*ACCESSORY*)
        ((= const 3) 'raptor_dbw_msgs::Ignition::*RUN*)
        ((= const 4) 'raptor_dbw_msgs::Ignition::*CRANK*)
        (t nil)))

(defclass raptor_dbw_msgs::Ignition
  :super ros::object
  :slots (_status ))

(defmethod raptor_dbw_msgs::Ignition
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

(setf (get raptor_dbw_msgs::Ignition :md5sum-) "0f311d817ddde0f9d192a6d5e9ac26ba")
(setf (get raptor_dbw_msgs::Ignition :datatype-) "raptor_dbw_msgs/Ignition")
(setf (get raptor_dbw_msgs::Ignition :definition-)
      "uint8 status

uint8 NO_REQUEST = 0
uint8 FORCE_OFF = 1
uint8 ACCESSORY = 2
uint8 RUN = 3
uint8 CRANK = 4
")



(provide :raptor_dbw_msgs/Ignition "0f311d817ddde0f9d192a6d5e9ac26ba")


