; Auto-generated. Do not edit!


(cl:in-package poi_manager-msg)


;//! \htmlinclude LabeledPose.msg.html

(cl:defclass <LabeledPose> (roslisp-msg-protocol:ros-message)
  ((label
    :reader label
    :initarg :label
    :type cl:string
    :initform "")
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose2D
    :initform (cl:make-instance 'geometry_msgs-msg:Pose2D)))
)

(cl:defclass LabeledPose (<LabeledPose>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LabeledPose>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LabeledPose)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name poi_manager-msg:<LabeledPose> is deprecated: use poi_manager-msg:LabeledPose instead.")))

(cl:ensure-generic-function 'label-val :lambda-list '(m))
(cl:defmethod label-val ((m <LabeledPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader poi_manager-msg:label-val is deprecated.  Use poi_manager-msg:label instead.")
  (label m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <LabeledPose>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader poi_manager-msg:pose-val is deprecated.  Use poi_manager-msg:pose instead.")
  (pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LabeledPose>) ostream)
  "Serializes a message object of type '<LabeledPose>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'label))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'label))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LabeledPose>) istream)
  "Deserializes a message object of type '<LabeledPose>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'label) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'label) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LabeledPose>)))
  "Returns string type for a message object of type '<LabeledPose>"
  "poi_manager/LabeledPose")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LabeledPose)))
  "Returns string type for a message object of type 'LabeledPose"
  "poi_manager/LabeledPose")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LabeledPose>)))
  "Returns md5sum for a message object of type '<LabeledPose>"
  "7a1ec64bf005e8c3b1f7ef1b49fd5d1e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LabeledPose)))
  "Returns md5sum for a message object of type 'LabeledPose"
  "7a1ec64bf005e8c3b1f7ef1b49fd5d1e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LabeledPose>)))
  "Returns full string definition for message of type '<LabeledPose>"
  (cl:format cl:nil "string label~%geometry_msgs/Pose2D pose~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LabeledPose)))
  "Returns full string definition for message of type 'LabeledPose"
  (cl:format cl:nil "string label~%geometry_msgs/Pose2D pose~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LabeledPose>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'label))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LabeledPose>))
  "Converts a ROS message object to a list"
  (cl:list 'LabeledPose
    (cl:cons ':label (label msg))
    (cl:cons ':pose (pose msg))
))
