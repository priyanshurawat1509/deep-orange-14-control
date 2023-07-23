;; Auto-generated. Do not edit!


(when (boundp 'raptor_dbw_msgs::WatchdogStatus)
  (if (not (find-package "RAPTOR_DBW_MSGS"))
    (make-package "RAPTOR_DBW_MSGS"))
  (shadow 'WatchdogStatus (find-package "RAPTOR_DBW_MSGS")))
(unless (find-package "RAPTOR_DBW_MSGS::WATCHDOGSTATUS")
  (make-package "RAPTOR_DBW_MSGS::WATCHDOGSTATUS"))

(in-package "ROS")
;;//! \htmlinclude WatchdogStatus.msg.html


(intern "*NONE*" (find-package "RAPTOR_DBW_MSGS::WATCHDOGSTATUS"))
(shadow '*NONE* (find-package "RAPTOR_DBW_MSGS::WATCHDOGSTATUS"))
(defconstant raptor_dbw_msgs::WatchdogStatus::*NONE* 0)
(intern "*OTHER_BRAKE*" (find-package "RAPTOR_DBW_MSGS::WATCHDOGSTATUS"))
(shadow '*OTHER_BRAKE* (find-package "RAPTOR_DBW_MSGS::WATCHDOGSTATUS"))
(defconstant raptor_dbw_msgs::WatchdogStatus::*OTHER_BRAKE* 1)
(intern "*OTHER_ACCELERATOR_PEDAL*" (find-package "RAPTOR_DBW_MSGS::WATCHDOGSTATUS"))
(shadow '*OTHER_ACCELERATOR_PEDAL* (find-package "RAPTOR_DBW_MSGS::WATCHDOGSTATUS"))
(defconstant raptor_dbw_msgs::WatchdogStatus::*OTHER_ACCELERATOR_PEDAL* 2)
(intern "*OTHER_STEERING*" (find-package "RAPTOR_DBW_MSGS::WATCHDOGSTATUS"))
(shadow '*OTHER_STEERING* (find-package "RAPTOR_DBW_MSGS::WATCHDOGSTATUS"))
(defconstant raptor_dbw_msgs::WatchdogStatus::*OTHER_STEERING* 3)
(intern "*BRAKE_COUNTER*" (find-package "RAPTOR_DBW_MSGS::WATCHDOGSTATUS"))
(shadow '*BRAKE_COUNTER* (find-package "RAPTOR_DBW_MSGS::WATCHDOGSTATUS"))
(defconstant raptor_dbw_msgs::WatchdogStatus::*BRAKE_COUNTER* 4)
(intern "*BRAKE_DISABLED*" (find-package "RAPTOR_DBW_MSGS::WATCHDOGSTATUS"))
(shadow '*BRAKE_DISABLED* (find-package "RAPTOR_DBW_MSGS::WATCHDOGSTATUS"))
(defconstant raptor_dbw_msgs::WatchdogStatus::*BRAKE_DISABLED* 5)
(intern "*BRAKE_COMMAND*" (find-package "RAPTOR_DBW_MSGS::WATCHDOGSTATUS"))
(shadow '*BRAKE_COMMAND* (find-package "RAPTOR_DBW_MSGS::WATCHDOGSTATUS"))
(defconstant raptor_dbw_msgs::WatchdogStatus::*BRAKE_COMMAND* 6)
(intern "*BRAKE_REPORT*" (find-package "RAPTOR_DBW_MSGS::WATCHDOGSTATUS"))
(shadow '*BRAKE_REPORT* (find-package "RAPTOR_DBW_MSGS::WATCHDOGSTATUS"))
(defconstant raptor_dbw_msgs::WatchdogStatus::*BRAKE_REPORT* 7)
(intern "*ACCELERATOR_PEDAL_COUNTER*" (find-package "RAPTOR_DBW_MSGS::WATCHDOGSTATUS"))
(shadow '*ACCELERATOR_PEDAL_COUNTER* (find-package "RAPTOR_DBW_MSGS::WATCHDOGSTATUS"))
(defconstant raptor_dbw_msgs::WatchdogStatus::*ACCELERATOR_PEDAL_COUNTER* 8)
(intern "*ACCELERATOR_PEDAL_DISABLED*" (find-package "RAPTOR_DBW_MSGS::WATCHDOGSTATUS"))
(shadow '*ACCELERATOR_PEDAL_DISABLED* (find-package "RAPTOR_DBW_MSGS::WATCHDOGSTATUS"))
(defconstant raptor_dbw_msgs::WatchdogStatus::*ACCELERATOR_PEDAL_DISABLED* 9)
(intern "*ACCELERATOR_PEDAL_COMMAND*" (find-package "RAPTOR_DBW_MSGS::WATCHDOGSTATUS"))
(shadow '*ACCELERATOR_PEDAL_COMMAND* (find-package "RAPTOR_DBW_MSGS::WATCHDOGSTATUS"))
(defconstant raptor_dbw_msgs::WatchdogStatus::*ACCELERATOR_PEDAL_COMMAND* 10)
(intern "*ACCELERATOR_PEDAL_REPORT*" (find-package "RAPTOR_DBW_MSGS::WATCHDOGSTATUS"))
(shadow '*ACCELERATOR_PEDAL_REPORT* (find-package "RAPTOR_DBW_MSGS::WATCHDOGSTATUS"))
(defconstant raptor_dbw_msgs::WatchdogStatus::*ACCELERATOR_PEDAL_REPORT* 11)
(intern "*STEERING_COUNTER*" (find-package "RAPTOR_DBW_MSGS::WATCHDOGSTATUS"))
(shadow '*STEERING_COUNTER* (find-package "RAPTOR_DBW_MSGS::WATCHDOGSTATUS"))
(defconstant raptor_dbw_msgs::WatchdogStatus::*STEERING_COUNTER* 12)
(intern "*STEERING_DISABLED*" (find-package "RAPTOR_DBW_MSGS::WATCHDOGSTATUS"))
(shadow '*STEERING_DISABLED* (find-package "RAPTOR_DBW_MSGS::WATCHDOGSTATUS"))
(defconstant raptor_dbw_msgs::WatchdogStatus::*STEERING_DISABLED* 13)
(intern "*STEERING_COMMAND*" (find-package "RAPTOR_DBW_MSGS::WATCHDOGSTATUS"))
(shadow '*STEERING_COMMAND* (find-package "RAPTOR_DBW_MSGS::WATCHDOGSTATUS"))
(defconstant raptor_dbw_msgs::WatchdogStatus::*STEERING_COMMAND* 14)
(intern "*STEERING_REPORT*" (find-package "RAPTOR_DBW_MSGS::WATCHDOGSTATUS"))
(shadow '*STEERING_REPORT* (find-package "RAPTOR_DBW_MSGS::WATCHDOGSTATUS"))
(defconstant raptor_dbw_msgs::WatchdogStatus::*STEERING_REPORT* 15)

(defun raptor_dbw_msgs::WatchdogStatus-to-symbol (const)
  (cond
        ((= const 0) 'raptor_dbw_msgs::WatchdogStatus::*NONE*)
        ((= const 1) 'raptor_dbw_msgs::WatchdogStatus::*OTHER_BRAKE*)
        ((= const 2) 'raptor_dbw_msgs::WatchdogStatus::*OTHER_ACCELERATOR_PEDAL*)
        ((= const 3) 'raptor_dbw_msgs::WatchdogStatus::*OTHER_STEERING*)
        ((= const 4) 'raptor_dbw_msgs::WatchdogStatus::*BRAKE_COUNTER*)
        ((= const 5) 'raptor_dbw_msgs::WatchdogStatus::*BRAKE_DISABLED*)
        ((= const 6) 'raptor_dbw_msgs::WatchdogStatus::*BRAKE_COMMAND*)
        ((= const 7) 'raptor_dbw_msgs::WatchdogStatus::*BRAKE_REPORT*)
        ((= const 8) 'raptor_dbw_msgs::WatchdogStatus::*ACCELERATOR_PEDAL_COUNTER*)
        ((= const 9) 'raptor_dbw_msgs::WatchdogStatus::*ACCELERATOR_PEDAL_DISABLED*)
        ((= const 10) 'raptor_dbw_msgs::WatchdogStatus::*ACCELERATOR_PEDAL_COMMAND*)
        ((= const 11) 'raptor_dbw_msgs::WatchdogStatus::*ACCELERATOR_PEDAL_REPORT*)
        ((= const 12) 'raptor_dbw_msgs::WatchdogStatus::*STEERING_COUNTER*)
        ((= const 13) 'raptor_dbw_msgs::WatchdogStatus::*STEERING_DISABLED*)
        ((= const 14) 'raptor_dbw_msgs::WatchdogStatus::*STEERING_COMMAND*)
        ((= const 15) 'raptor_dbw_msgs::WatchdogStatus::*STEERING_REPORT*)
        (t nil)))

(defclass raptor_dbw_msgs::WatchdogStatus
  :super ros::object
  :slots (_source ))

(defmethod raptor_dbw_msgs::WatchdogStatus
  (:init
   (&key
    ((:source __source) 0)
    )
   (send-super :init)
   (setq _source (round __source))
   self)
  (:source
   (&optional __source)
   (if __source (setq _source __source)) _source)
  (:serialization-length
   ()
   (+
    ;; uint8 _source
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _source
       (write-byte _source s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _source
     (setq _source (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get raptor_dbw_msgs::WatchdogStatus :md5sum-) "3e7ee28e0afc591098518c8b9bf36b8a")
(setf (get raptor_dbw_msgs::WatchdogStatus :datatype-) "raptor_dbw_msgs/WatchdogStatus")
(setf (get raptor_dbw_msgs::WatchdogStatus :definition-)
      "uint8 source

uint8 NONE=0                        # No source for watchdog counter fault
uint8 OTHER_BRAKE=1                 # Fault determined by brake controller
uint8 OTHER_ACCELERATOR_PEDAL=2     # Fault determined by accelerator pedal controller
uint8 OTHER_STEERING=3              # Fault determined by steering controller
uint8 BRAKE_COUNTER=4               # Brake command counter failed to increment
uint8 BRAKE_DISABLED=5              # Brake transition to disabled while in gear or moving
uint8 BRAKE_COMMAND=6               # Brake command timeout after 100ms
uint8 BRAKE_REPORT=7                # Brake report timeout after 100ms
uint8 ACCELERATOR_PEDAL_COUNTER=8   # Accelerator pedal command counter failed to increment
uint8 ACCELERATOR_PEDAL_DISABLED=9  # Accelerator pedal transition to disabled while in gear or moving
uint8 ACCELERATOR_PEDAL_COMMAND=10  # Accelerator pedal command timeout after 100ms
uint8 ACCELERATOR_PEDAL_REPORT=11   # Accelerator pedal report timeout after 100ms
uint8 STEERING_COUNTER=12           # Steering command counter failed to increment
uint8 STEERING_DISABLED=13          # Steering transition to disabled while in gear or moving
uint8 STEERING_COMMAND=14           # Steering command timeout after 100ms
uint8 STEERING_REPORT=15            # Steering report timeout after 100ms

")



(provide :raptor_dbw_msgs/WatchdogStatus "3e7ee28e0afc591098518c8b9bf36b8a")


