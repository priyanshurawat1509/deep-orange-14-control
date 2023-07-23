;; Auto-generated. Do not edit!


(when (boundp 'raptor_dbw_msgs::WiperFront)
  (if (not (find-package "RAPTOR_DBW_MSGS"))
    (make-package "RAPTOR_DBW_MSGS"))
  (shadow 'WiperFront (find-package "RAPTOR_DBW_MSGS")))
(unless (find-package "RAPTOR_DBW_MSGS::WIPERFRONT")
  (make-package "RAPTOR_DBW_MSGS::WIPERFRONT"))

(in-package "ROS")
;;//! \htmlinclude WiperFront.msg.html


(intern "*OFF*" (find-package "RAPTOR_DBW_MSGS::WIPERFRONT"))
(shadow '*OFF* (find-package "RAPTOR_DBW_MSGS::WIPERFRONT"))
(defconstant raptor_dbw_msgs::WiperFront::*OFF* 0)
(intern "*INTERVAL_1*" (find-package "RAPTOR_DBW_MSGS::WIPERFRONT"))
(shadow '*INTERVAL_1* (find-package "RAPTOR_DBW_MSGS::WIPERFRONT"))
(defconstant raptor_dbw_msgs::WiperFront::*INTERVAL_1* 1)
(intern "*INTERVAL_2*" (find-package "RAPTOR_DBW_MSGS::WIPERFRONT"))
(shadow '*INTERVAL_2* (find-package "RAPTOR_DBW_MSGS::WIPERFRONT"))
(defconstant raptor_dbw_msgs::WiperFront::*INTERVAL_2* 2)
(intern "*INTERVAL_3*" (find-package "RAPTOR_DBW_MSGS::WIPERFRONT"))
(shadow '*INTERVAL_3* (find-package "RAPTOR_DBW_MSGS::WIPERFRONT"))
(defconstant raptor_dbw_msgs::WiperFront::*INTERVAL_3* 3)
(intern "*INTERVAL_4*" (find-package "RAPTOR_DBW_MSGS::WIPERFRONT"))
(shadow '*INTERVAL_4* (find-package "RAPTOR_DBW_MSGS::WIPERFRONT"))
(defconstant raptor_dbw_msgs::WiperFront::*INTERVAL_4* 4)
(intern "*INTERVAL_5*" (find-package "RAPTOR_DBW_MSGS::WIPERFRONT"))
(shadow '*INTERVAL_5* (find-package "RAPTOR_DBW_MSGS::WIPERFRONT"))
(defconstant raptor_dbw_msgs::WiperFront::*INTERVAL_5* 5)
(intern "*INTERVAL_6*" (find-package "RAPTOR_DBW_MSGS::WIPERFRONT"))
(shadow '*INTERVAL_6* (find-package "RAPTOR_DBW_MSGS::WIPERFRONT"))
(defconstant raptor_dbw_msgs::WiperFront::*INTERVAL_6* 6)
(intern "*CONSTANT_LOW*" (find-package "RAPTOR_DBW_MSGS::WIPERFRONT"))
(shadow '*CONSTANT_LOW* (find-package "RAPTOR_DBW_MSGS::WIPERFRONT"))
(defconstant raptor_dbw_msgs::WiperFront::*CONSTANT_LOW* 11)
(intern "*CONSTANT_HIGH*" (find-package "RAPTOR_DBW_MSGS::WIPERFRONT"))
(shadow '*CONSTANT_HIGH* (find-package "RAPTOR_DBW_MSGS::WIPERFRONT"))
(defconstant raptor_dbw_msgs::WiperFront::*CONSTANT_HIGH* 12)
(intern "*WASH_BRIEF*" (find-package "RAPTOR_DBW_MSGS::WIPERFRONT"))
(shadow '*WASH_BRIEF* (find-package "RAPTOR_DBW_MSGS::WIPERFRONT"))
(defconstant raptor_dbw_msgs::WiperFront::*WASH_BRIEF* 13)
(intern "*WASH_CONTINUOUS*" (find-package "RAPTOR_DBW_MSGS::WIPERFRONT"))
(shadow '*WASH_CONTINUOUS* (find-package "RAPTOR_DBW_MSGS::WIPERFRONT"))
(defconstant raptor_dbw_msgs::WiperFront::*WASH_CONTINUOUS* 14)
(intern "*SNA*" (find-package "RAPTOR_DBW_MSGS::WIPERFRONT"))
(shadow '*SNA* (find-package "RAPTOR_DBW_MSGS::WIPERFRONT"))
(defconstant raptor_dbw_msgs::WiperFront::*SNA* 15)

(defun raptor_dbw_msgs::WiperFront-to-symbol (const)
  (cond
        ((= const 0) 'raptor_dbw_msgs::WiperFront::*OFF*)
        ((= const 1) 'raptor_dbw_msgs::WiperFront::*INTERVAL_1*)
        ((= const 2) 'raptor_dbw_msgs::WiperFront::*INTERVAL_2*)
        ((= const 3) 'raptor_dbw_msgs::WiperFront::*INTERVAL_3*)
        ((= const 4) 'raptor_dbw_msgs::WiperFront::*INTERVAL_4*)
        ((= const 5) 'raptor_dbw_msgs::WiperFront::*INTERVAL_5*)
        ((= const 6) 'raptor_dbw_msgs::WiperFront::*INTERVAL_6*)
        ((= const 11) 'raptor_dbw_msgs::WiperFront::*CONSTANT_LOW*)
        ((= const 12) 'raptor_dbw_msgs::WiperFront::*CONSTANT_HIGH*)
        ((= const 13) 'raptor_dbw_msgs::WiperFront::*WASH_BRIEF*)
        ((= const 14) 'raptor_dbw_msgs::WiperFront::*WASH_CONTINUOUS*)
        ((= const 15) 'raptor_dbw_msgs::WiperFront::*SNA*)
        (t nil)))

(defclass raptor_dbw_msgs::WiperFront
  :super ros::object
  :slots (_status ))

(defmethod raptor_dbw_msgs::WiperFront
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

(setf (get raptor_dbw_msgs::WiperFront :md5sum-) "9f24f215ca940496a8f6a6e118de9fa5")
(setf (get raptor_dbw_msgs::WiperFront :datatype-) "raptor_dbw_msgs/WiperFront")
(setf (get raptor_dbw_msgs::WiperFront :definition-)
      "uint8 status

uint8 OFF = 0
uint8 INTERVAL_1 = 1
uint8 INTERVAL_2 = 2
uint8 INTERVAL_3 = 3
uint8 INTERVAL_4 = 4
uint8 INTERVAL_5 = 5
uint8 INTERVAL_6 = 6
uint8 CONSTANT_LOW = 11
uint8 CONSTANT_HIGH = 12
uint8 WASH_BRIEF = 13
uint8 WASH_CONTINUOUS = 14
uint8 SNA = 15
")



(provide :raptor_dbw_msgs/WiperFront "9f24f215ca940496a8f6a6e118de9fa5")


