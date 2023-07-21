; Auto-generated. Do not edit!


(cl:in-package raptor_dbw_msgs-msg)


;//! \htmlinclude HornState.msg.html

(cl:defclass <HornState> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0))
)

(cl:defclass HornState (<HornState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HornState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HornState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name raptor_dbw_msgs-msg:<HornState> is deprecated: use raptor_dbw_msgs-msg:HornState instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <HornState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader raptor_dbw_msgs-msg:status-val is deprecated.  Use raptor_dbw_msgs-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<HornState>)))
    "Constants for message type '<HornState>"
  '((:OFF . 0)
    (:ON . 1)
    (:SNA . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'HornState)))
    "Constants for message type 'HornState"
  '((:OFF . 0)
    (:ON . 1)
    (:SNA . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HornState>) ostream)
  "Serializes a message object of type '<HornState>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HornState>) istream)
  "Deserializes a message object of type '<HornState>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HornState>)))
  "Returns string type for a message object of type '<HornState>"
  "raptor_dbw_msgs/HornState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HornState)))
  "Returns string type for a message object of type 'HornState"
  "raptor_dbw_msgs/HornState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HornState>)))
  "Returns md5sum for a message object of type '<HornState>"
  "317e8e9ee6105e8f8dcd663585539324")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HornState)))
  "Returns md5sum for a message object of type 'HornState"
  "317e8e9ee6105e8f8dcd663585539324")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HornState>)))
  "Returns full string definition for message of type '<HornState>"
  (cl:format cl:nil "uint8 status~%~%uint8 OFF = 0~%uint8 ON = 1~%uint8 SNA = 2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HornState)))
  "Returns full string definition for message of type 'HornState"
  (cl:format cl:nil "uint8 status~%~%uint8 OFF = 0~%uint8 ON = 1~%uint8 SNA = 2~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HornState>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HornState>))
  "Converts a ROS message object to a list"
  (cl:list 'HornState
    (cl:cons ':status (status msg))
))
