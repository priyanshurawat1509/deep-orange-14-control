;; Auto-generated. Do not edit!


(when (boundp 'raptor_dbw_msgs::HornState)
  (if (not (find-package "RAPTOR_DBW_MSGS"))
    (make-package "RAPTOR_DBW_MSGS"))
  (shadow 'HornState (find-package "RAPTOR_DBW_MSGS")))
(unless (find-package "RAPTOR_DBW_MSGS::HORNSTATE")
  (make-package "RAPTOR_DBW_MSGS::HORNSTATE"))

(in-package "ROS")
;;//! \htmlinclude HornState.msg.html


(intern "*OFF*" (find-package "RAPTOR_DBW_MSGS::HORNSTATE"))
(shadow '*OFF* (find-package "RAPTOR_DBW_MSGS::HORNSTATE"))
(defconstant raptor_dbw_msgs::HornState::*OFF* 0)
(intern "*ON*" (find-package "RAPTOR_DBW_MSGS::HORNSTATE"))
(shadow '*ON* (find-package "RAPTOR_DBW_MSGS::HORNSTATE"))
(defconstant raptor_dbw_msgs::HornState::*ON* 1)
(intern "*SNA*" (find-package "RAPTOR_DBW_MSGS::HORNSTATE"))
(shadow '*SNA* (find-package "RAPTOR_DBW_MSGS::HORNSTATE"))
(defconstant raptor_dbw_msgs::HornState::*SNA* 2)

(defun raptor_dbw_msgs::HornState-to-symbol (const)
  (cond
        ((= const 0) 'raptor_dbw_msgs::HornState::*OFF*)
        ((= const 1) 'raptor_dbw_msgs::HornState::*ON*)
        ((= const 2) 'raptor_dbw_msgs::HornState::*SNA*)
        (t nil)))

(defclass raptor_dbw_msgs::HornState
  :super ros::object
  :slots (_status ))

(defmethod raptor_dbw_msgs::HornState
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

(setf (get raptor_dbw_msgs::HornState :md5sum-) "317e8e9ee6105e8f8dcd663585539324")
(setf (get raptor_dbw_msgs::HornState :datatype-) "raptor_dbw_msgs/HornState")
(setf (get raptor_dbw_msgs::HornState :definition-)
      "uint8 status

uint8 OFF = 0
uint8 ON = 1
uint8 SNA = 2

")



(provide :raptor_dbw_msgs/HornState "317e8e9ee6105e8f8dcd663585539324")


