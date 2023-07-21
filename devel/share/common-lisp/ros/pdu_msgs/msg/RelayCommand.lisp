; Auto-generated. Do not edit!


(cl:in-package pdu_msgs-msg)


;//! \htmlinclude RelayCommand.msg.html

(cl:defclass <RelayCommand> (roslisp-msg-protocol:ros-message)
  ((relay_1
    :reader relay_1
    :initarg :relay_1
    :type pdu_msgs-msg:RelayState
    :initform (cl:make-instance 'pdu_msgs-msg:RelayState))
   (relay_2
    :reader relay_2
    :initarg :relay_2
    :type pdu_msgs-msg:RelayState
    :initform (cl:make-instance 'pdu_msgs-msg:RelayState))
   (relay_3
    :reader relay_3
    :initarg :relay_3
    :type pdu_msgs-msg:RelayState
    :initform (cl:make-instance 'pdu_msgs-msg:RelayState))
   (relay_4
    :reader relay_4
    :initarg :relay_4
    :type pdu_msgs-msg:RelayState
    :initform (cl:make-instance 'pdu_msgs-msg:RelayState))
   (relay_5
    :reader relay_5
    :initarg :relay_5
    :type pdu_msgs-msg:RelayState
    :initform (cl:make-instance 'pdu_msgs-msg:RelayState))
   (relay_6
    :reader relay_6
    :initarg :relay_6
    :type pdu_msgs-msg:RelayState
    :initform (cl:make-instance 'pdu_msgs-msg:RelayState))
   (relay_7
    :reader relay_7
    :initarg :relay_7
    :type pdu_msgs-msg:RelayState
    :initform (cl:make-instance 'pdu_msgs-msg:RelayState))
   (relay_8
    :reader relay_8
    :initarg :relay_8
    :type pdu_msgs-msg:RelayState
    :initform (cl:make-instance 'pdu_msgs-msg:RelayState)))
)

(cl:defclass RelayCommand (<RelayCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RelayCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RelayCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name pdu_msgs-msg:<RelayCommand> is deprecated: use pdu_msgs-msg:RelayCommand instead.")))

(cl:ensure-generic-function 'relay_1-val :lambda-list '(m))
(cl:defmethod relay_1-val ((m <RelayCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pdu_msgs-msg:relay_1-val is deprecated.  Use pdu_msgs-msg:relay_1 instead.")
  (relay_1 m))

(cl:ensure-generic-function 'relay_2-val :lambda-list '(m))
(cl:defmethod relay_2-val ((m <RelayCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pdu_msgs-msg:relay_2-val is deprecated.  Use pdu_msgs-msg:relay_2 instead.")
  (relay_2 m))

(cl:ensure-generic-function 'relay_3-val :lambda-list '(m))
(cl:defmethod relay_3-val ((m <RelayCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pdu_msgs-msg:relay_3-val is deprecated.  Use pdu_msgs-msg:relay_3 instead.")
  (relay_3 m))

(cl:ensure-generic-function 'relay_4-val :lambda-list '(m))
(cl:defmethod relay_4-val ((m <RelayCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pdu_msgs-msg:relay_4-val is deprecated.  Use pdu_msgs-msg:relay_4 instead.")
  (relay_4 m))

(cl:ensure-generic-function 'relay_5-val :lambda-list '(m))
(cl:defmethod relay_5-val ((m <RelayCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pdu_msgs-msg:relay_5-val is deprecated.  Use pdu_msgs-msg:relay_5 instead.")
  (relay_5 m))

(cl:ensure-generic-function 'relay_6-val :lambda-list '(m))
(cl:defmethod relay_6-val ((m <RelayCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pdu_msgs-msg:relay_6-val is deprecated.  Use pdu_msgs-msg:relay_6 instead.")
  (relay_6 m))

(cl:ensure-generic-function 'relay_7-val :lambda-list '(m))
(cl:defmethod relay_7-val ((m <RelayCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pdu_msgs-msg:relay_7-val is deprecated.  Use pdu_msgs-msg:relay_7 instead.")
  (relay_7 m))

(cl:ensure-generic-function 'relay_8-val :lambda-list '(m))
(cl:defmethod relay_8-val ((m <RelayCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader pdu_msgs-msg:relay_8-val is deprecated.  Use pdu_msgs-msg:relay_8 instead.")
  (relay_8 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RelayCommand>) ostream)
  "Serializes a message object of type '<RelayCommand>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'relay_1) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'relay_2) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'relay_3) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'relay_4) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'relay_5) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'relay_6) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'relay_7) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'relay_8) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RelayCommand>) istream)
  "Deserializes a message object of type '<RelayCommand>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'relay_1) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'relay_2) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'relay_3) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'relay_4) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'relay_5) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'relay_6) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'relay_7) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'relay_8) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RelayCommand>)))
  "Returns string type for a message object of type '<RelayCommand>"
  "pdu_msgs/RelayCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RelayCommand)))
  "Returns string type for a message object of type 'RelayCommand"
  "pdu_msgs/RelayCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RelayCommand>)))
  "Returns md5sum for a message object of type '<RelayCommand>"
  "2244ce8be7c2912abb85c303db68d2b3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RelayCommand)))
  "Returns md5sum for a message object of type 'RelayCommand"
  "2244ce8be7c2912abb85c303db68d2b3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RelayCommand>)))
  "Returns full string definition for message of type '<RelayCommand>"
  (cl:format cl:nil "# Relay state enumerations~%~%RelayState relay_1~%RelayState relay_2~%RelayState relay_3~%RelayState relay_4~%RelayState relay_5~%RelayState relay_6~%RelayState relay_7~%RelayState relay_8~%~%================================================================================~%MSG: pdu_msgs/RelayState~%uint8 value~%~%# MAINTAIN_STATE items perform the same function.~%uint8 RELAY_OFF = 0~%uint8 RELAY_ON = 1~%uint8 MAINTAIN_STATE = 2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RelayCommand)))
  "Returns full string definition for message of type 'RelayCommand"
  (cl:format cl:nil "# Relay state enumerations~%~%RelayState relay_1~%RelayState relay_2~%RelayState relay_3~%RelayState relay_4~%RelayState relay_5~%RelayState relay_6~%RelayState relay_7~%RelayState relay_8~%~%================================================================================~%MSG: pdu_msgs/RelayState~%uint8 value~%~%# MAINTAIN_STATE items perform the same function.~%uint8 RELAY_OFF = 0~%uint8 RELAY_ON = 1~%uint8 MAINTAIN_STATE = 2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RelayCommand>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'relay_1))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'relay_2))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'relay_3))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'relay_4))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'relay_5))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'relay_6))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'relay_7))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'relay_8))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RelayCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'RelayCommand
    (cl:cons ':relay_1 (relay_1 msg))
    (cl:cons ':relay_2 (relay_2 msg))
    (cl:cons ':relay_3 (relay_3 msg))
    (cl:cons ':relay_4 (relay_4 msg))
    (cl:cons ':relay_5 (relay_5 msg))
    (cl:cons ':relay_6 (relay_6 msg))
    (cl:cons ':relay_7 (relay_7 msg))
    (cl:cons ':relay_8 (relay_8 msg))
))
