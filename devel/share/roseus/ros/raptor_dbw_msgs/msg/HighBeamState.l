;; Auto-generated. Do not edit!


(when (boundp 'raptor_dbw_msgs::HighBeamState)
  (if (not (find-package "RAPTOR_DBW_MSGS"))
    (make-package "RAPTOR_DBW_MSGS"))
  (shadow 'HighBeamState (find-package "RAPTOR_DBW_MSGS")))
(unless (find-package "RAPTOR_DBW_MSGS::HIGHBEAMSTATE")
  (make-package "RAPTOR_DBW_MSGS::HIGHBEAMSTATE"))

(in-package "ROS")
;;//! \htmlinclude HighBeamState.msg.html


(intern "*SNA*" (find-package "RAPTOR_DBW_MSGS::HIGHBEAMSTATE"))
(shadow '*SNA* (find-package "RAPTOR_DBW_MSGS::HIGHBEAMSTATE"))
(defconstant raptor_dbw_msgs::HighBeamState::*SNA* 0)
(intern "*RESERVED*" (find-package "RAPTOR_DBW_MSGS::HIGHBEAMSTATE"))
(shadow '*RESERVED* (find-package "RAPTOR_DBW_MSGS::HIGHBEAMSTATE"))
(defconstant raptor_dbw_msgs::HighBeamState::*RESERVED* 1)
(intern "*ON*" (find-package "RAPTOR_DBW_MSGS::HIGHBEAMSTATE"))
(shadow '*ON* (find-package "RAPTOR_DBW_MSGS::HIGHBEAMSTATE"))
(defconstant raptor_dbw_msgs::HighBeamState::*ON* 2)
(intern "*OFF*" (find-package "RAPTOR_DBW_MSGS::HIGHBEAMSTATE"))
(shadow '*OFF* (find-package "RAPTOR_DBW_MSGS::HIGHBEAMSTATE"))
(defconstant raptor_dbw_msgs::HighBeamState::*OFF* 0)

(defun raptor_dbw_msgs::HighBeamState-to-symbol (const)
  (cond
        ((= const 0) 'raptor_dbw_msgs::HighBeamState::*SNA*)
        ((= const 1) 'raptor_dbw_msgs::HighBeamState::*RESERVED*)
        ((= const 2) 'raptor_dbw_msgs::HighBeamState::*ON*)
        ((= const 0) 'raptor_dbw_msgs::HighBeamState::*OFF*)
        (t nil)))

(defclass raptor_dbw_msgs::HighBeamState
  :super ros::object
  :slots (_value ))

(defmethod raptor_dbw_msgs::HighBeamState
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

(setf (get raptor_dbw_msgs::HighBeamState :md5sum-) "09a82263284b8122eae16e418119f715")
(setf (get raptor_dbw_msgs::HighBeamState :datatype-) "raptor_dbw_msgs/HighBeamState")
(setf (get raptor_dbw_msgs::HighBeamState :definition-)
      "uint8 value

uint8 SNA = 0
uint8 RESERVED = 1
uint8 ON = 2
uint8 OFF = 0
")



(provide :raptor_dbw_msgs/HighBeamState "09a82263284b8122eae16e418119f715")


