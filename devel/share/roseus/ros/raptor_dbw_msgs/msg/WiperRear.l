;; Auto-generated. Do not edit!


(when (boundp 'raptor_dbw_msgs::WiperRear)
  (if (not (find-package "RAPTOR_DBW_MSGS"))
    (make-package "RAPTOR_DBW_MSGS"))
  (shadow 'WiperRear (find-package "RAPTOR_DBW_MSGS")))
(unless (find-package "RAPTOR_DBW_MSGS::WIPERREAR")
  (make-package "RAPTOR_DBW_MSGS::WIPERREAR"))

(in-package "ROS")
;;//! \htmlinclude WiperRear.msg.html


(intern "*OFF*" (find-package "RAPTOR_DBW_MSGS::WIPERREAR"))
(shadow '*OFF* (find-package "RAPTOR_DBW_MSGS::WIPERREAR"))
(defconstant raptor_dbw_msgs::WiperRear::*OFF* 0)
(intern "*INTERVAL_1*" (find-package "RAPTOR_DBW_MSGS::WIPERREAR"))
(shadow '*INTERVAL_1* (find-package "RAPTOR_DBW_MSGS::WIPERREAR"))
(defconstant raptor_dbw_msgs::WiperRear::*INTERVAL_1* 1)
(intern "*CONSTANT_LOW*" (find-package "RAPTOR_DBW_MSGS::WIPERREAR"))
(shadow '*CONSTANT_LOW* (find-package "RAPTOR_DBW_MSGS::WIPERREAR"))
(defconstant raptor_dbw_msgs::WiperRear::*CONSTANT_LOW* 11)
(intern "*CONSTANT_HIGH*" (find-package "RAPTOR_DBW_MSGS::WIPERREAR"))
(shadow '*CONSTANT_HIGH* (find-package "RAPTOR_DBW_MSGS::WIPERREAR"))
(defconstant raptor_dbw_msgs::WiperRear::*CONSTANT_HIGH* 12)
(intern "*WASH_BRIEF*" (find-package "RAPTOR_DBW_MSGS::WIPERREAR"))
(shadow '*WASH_BRIEF* (find-package "RAPTOR_DBW_MSGS::WIPERREAR"))
(defconstant raptor_dbw_msgs::WiperRear::*WASH_BRIEF* 13)
(intern "*WASH_CONTINUOUS*" (find-package "RAPTOR_DBW_MSGS::WIPERREAR"))
(shadow '*WASH_CONTINUOUS* (find-package "RAPTOR_DBW_MSGS::WIPERREAR"))
(defconstant raptor_dbw_msgs::WiperRear::*WASH_CONTINUOUS* 14)
(intern "*SNA*" (find-package "RAPTOR_DBW_MSGS::WIPERREAR"))
(shadow '*SNA* (find-package "RAPTOR_DBW_MSGS::WIPERREAR"))
(defconstant raptor_dbw_msgs::WiperRear::*SNA* 15)

(defun raptor_dbw_msgs::WiperRear-to-symbol (const)
  (cond
        ((= const 0) 'raptor_dbw_msgs::WiperRear::*OFF*)
        ((= const 1) 'raptor_dbw_msgs::WiperRear::*INTERVAL_1*)
        ((= const 11) 'raptor_dbw_msgs::WiperRear::*CONSTANT_LOW*)
        ((= const 12) 'raptor_dbw_msgs::WiperRear::*CONSTANT_HIGH*)
        ((= const 13) 'raptor_dbw_msgs::WiperRear::*WASH_BRIEF*)
        ((= const 14) 'raptor_dbw_msgs::WiperRear::*WASH_CONTINUOUS*)
        ((= const 15) 'raptor_dbw_msgs::WiperRear::*SNA*)
        (t nil)))

(defclass raptor_dbw_msgs::WiperRear
  :super ros::object
  :slots (_status ))

(defmethod raptor_dbw_msgs::WiperRear
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

(setf (get raptor_dbw_msgs::WiperRear :md5sum-) "e49876942de059c3028a2674862072b3")
(setf (get raptor_dbw_msgs::WiperRear :datatype-) "raptor_dbw_msgs/WiperRear")
(setf (get raptor_dbw_msgs::WiperRear :definition-)
      "uint8 status

uint8 OFF = 0
uint8 INTERVAL_1 = 1
uint8 CONSTANT_LOW = 11
uint8 CONSTANT_HIGH = 12
uint8 WASH_BRIEF = 13
uint8 WASH_CONTINUOUS = 14
uint8 SNA = 15
")



(provide :raptor_dbw_msgs/WiperRear "e49876942de059c3028a2674862072b3")


