; Auto-generated. Do not edit!


(cl:in-package axis_camera-srv)


;//! \htmlinclude set_ptz-request.msg.html

(cl:defclass <set_ptz-request> (roslisp-msg-protocol:ros-message)
  ((pan
    :reader pan
    :initarg :pan
    :type cl:float
    :initform 0.0)
   (tilt
    :reader tilt
    :initarg :tilt
    :type cl:float
    :initform 0.0)
   (zoom
    :reader zoom
    :initarg :zoom
    :type cl:float
    :initform 0.0)
   (relative
    :reader relative
    :initarg :relative
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass set_ptz-request (<set_ptz-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_ptz-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_ptz-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name axis_camera-srv:<set_ptz-request> is deprecated: use axis_camera-srv:set_ptz-request instead.")))

(cl:ensure-generic-function 'pan-val :lambda-list '(m))
(cl:defmethod pan-val ((m <set_ptz-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader axis_camera-srv:pan-val is deprecated.  Use axis_camera-srv:pan instead.")
  (pan m))

(cl:ensure-generic-function 'tilt-val :lambda-list '(m))
(cl:defmethod tilt-val ((m <set_ptz-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader axis_camera-srv:tilt-val is deprecated.  Use axis_camera-srv:tilt instead.")
  (tilt m))

(cl:ensure-generic-function 'zoom-val :lambda-list '(m))
(cl:defmethod zoom-val ((m <set_ptz-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader axis_camera-srv:zoom-val is deprecated.  Use axis_camera-srv:zoom instead.")
  (zoom m))

(cl:ensure-generic-function 'relative-val :lambda-list '(m))
(cl:defmethod relative-val ((m <set_ptz-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader axis_camera-srv:relative-val is deprecated.  Use axis_camera-srv:relative instead.")
  (relative m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_ptz-request>) ostream)
  "Serializes a message object of type '<set_ptz-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pan))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'tilt))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'zoom))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'relative) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_ptz-request>) istream)
  "Deserializes a message object of type '<set_ptz-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pan) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'tilt) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'zoom) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'relative) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_ptz-request>)))
  "Returns string type for a service object of type '<set_ptz-request>"
  "axis_camera/set_ptzRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_ptz-request)))
  "Returns string type for a service object of type 'set_ptz-request"
  "axis_camera/set_ptzRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_ptz-request>)))
  "Returns md5sum for a message object of type '<set_ptz-request>"
  "b0b0a0b023ba1e7f5ff6a9d48ee0689b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_ptz-request)))
  "Returns md5sum for a message object of type 'set_ptz-request"
  "b0b0a0b023ba1e7f5ff6a9d48ee0689b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_ptz-request>)))
  "Returns full string definition for message of type '<set_ptz-request>"
  (cl:format cl:nil "~%float32 pan~%~%float32 tilt~%~%float32 zoom~%~%bool relative~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_ptz-request)))
  "Returns full string definition for message of type 'set_ptz-request"
  (cl:format cl:nil "~%float32 pan~%~%float32 tilt~%~%float32 zoom~%~%bool relative~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_ptz-request>))
  (cl:+ 0
     4
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_ptz-request>))
  "Converts a ROS message object to a list"
  (cl:list 'set_ptz-request
    (cl:cons ':pan (pan msg))
    (cl:cons ':tilt (tilt msg))
    (cl:cons ':zoom (zoom msg))
    (cl:cons ':relative (relative msg))
))
;//! \htmlinclude set_ptz-response.msg.html

(cl:defclass <set_ptz-response> (roslisp-msg-protocol:ros-message)
  ((ret
    :reader ret
    :initarg :ret
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass set_ptz-response (<set_ptz-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <set_ptz-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'set_ptz-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name axis_camera-srv:<set_ptz-response> is deprecated: use axis_camera-srv:set_ptz-response instead.")))

(cl:ensure-generic-function 'ret-val :lambda-list '(m))
(cl:defmethod ret-val ((m <set_ptz-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader axis_camera-srv:ret-val is deprecated.  Use axis_camera-srv:ret instead.")
  (ret m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <set_ptz-response>) ostream)
  "Serializes a message object of type '<set_ptz-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ret) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <set_ptz-response>) istream)
  "Deserializes a message object of type '<set_ptz-response>"
    (cl:setf (cl:slot-value msg 'ret) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<set_ptz-response>)))
  "Returns string type for a service object of type '<set_ptz-response>"
  "axis_camera/set_ptzResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_ptz-response)))
  "Returns string type for a service object of type 'set_ptz-response"
  "axis_camera/set_ptzResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<set_ptz-response>)))
  "Returns md5sum for a message object of type '<set_ptz-response>"
  "b0b0a0b023ba1e7f5ff6a9d48ee0689b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'set_ptz-response)))
  "Returns md5sum for a message object of type 'set_ptz-response"
  "b0b0a0b023ba1e7f5ff6a9d48ee0689b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<set_ptz-response>)))
  "Returns full string definition for message of type '<set_ptz-response>"
  (cl:format cl:nil "bool ret~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'set_ptz-response)))
  "Returns full string definition for message of type 'set_ptz-response"
  (cl:format cl:nil "bool ret~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <set_ptz-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <set_ptz-response>))
  "Converts a ROS message object to a list"
  (cl:list 'set_ptz-response
    (cl:cons ':ret (ret msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'set_ptz)))
  'set_ptz-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'set_ptz)))
  'set_ptz-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'set_ptz)))
  "Returns string type for a service object of type '<set_ptz>"
  "axis_camera/set_ptz")