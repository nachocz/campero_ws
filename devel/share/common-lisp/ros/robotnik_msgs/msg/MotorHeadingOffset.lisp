; Auto-generated. Do not edit!


(cl:in-package robotnik_msgs-msg)


;//! \htmlinclude MotorHeadingOffset.msg.html

(cl:defclass <MotorHeadingOffset> (roslisp-msg-protocol:ros-message)
  ((motor
    :reader motor
    :initarg :motor
    :type cl:integer
    :initform 0)
   (value
    :reader value
    :initarg :value
    :type cl:integer
    :initform 0))
)

(cl:defclass MotorHeadingOffset (<MotorHeadingOffset>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MotorHeadingOffset>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MotorHeadingOffset)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robotnik_msgs-msg:<MotorHeadingOffset> is deprecated: use robotnik_msgs-msg:MotorHeadingOffset instead.")))

(cl:ensure-generic-function 'motor-val :lambda-list '(m))
(cl:defmethod motor-val ((m <MotorHeadingOffset>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:motor-val is deprecated.  Use robotnik_msgs-msg:motor instead.")
  (motor m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <MotorHeadingOffset>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robotnik_msgs-msg:value-val is deprecated.  Use robotnik_msgs-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MotorHeadingOffset>) ostream)
  "Serializes a message object of type '<MotorHeadingOffset>"
  (cl:let* ((signed (cl:slot-value msg 'motor)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'value)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MotorHeadingOffset>) istream)
  "Deserializes a message object of type '<MotorHeadingOffset>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'motor) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'value) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MotorHeadingOffset>)))
  "Returns string type for a message object of type '<MotorHeadingOffset>"
  "robotnik_msgs/MotorHeadingOffset")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MotorHeadingOffset)))
  "Returns string type for a message object of type 'MotorHeadingOffset"
  "robotnik_msgs/MotorHeadingOffset")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MotorHeadingOffset>)))
  "Returns md5sum for a message object of type '<MotorHeadingOffset>"
  "91d084ef370cb511a15a5057cdc2902e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MotorHeadingOffset)))
  "Returns md5sum for a message object of type 'MotorHeadingOffset"
  "91d084ef370cb511a15a5057cdc2902e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MotorHeadingOffset>)))
  "Returns full string definition for message of type '<MotorHeadingOffset>"
  (cl:format cl:nil "int32 motor~%int32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MotorHeadingOffset)))
  "Returns full string definition for message of type 'MotorHeadingOffset"
  (cl:format cl:nil "int32 motor~%int32 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MotorHeadingOffset>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MotorHeadingOffset>))
  "Converts a ROS message object to a list"
  (cl:list 'MotorHeadingOffset
    (cl:cons ':motor (motor msg))
    (cl:cons ':value (value msg))
))
