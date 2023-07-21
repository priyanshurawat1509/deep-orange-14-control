;; Auto-generated. Do not edit!


(when (boundp 'raptor_dbw_msgs::TurnSignal)
  (if (not (find-package "RAPTOR_DBW_MSGS"))
    (make-package "RAPTOR_DBW_MSGS"))
  (shadow 'TurnSignal (find-package "RAPTOR_DBW_MSGS")))
(unless (find-package "RAPTOR_DBW_MSGS::TURNSIGNAL")
  (make-package "RAPTOR_DBW_MSGS::TURNSIGNAL"))

(in-package "ROS")
;;//! \htmlinclude TurnSignal.msg.html


(intern "*NONE*" (find-package "RAPTOR_DBW_MSGS::TURNSIGNAL"))
(shadow '*NONE* (find-package "RAPTOR_DBW_MSGS::TURNSIGNAL"))
(defconstant raptor_dbw_msgs::TurnSignal::*NONE* 0)
(intern "*LEFT*" (find-package "RAPTOR_DBW_MSGS::TURNSIGNAL"))
(shadow '*LEFT* (find-package "RAPTOR_DBW_MSGS::TURNSIGNAL"))
(defconstant raptor_dbw_msgs::TurnSignal::*LEFT* 1)
(intern "*RIGHT*" (find-package "RAPTOR_DBW_MSGS::TURNSIGNAL"))
(shadow '*RIGHT* (find-package "RAPTOR_DBW_MSGS::TURNSIGNAL"))
(defconstant raptor_dbw_msgs::TurnSignal::*RIGHT* 2)
(intern "*HAZARDS*" (find-package "RAPTOR_DBW_MSGS::TURNSIGNAL"))
(shadow '*HAZARDS* (find-package "RAPTOR_DBW_MSGS::TURNSIGNAL"))
(defconstant raptor_dbw_msgs::TurnSignal::*HAZARDS* 3)
(intern "*SNA*" (find-package "RAPTOR_DBW_MSGS::TURNSIGNAL"))
(shadow '*SNA* (find-package "RAPTOR_DBW_MSGS::TURNSIGNAL"))
(defconstant raptor_dbw_msgs::TurnSignal::*SNA* 7)

(defun raptor_dbw_msgs::TurnSignal-to-symbol (const)
  (cond
        ((= const 0) 'raptor_dbw_msgs::TurnSignal::*NONE*)
        ((= const 1) 'raptor_dbw_msgs::TurnSignal::*LEFT*)
        ((= const 2) 'raptor_dbw_msgs::TurnSignal::*RIGHT*)
        ((= const 3) 'raptor_dbw_msgs::TurnSignal::*HAZARDS*)
        ((= const 7) 'raptor_dbw_msgs::TurnSignal::*SNA*)
        (t nil)))

(defclass raptor_dbw_msgs::TurnSignal
  :super ros::object
  :slots (_value ))

(defmethod raptor_dbw_msgs::TurnSignal
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

(setf (get raptor_dbw_msgs::TurnSignal :md5sum-) "933b11bd0b0ae8b539bf6f942bfb3693")
(setf (get raptor_dbw_msgs::TurnSignal :datatype-) "raptor_dbw_msgs/TurnSignal")
(setf (get raptor_dbw_msgs::TurnSignal :definition-)
      "uint8 value

uint8 NONE = 0
uint8 LEFT = 1
uint8 RIGHT = 2
uint8 HAZARDS = 3
uint8 SNA = 7
")



(provide :raptor_dbw_msgs/TurnSignal "933b11bd0b0ae8b539bf6f942bfb3693")


