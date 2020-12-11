; Auto-generated. Do not edit!


(cl:in-package poi_manager-srv)


;//! \htmlinclude UpdatePOIs-request.msg.html

(cl:defclass <UpdatePOIs-request> (roslisp-msg-protocol:ros-message)
  ((pose_list
    :reader pose_list
    :initarg :pose_list
    :type (cl:vector poi_manager-msg:LabeledPose)
   :initform (cl:make-array 0 :element-type 'poi_manager-msg:LabeledPose :initial-element (cl:make-instance 'poi_manager-msg:LabeledPose))))
)

(cl:defclass UpdatePOIs-request (<UpdatePOIs-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UpdatePOIs-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UpdatePOIs-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name poi_manager-srv:<UpdatePOIs-request> is deprecated: use poi_manager-srv:UpdatePOIs-request instead.")))

(cl:ensure-generic-function 'pose_list-val :lambda-list '(m))
(cl:defmethod pose_list-val ((m <UpdatePOIs-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader poi_manager-srv:pose_list-val is deprecated.  Use poi_manager-srv:pose_list instead.")
  (pose_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UpdatePOIs-request>) ostream)
  "Serializes a message object of type '<UpdatePOIs-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pose_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'pose_list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UpdatePOIs-request>) istream)
  "Deserializes a message object of type '<UpdatePOIs-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UpdatePOIs-request>)))
  "Returns string type for a service object of type '<UpdatePOIs-request>"
  "poi_manager/UpdatePOIsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UpdatePOIs-request)))
  "Returns string type for a service object of type 'UpdatePOIs-request"
  "poi_manager/UpdatePOIsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UpdatePOIs-request>)))
  "Returns md5sum for a message object of type '<UpdatePOIs-request>"
  "c194e4061af32f29e4bb999eece2910b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UpdatePOIs-request)))
  "Returns md5sum for a message object of type 'UpdatePOIs-request"
  "c194e4061af32f29e4bb999eece2910b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UpdatePOIs-request>)))
  "Returns full string definition for message of type '<UpdatePOIs-request>"
  (cl:format cl:nil "LabeledPose[] pose_list~%~%================================================================================~%MSG: poi_manager/LabeledPose~%string label~%geometry_msgs/Pose2D pose~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UpdatePOIs-request)))
  "Returns full string definition for message of type 'UpdatePOIs-request"
  (cl:format cl:nil "LabeledPose[] pose_list~%~%================================================================================~%MSG: poi_manager/LabeledPose~%string label~%geometry_msgs/Pose2D pose~%~%================================================================================~%MSG: geometry_msgs/Pose2D~%# Deprecated~%# Please use the full 3D pose.~%~%# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.~%~%# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.~%~%~%# This expresses a position and orientation on a 2D manifold.~%~%float64 x~%float64 y~%float64 theta~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UpdatePOIs-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pose_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UpdatePOIs-request>))
  "Converts a ROS message object to a list"
  (cl:list 'UpdatePOIs-request
    (cl:cons ':pose_list (pose_list msg))
))
;//! \htmlinclude UpdatePOIs-response.msg.html

(cl:defclass <UpdatePOIs-response> (roslisp-msg-protocol:ros-message)
  ((empty
    :reader empty
    :initarg :empty
    :type std_msgs-msg:Empty
    :initform (cl:make-instance 'std_msgs-msg:Empty)))
)

(cl:defclass UpdatePOIs-response (<UpdatePOIs-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <UpdatePOIs-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'UpdatePOIs-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name poi_manager-srv:<UpdatePOIs-response> is deprecated: use poi_manager-srv:UpdatePOIs-response instead.")))

(cl:ensure-generic-function 'empty-val :lambda-list '(m))
(cl:defmethod empty-val ((m <UpdatePOIs-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader poi_manager-srv:empty-val is deprecated.  Use poi_manager-srv:empty instead.")
  (empty m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <UpdatePOIs-response>) ostream)
  "Serializes a message object of type '<UpdatePOIs-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'empty) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <UpdatePOIs-response>) istream)
  "Deserializes a message object of type '<UpdatePOIs-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'empty) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<UpdatePOIs-response>)))
  "Returns string type for a service object of type '<UpdatePOIs-response>"
  "poi_manager/UpdatePOIsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UpdatePOIs-response)))
  "Returns string type for a service object of type 'UpdatePOIs-response"
  "poi_manager/UpdatePOIsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<UpdatePOIs-response>)))
  "Returns md5sum for a message object of type '<UpdatePOIs-response>"
  "c194e4061af32f29e4bb999eece2910b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'UpdatePOIs-response)))
  "Returns md5sum for a message object of type 'UpdatePOIs-response"
  "c194e4061af32f29e4bb999eece2910b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<UpdatePOIs-response>)))
  "Returns full string definition for message of type '<UpdatePOIs-response>"
  (cl:format cl:nil "std_msgs/Empty empty~%~%~%================================================================================~%MSG: std_msgs/Empty~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'UpdatePOIs-response)))
  "Returns full string definition for message of type 'UpdatePOIs-response"
  (cl:format cl:nil "std_msgs/Empty empty~%~%~%================================================================================~%MSG: std_msgs/Empty~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <UpdatePOIs-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'empty))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <UpdatePOIs-response>))
  "Converts a ROS message object to a list"
  (cl:list 'UpdatePOIs-response
    (cl:cons ':empty (empty msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'UpdatePOIs)))
  'UpdatePOIs-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'UpdatePOIs)))
  'UpdatePOIs-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'UpdatePOIs)))
  "Returns string type for a service object of type '<UpdatePOIs>"
  "poi_manager/UpdatePOIs")