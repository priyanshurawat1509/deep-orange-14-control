;; Auto-generated. Do not edit!


(when (boundp 'raptor_dbw_msgs::GearCmd)
  (if (not (find-package "RAPTOR_DBW_MSGS"))
    (make-package "RAPTOR_DBW_MSGS"))
  (shadow 'GearCmd (find-package "RAPTOR_DBW_MSGS")))
(unless (find-package "RAPTOR_DBW_MSGS::GEARCMD")
  (make-package "RAPTOR_DBW_MSGS::GEARCMD"))

(in-package "ROS")
;;//! \htmlinclude GearCmd.msg.html


(defclass raptor_dbw_msgs::GearCmd
  :super ros::object
  :slots (_cmd _enable _rolling_counter ))

(defmethod raptor_dbw_msgs::GearCmd
  (:init
   (&key
    ((:cmd __cmd) (instance raptor_dbw_msgs::Gear :init))
    ((:enable __enable) nil)
    ((:rolling_counter __rolling_counter) 0)
    )
   (send-super :init)
   (setq _cmd __cmd)
   (setq _enable __enable)
   (setq _rolling_counter (round __rolling_counter))
   self)
  (:cmd
   (&rest __cmd)
   (if (keywordp (car __cmd))
       (send* _cmd __cmd)
     (progn
       (if __cmd (setq _cmd (car __cmd)))
       _cmd)))
  (:enable
   (&optional (__enable :null))
   (if (not (eq __enable :null)) (setq _enable __enable)) _enable)
  (:rolling_counter
   (&optional __rolling_counter)
   (if __rolling_counter (setq _rolling_counter __rolling_counter)) _rolling_counter)
  (:serialization-length
   ()
   (+
    ;; raptor_dbw_msgs/Gear _cmd
    (send _cmd :serialization-length)
    ;; bool _enable
    1
    ;; uint8 _rolling_counter
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; raptor_dbw_msgs/Gear _cmd
       (send _cmd :serialize s)
     ;; bool _enable
       (if _enable (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _rolling_counter
       (write-byte _rolling_counter s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; raptor_dbw_msgs/Gear _cmd
     (send _cmd :deserialize buf ptr-) (incf ptr- (send _cmd :serialization-length))
   ;; bool _enable
     (setq _enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _rolling_counter
     (setq _rolling_counter (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get raptor_dbw_msgs::GearCmd :md5sum-) "027cd3ac0dc88e7a6b14c572a1f9c377")
(setf (get raptor_dbw_msgs::GearCmd :datatype-) "raptor_dbw_msgs/GearCmd")
(setf (get raptor_dbw_msgs::GearCmd :definition-)
      "# Gear command enumeration
Gear cmd

bool enable

# Watchdog counter
uint8 rolling_counter

================================================================================
MSG: raptor_dbw_msgs/Gear
uint8 gear

uint8 NONE=0
uint8 PARK=1
uint8 REVERSE=2
uint8 NEUTRAL=3
uint8 DRIVE=4
uint8 LOW=5

")



(provide :raptor_dbw_msgs/GearCmd "027cd3ac0dc88e7a6b14c572a1f9c377")


