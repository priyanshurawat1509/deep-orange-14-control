;; Auto-generated. Do not edit!


(when (boundp 'raptor_dbw_msgs::FaultActionsReport)
  (if (not (find-package "RAPTOR_DBW_MSGS"))
    (make-package "RAPTOR_DBW_MSGS"))
  (shadow 'FaultActionsReport (find-package "RAPTOR_DBW_MSGS")))
(unless (find-package "RAPTOR_DBW_MSGS::FAULTACTIONSREPORT")
  (make-package "RAPTOR_DBW_MSGS::FAULTACTIONSREPORT"))

(in-package "ROS")
;;//! \htmlinclude FaultActionsReport.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass raptor_dbw_msgs::FaultActionsReport
  :super ros::object
  :slots (_header _autonomous_disabled_no_brakes _autonomous_disabled_apply_brakes _can_gateway_disabled _inverter_contactor_disabled _prevent_enter_autonomous_mode _warn_driver_only ))

(defmethod raptor_dbw_msgs::FaultActionsReport
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:autonomous_disabled_no_brakes __autonomous_disabled_no_brakes) nil)
    ((:autonomous_disabled_apply_brakes __autonomous_disabled_apply_brakes) nil)
    ((:can_gateway_disabled __can_gateway_disabled) nil)
    ((:inverter_contactor_disabled __inverter_contactor_disabled) nil)
    ((:prevent_enter_autonomous_mode __prevent_enter_autonomous_mode) nil)
    ((:warn_driver_only __warn_driver_only) nil)
    )
   (send-super :init)
   (setq _header __header)
   (setq _autonomous_disabled_no_brakes __autonomous_disabled_no_brakes)
   (setq _autonomous_disabled_apply_brakes __autonomous_disabled_apply_brakes)
   (setq _can_gateway_disabled __can_gateway_disabled)
   (setq _inverter_contactor_disabled __inverter_contactor_disabled)
   (setq _prevent_enter_autonomous_mode __prevent_enter_autonomous_mode)
   (setq _warn_driver_only __warn_driver_only)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:autonomous_disabled_no_brakes
   (&optional (__autonomous_disabled_no_brakes :null))
   (if (not (eq __autonomous_disabled_no_brakes :null)) (setq _autonomous_disabled_no_brakes __autonomous_disabled_no_brakes)) _autonomous_disabled_no_brakes)
  (:autonomous_disabled_apply_brakes
   (&optional (__autonomous_disabled_apply_brakes :null))
   (if (not (eq __autonomous_disabled_apply_brakes :null)) (setq _autonomous_disabled_apply_brakes __autonomous_disabled_apply_brakes)) _autonomous_disabled_apply_brakes)
  (:can_gateway_disabled
   (&optional (__can_gateway_disabled :null))
   (if (not (eq __can_gateway_disabled :null)) (setq _can_gateway_disabled __can_gateway_disabled)) _can_gateway_disabled)
  (:inverter_contactor_disabled
   (&optional (__inverter_contactor_disabled :null))
   (if (not (eq __inverter_contactor_disabled :null)) (setq _inverter_contactor_disabled __inverter_contactor_disabled)) _inverter_contactor_disabled)
  (:prevent_enter_autonomous_mode
   (&optional (__prevent_enter_autonomous_mode :null))
   (if (not (eq __prevent_enter_autonomous_mode :null)) (setq _prevent_enter_autonomous_mode __prevent_enter_autonomous_mode)) _prevent_enter_autonomous_mode)
  (:warn_driver_only
   (&optional (__warn_driver_only :null))
   (if (not (eq __warn_driver_only :null)) (setq _warn_driver_only __warn_driver_only)) _warn_driver_only)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _autonomous_disabled_no_brakes
    1
    ;; bool _autonomous_disabled_apply_brakes
    1
    ;; bool _can_gateway_disabled
    1
    ;; bool _inverter_contactor_disabled
    1
    ;; bool _prevent_enter_autonomous_mode
    1
    ;; bool _warn_driver_only
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _autonomous_disabled_no_brakes
       (if _autonomous_disabled_no_brakes (write-byte -1 s) (write-byte 0 s))
     ;; bool _autonomous_disabled_apply_brakes
       (if _autonomous_disabled_apply_brakes (write-byte -1 s) (write-byte 0 s))
     ;; bool _can_gateway_disabled
       (if _can_gateway_disabled (write-byte -1 s) (write-byte 0 s))
     ;; bool _inverter_contactor_disabled
       (if _inverter_contactor_disabled (write-byte -1 s) (write-byte 0 s))
     ;; bool _prevent_enter_autonomous_mode
       (if _prevent_enter_autonomous_mode (write-byte -1 s) (write-byte 0 s))
     ;; bool _warn_driver_only
       (if _warn_driver_only (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _autonomous_disabled_no_brakes
     (setq _autonomous_disabled_no_brakes (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _autonomous_disabled_apply_brakes
     (setq _autonomous_disabled_apply_brakes (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _can_gateway_disabled
     (setq _can_gateway_disabled (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _inverter_contactor_disabled
     (setq _inverter_contactor_disabled (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _prevent_enter_autonomous_mode
     (setq _prevent_enter_autonomous_mode (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _warn_driver_only
     (setq _warn_driver_only (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get raptor_dbw_msgs::FaultActionsReport :md5sum-) "01de9bc391b21fe215ee7cfdd1f13e1f")
(setf (get raptor_dbw_msgs::FaultActionsReport :datatype-) "raptor_dbw_msgs/FaultActionsReport")
(setf (get raptor_dbw_msgs::FaultActionsReport :definition-)
      "Header header

bool autonomous_disabled_no_brakes 
bool autonomous_disabled_apply_brakes 
bool can_gateway_disabled 
bool inverter_contactor_disabled 
bool prevent_enter_autonomous_mode 
bool warn_driver_only 
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :raptor_dbw_msgs/FaultActionsReport "01de9bc391b21fe215ee7cfdd1f13e1f")


