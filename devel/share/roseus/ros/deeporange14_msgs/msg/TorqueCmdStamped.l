;; Auto-generated. Do not edit!


(when (boundp 'deeporange14_msgs::TorqueCmdStamped)
  (if (not (find-package "DEEPORANGE14_MSGS"))
    (make-package "DEEPORANGE14_MSGS"))
  (shadow 'TorqueCmdStamped (find-package "DEEPORANGE14_MSGS")))
(unless (find-package "DEEPORANGE14_MSGS::TORQUECMDSTAMPED")
  (make-package "DEEPORANGE14_MSGS::TORQUECMDSTAMPED"))

(in-package "ROS")
;;//! \htmlinclude TorqueCmdStamped.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass deeporange14_msgs::TorqueCmdStamped
  :super ros::object
  :slots (_header _left_torque_cmd _right_torque_cmd ))

(defmethod deeporange14_msgs::TorqueCmdStamped
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:left_torque_cmd __left_torque_cmd) 0)
    ((:right_torque_cmd __right_torque_cmd) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _left_torque_cmd (round __left_torque_cmd))
   (setq _right_torque_cmd (round __right_torque_cmd))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:left_torque_cmd
   (&optional __left_torque_cmd)
   (if __left_torque_cmd (setq _left_torque_cmd __left_torque_cmd)) _left_torque_cmd)
  (:right_torque_cmd
   (&optional __right_torque_cmd)
   (if __right_torque_cmd (setq _right_torque_cmd __right_torque_cmd)) _right_torque_cmd)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; int64 _left_torque_cmd
    8
    ;; int64 _right_torque_cmd
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; int64 _left_torque_cmd
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _left_torque_cmd (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _left_torque_cmd) (= (length (_left_torque_cmd . bv)) 2)) ;; bignum
              (write-long (ash (elt (_left_torque_cmd . bv) 0) 0) s)
              (write-long (ash (elt (_left_torque_cmd . bv) 1) -1) s))
             ((and (class _left_torque_cmd) (= (length (_left_torque_cmd . bv)) 1)) ;; big1
              (write-long (elt (_left_torque_cmd . bv) 0) s)
              (write-long (if (>= _left_torque_cmd 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _left_torque_cmd s)(write-long (if (>= _left_torque_cmd 0) 0 #xffffffff) s)))
     ;; int64 _right_torque_cmd
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _right_torque_cmd (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _right_torque_cmd) (= (length (_right_torque_cmd . bv)) 2)) ;; bignum
              (write-long (ash (elt (_right_torque_cmd . bv) 0) 0) s)
              (write-long (ash (elt (_right_torque_cmd . bv) 1) -1) s))
             ((and (class _right_torque_cmd) (= (length (_right_torque_cmd . bv)) 1)) ;; big1
              (write-long (elt (_right_torque_cmd . bv) 0) s)
              (write-long (if (>= _right_torque_cmd 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _right_torque_cmd s)(write-long (if (>= _right_torque_cmd 0) 0 #xffffffff) s)))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; int64 _left_torque_cmd
#+(or :alpha :irix6 :x86_64)
      (setf _left_torque_cmd (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _left_torque_cmd (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; int64 _right_torque_cmd
#+(or :alpha :irix6 :x86_64)
      (setf _right_torque_cmd (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _right_torque_cmd (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;;
   self)
  )

(setf (get deeporange14_msgs::TorqueCmdStamped :md5sum-) "21462a0b7ae1ab76630c08c72de4a6a0")
(setf (get deeporange14_msgs::TorqueCmdStamped :datatype-) "deeporange14_msgs/TorqueCmdStamped")
(setf (get deeporange14_msgs::TorqueCmdStamped :definition-)
      "#Message contains timestamped torque commands
Header header

int64 left_torque_cmd
int64 right_torque_cmd
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



(provide :deeporange14_msgs/TorqueCmdStamped "21462a0b7ae1ab76630c08c72de4a6a0")


