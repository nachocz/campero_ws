; Auto-generated. Do not edit!


(cl:in-package poi_manager-srv)


;//! \htmlinclude ReadPOIs-request.msg.html

(cl:defclass <ReadPOIs-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ReadPOIs-request (<ReadPOIs-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ReadPOIs-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ReadPOIs-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name poi_manager-srv:<ReadPOIs-request> is deprecated: use poi_manager-srv:ReadPOIs-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ReadPOIs-request>) ostream)
  "Serializes a message object of type '<ReadPOIs-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ReadPOIs-request>) istream)
  "Deserializes a message object of type '<ReadPOIs-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ReadPOIs-request>)))
  "Returns string type for a service object of type '<ReadPOIs-request>"
  "poi_manager/ReadPOIsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReadPOIs-request)))
  "Returns string type for a service object of type 'ReadPOIs-request"
  "poi_manager/ReadPOIsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ReadPOIs-request>)))
  "Returns md5sum for a message object of type '<ReadPOIs-request>"
  "c28755b56158f239ec1c46a03550b3d2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ReadPOIs-request)))
  "Returns md5sum for a message object of type 'ReadPOIs-request"
  "c28755b56158f239ec1c46a03550b3d2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ReadPOIs-request>)))
  "Returns full string definition for message of type '<ReadPOIs-request>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ReadPOIs-request)))
  "Returns full string definition for message of type 'ReadPOIs-request"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ReadPOIs-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ReadPOIs-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ReadPOIs-request
))
;//! \htmlinclude ReadPOIs-response.msg.html

(cl:defclass <ReadPOIs-response> (roslisp-msg-protocol:ros-message)
  ((pose_list
    :reader pose_list
    :initarg :pose_list
    :type (cl:vector poi_manager-msg:LabeledPose)
   :initform (cl:make-array 0 :element-type 'poi_manager-msg:LabeledPose :initial-element (cl:make-instance 'poi_manager-msg:LabeledPose))))
)

(cl:defclass ReadPOIs-response (<ReadPOIs-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ReadPOIs-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ReadPOIs-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name poi_manager-srv:<ReadPOIs-response> is deprecated: use poi_manager-srv:ReadPOIs-response instead.")))

(cl:ensure-generic-function 'pose_list-val :lambda-list '(m))
(cl:defmethod pose_list-val ((m <ReadPOIs-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader poi_manager-srv:pose_list-val is deprecated.  Use poi_manager-srv:pose_list instead.")
  (pose_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ReadPOIs-response>) ostream)
  "Serializes a message object of type '<ReadPOIs-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pose_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'pose_list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ReadPOIs-response>) istream)
  "Deserializes a message object of type '<ReadPOIs-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pose_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pose_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'poi_manager-msg:LabeledPose))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ReadPOIs-response>)))
  "Returns string type for a service object of type '<ReadPOIs-response>"
  "poi_manager/ReadPOIsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReadPOIs-response)))
  "Returns string type for a service object of type 'ReadPOIs-response"
  "poi_manager/ReadPOIsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ReadPOIs-response>)))
  "Returns md5sum for a message object of type '<ReadPOIs-response>"
  "c28755b56158f239ec1c46a03550b3d2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ReadPOIs-response)))
  "Returns md5sum for a message object of type 'ReadPOIs-response"
  "c28755b56158f239ec1c46a03550b3d2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ReadPOIs-response>)))
  "Returns full string definition for message of type '<ReadPOIs-response>"
  (cl:format cl:nil "LabeledPose[] pose_list~%~%~%================================================================================~%MSG: poi_manager/LabeledPose~%string label~%geometry_msgs/Pose2D pose~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ReadPOIs-response)))
  "Returns full string definition for message of type 'ReadPOIs-response"
  (cl:format cl:nil "LabeledPose[] pose_list~%~%~%================================================================================~%MSG: poi_manager/LabeledPose~%string label~%geometry_msgs/Pose2D pose~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ReadPOIs-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pose_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ReadPOIs-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ReadPOIs-response
    (cl:cons ':pose_list (pose_list msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ReadPOIs)))
  'ReadPOIs-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ReadPOIs)))
  'ReadPOIs-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReadPOIs)))
  "Returns string type for a service object of type '<ReadPOIs>"
  "poi_manager/ReadPOIs")