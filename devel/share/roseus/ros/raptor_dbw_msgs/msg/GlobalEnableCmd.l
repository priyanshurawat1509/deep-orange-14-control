;; Auto-generated. Do not edit!


(when (boundp 'raptor_dbw_msgs::GlobalEnableCmd)
  (if (not (find-package "RAPTOR_DBW_MSGS"))
    (make-package "RAPTOR_DBW_MSGS"))
  (shadow 'GlobalEnableCmd (find-package "RAPTOR_DBW_MSGS")))
(unless (find-package "RAPTOR_DBW_MSGS::GLOBALENABLECMD")
  (make-package "RAPTOR_DBW_MSGS::GLOBALENABLECMD"))

(in-package "ROS")
;;//! \htmlinclude GlobalEnableCmd.msg.html


(defclass raptor_dbw_msgs::GlobalEnableCmd
  :super ros::object
  :slots (_global_enable _enable_joystick_limits _ecu_build_number _rolling_counter ))

(defmethod raptor_dbw_msgs::GlobalEnableCmd
  (:init
   (&key
    ((:global_enable __global_enable) nil)
    ((:enable_joystick_limits __enable_joystick_limits) nil)
    ((:ecu_build_number __ecu_build_number) 0)
    ((:rolling_counter __rolling_counter) 0)
    )
   (send-super :init)
   (setq _global_enable __global_enable)
   (setq _enable_joystick_limits __enable_joystick_limits)
   (setq _ecu_build_number (round __ecu_build_number))
   (setq _rolling_counter (round __rolling_counter))
   self)
  (:global_enable
   (&optional (__global_enable :null))
   (if (not (eq __global_enable :null)) (setq _global_enable __global_enable)) _global_enable)
  (:enable_joystick_limits
   (&optional (__enable_joystick_limits :null))
   (if (not (eq __enable_joystick_limits :null)) (setq _enable_joystick_limits __enable_joystick_limits)) _enable_joystick_limits)
  (:ecu_build_number
   (&optional __ecu_build_number)
   (if __ecu_build_number (setq _ecu_build_number __ecu_build_number)) _ecu_build_number)
  (:rolling_counter
   (&optional __rolling_counter)
   (if __rolling_counter (setq _rolling_counter __rolling_counter)) _rolling_counter)
  (:serialization-length
   ()
   (+
    ;; bool _global_enable
    1
    ;; bool _enable_joystick_limits
    1
    ;; uint16 _ecu_build_number
    2
    ;; uint8 _rolling_counter
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _global_enable
       (if _global_enable (write-byte -1 s) (write-byte 0 s))
     ;; bool _enable_joystick_limits
       (if _enable_joystick_limits (write-byte -1 s) (write-byte 0 s))
     ;; uint16 _ecu_build_number
       (write-word _ecu_build_number s)
     ;; uint8 _rolling_counter
       (write-byte _rolling_counter s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _global_enable
     (setq _global_enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _enable_joystick_limits
     (setq _enable_joystick_limits (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint16 _ecu_build_number
     (setq _ecu_build_number (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint8 _rolling_counter
     (setq _rolling_counter (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get raptor_dbw_msgs::GlobalEnableCmd :md5sum-) "9f0b5dc490f6a75ce1884359156e63d3")
(setf (get raptor_dbw_msgs::GlobalEnableCmd :datatype-) "raptor_dbw_msgs/GlobalEnableCmd")
(setf (get raptor_dbw_msgs::GlobalEnableCmd :definition-)
      "bool global_enable

bool enable_joystick_limits

uint16 ecu_build_number

uint8 rolling_counter
")



(provide :raptor_dbw_msgs/GlobalEnableCmd "9f0b5dc490f6a75ce1884359156e63d3")


