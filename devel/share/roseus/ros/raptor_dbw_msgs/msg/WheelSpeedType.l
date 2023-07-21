;; Auto-generated. Do not edit!


(when (boundp 'raptor_dbw_msgs::WheelSpeedType)
  (if (not (find-package "RAPTOR_DBW_MSGS"))
    (make-package "RAPTOR_DBW_MSGS"))
  (shadow 'WheelSpeedType (find-package "RAPTOR_DBW_MSGS")))
(unless (find-package "RAPTOR_DBW_MSGS::WHEELSPEEDTYPE")
  (make-package "RAPTOR_DBW_MSGS::WHEELSPEEDTYPE"))

(in-package "ROS")
;;//! \htmlinclude WheelSpeedType.msg.html


(intern "*ANGULAR*" (find-package "RAPTOR_DBW_MSGS::WHEELSPEEDTYPE"))
(shadow '*ANGULAR* (find-package "RAPTOR_DBW_MSGS::WHEELSPEEDTYPE"))
(defconstant raptor_dbw_msgs::WheelSpeedType::*ANGULAR* 0)
(intern "*LINEAR*" (find-package "RAPTOR_DBW_MSGS::WHEELSPEEDTYPE"))
(shadow '*LINEAR* (find-package "RAPTOR_DBW_MSGS::WHEELSPEEDTYPE"))
(defconstant raptor_dbw_msgs::WheelSpeedType::*LINEAR* 1)

(defun raptor_dbw_msgs::WheelSpeedType-to-symbol (const)
  (cond
        ((= const 0) 'raptor_dbw_msgs::WheelSpeedType::*ANGULAR*)
        ((= const 1) 'raptor_dbw_msgs::WheelSpeedType::*LINEAR*)
        (t nil)))

(defclass raptor_dbw_msgs::WheelSpeedType
  :super ros::object
  :slots (_value ))

(defmethod raptor_dbw_msgs::WheelSpeedType
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

(setf (get raptor_dbw_msgs::WheelSpeedType :md5sum-) "3449744e3a452eb36b1db88cb52b05b8")
(setf (get raptor_dbw_msgs::WheelSpeedType :datatype-) "raptor_dbw_msgs/WheelSpeedType")
(setf (get raptor_dbw_msgs::WheelSpeedType :definition-)
      "uint8 value

uint8 ANGULAR = 0
uint8 LINEAR = 1
")



(provide :raptor_dbw_msgs/WheelSpeedType "3449744e3a452eb36b1db88cb52b05b8")


