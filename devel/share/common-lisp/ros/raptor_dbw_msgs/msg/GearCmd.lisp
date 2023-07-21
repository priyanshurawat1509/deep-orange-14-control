; Auto-generated. Do not edit!


(cl:in-package raptor_dbw_msgs-msg)


;//! \htmlinclude GearCmd.msg.html

(cl:defclass <GearCmd> (roslisp-msg-protocol:ros-message)
  ((cmd
    :reader cmd
    :initarg :cmd
    :type raptor_dbw_msgs-msg:Gear
    :initform (cl:make-instance 'raptor_dbw_msgs-msg:Gear))
   (enable
    :reader enable
    :initarg :enable
    :type cl:boolean
    :initform cl:nil)
   (rolling_counter
    :reader rolling_counter
    :initarg :rolling_counter
    :type cl:fixnum
    :initform 0))
)

(cl:defclass GearCmd (<GearCmd>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GearCmd>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GearCmd)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name raptor_dbw_msgs-msg:<GearCmd> is deprecated: use raptor_dbw_msgs-msg:GearCmd instead.")))

(cl:ensure-generic-function 'cmd-val :lambda-list '(m))
(cl:defmethod cmd-val ((m <GearCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader raptor_dbw_msgs-msg:cmd-val is deprecated.  Use raptor_dbw_msgs-msg:cmd instead.")
  (cmd m))

(cl:ensure-generic-function 'enable-val :lambda-list '(m))
(cl:defmethod enable-val ((m <GearCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader raptor_dbw_msgs-msg:enable-val is deprecated.  Use raptor_dbw_msgs-msg:enable instead.")
  (enable m))

(cl:ensure-generic-function 'rolling_counter-val :lambda-list '(m))
(cl:defmethod rolling_counter-val ((m <GearCmd>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader raptor_dbw_msgs-msg:rolling_counter-val is deprecated.  Use raptor_dbw_msgs-msg:rolling_counter instead.")
  (rolling_counter m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GearCmd>) ostream)
  "Serializes a message object of type '<GearCmd>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cmd) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'enable) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rolling_counter)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GearCmd>) istream)
  "Deserializes a message object of type '<GearCmd>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cmd) istream)
    (cl:setf (cl:slot-value msg 'enable) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'rolling_counter)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GearCmd>)))
  "Returns string type for a message object of type '<GearCmd>"
  "raptor_dbw_msgs/GearCmd")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GearCmd)))
  "Returns string type for a message object of type 'GearCmd"
  "raptor_dbw_msgs/GearCmd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GearCmd>)))
  "Returns md5sum for a message object of type '<GearCmd>"
  "027cd3ac0dc88e7a6b14c572a1f9c377")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GearCmd)))
  "Returns md5sum for a message object of type 'GearCmd"
  "027cd3ac0dc88e7a6b14c572a1f9c377")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GearCmd>)))
  "Returns full string definition for message of type '<GearCmd>"
  (cl:format cl:nil "# Gear command enumeration~%Gear cmd~%~%bool enable~%~%# Watchdog counter~%uint8 rolling_counter~%~%================================================================================~%MSG: raptor_dbw_msgs/Gear~%uint8 gear~%~%uint8 NONE=0~%uint8 PARK=1~%uint8 REVERSE=2~%uint8 NEUTRAL=3~%uint8 DRIVE=4~%uint8 LOW=5~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GearCmd)))
  "Returns full string definition for message of type 'GearCmd"
  (cl:format cl:nil "# Gear command enumeration~%Gear cmd~%~%bool enable~%~%# Watchdog counter~%uint8 rolling_counter~%~%================================================================================~%MSG: raptor_dbw_msgs/Gear~%uint8 gear~%~%uint8 NONE=0~%uint8 PARK=1~%uint8 REVERSE=2~%uint8 NEUTRAL=3~%uint8 DRIVE=4~%uint8 LOW=5~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GearCmd>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cmd))
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GearCmd>))
  "Converts a ROS message object to a list"
  (cl:list 'GearCmd
    (cl:cons ':cmd (cmd msg))
    (cl:cons ':enable (enable msg))
    (cl:cons ':rolling_counter (rolling_counter msg))
))
