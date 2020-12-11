;; Auto-generated. Do not edit!


(when (boundp 'poi_manager::UpdatePOIs)
  (if (not (find-package "POI_MANAGER"))
    (make-package "POI_MANAGER"))
  (shadow 'UpdatePOIs (find-package "POI_MANAGER")))
(unless (find-package "POI_MANAGER::UPDATEPOIS")
  (make-package "POI_MANAGER::UPDATEPOIS"))
(unless (find-package "POI_MANAGER::UPDATEPOISREQUEST")
  (make-package "POI_MANAGER::UPDATEPOISREQUEST"))
(unless (find-package "POI_MANAGER::UPDATEPOISRESPONSE")
  (make-package "POI_MANAGER::UPDATEPOISRESPONSE"))

(in-package "ROS")



(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass poi_manager::UpdatePOIsRequest
  :super ros::object
  :slots (_pose_list ))

(defmethod poi_manager::UpdatePOIsRequest
  (:init
   (&key
    ((:pose_list __pose_list) (let (r) (dotimes (i 0) (push (instance poi_manager::LabeledPose :init) r)) r))
    )
   (send-super :init)
   (setq _pose_list __pose_list)
   self)
  (:pose_list
   (&rest __pose_list)
   (if (keywordp (car __pose_list))
       (send* _pose_list __pose_list)
     (progn
       (if __pose_list (setq _pose_list (car __pose_list)))
       _pose_list)))
  (:serialization-length
   ()
   (+
    ;; poi_manager/LabeledPose[] _pose_list
    (apply #'+ (send-all _pose_list :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; poi_manager/LabeledPose[] _pose_list
     (write-long (length _pose_list) s)
     (dolist (elem _pose_list)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; poi_manager/LabeledPose[] _pose_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pose_list (let (r) (dotimes (i n) (push (instance poi_manager::LabeledPose :init) r)) r))
     (dolist (elem- _pose_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass poi_manager::UpdatePOIsResponse
  :super ros::object
  :slots (_empty ))

(defmethod poi_manager::UpdatePOIsResponse
  (:init
   (&key
    ((:empty __empty) (instance std_msgs::Empty :init))
    )
   (send-super :init)
   (setq _empty __empty)
   self)
  (:empty
   (&rest __empty)
   (if (keywordp (car __empty))
       (send* _empty __empty)
     (progn
       (if __empty (setq _empty (car __empty)))
       _empty)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Empty _empty
    (send _empty :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Empty _empty
       (send _empty :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Empty _empty
     (send _empty :deserialize buf ptr-) (incf ptr- (send _empty :serialization-length))
   ;;
   self)
  )

(defclass poi_manager::UpdatePOIs
  :super ros::object
  :slots ())

(setf (get poi_manager::UpdatePOIs :md5sum-) "c194e4061af32f29e4bb999eece2910b")
(setf (get poi_manager::UpdatePOIs :datatype-) "poi_manager/UpdatePOIs")
(setf (get poi_manager::UpdatePOIs :request) poi_manager::UpdatePOIsRequest)
(setf (get poi_manager::UpdatePOIs :response) poi_manager::UpdatePOIsResponse)

(defmethod poi_manager::UpdatePOIsRequest
  (:response () (instance poi_manager::UpdatePOIsResponse :init)))

(setf (get poi_manager::UpdatePOIsRequest :md5sum-) "c194e4061af32f29e4bb999eece2910b")
(setf (get poi_manager::UpdatePOIsRequest :datatype-) "poi_manager/UpdatePOIsRequest")
(setf (get poi_manager::UpdatePOIsRequest :definition-)
      "LabeledPose[] pose_list

================================================================================
MSG: poi_manager/LabeledPose
string label
geometry_msgs/Pose2D pose

================================================================================
MSG: geometry_msgs/Pose2D
# Deprecated
# Please use the full 3D pose.

# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.

# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.


# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta
---
std_msgs/Empty empty


================================================================================
MSG: std_msgs/Empty
")

(setf (get poi_manager::UpdatePOIsResponse :md5sum-) "c194e4061af32f29e4bb999eece2910b")
(setf (get poi_manager::UpdatePOIsResponse :datatype-) "poi_manager/UpdatePOIsResponse")
(setf (get poi_manager::UpdatePOIsResponse :definition-)
      "LabeledPose[] pose_list

================================================================================
MSG: poi_manager/LabeledPose
string label
geometry_msgs/Pose2D pose

================================================================================
MSG: geometry_msgs/Pose2D
# Deprecated
# Please use the full 3D pose.

# In general our recommendation is to use a full 3D representation of everything and for 2D specific applications make the appropriate projections into the plane for their calculations but optimally will preserve the 3D information during processing.

# If we have parallel copies of 2D datatypes every UI and other pipeline will end up needing to have dual interfaces to plot everything. And you will end up with not being able to use 3D tools for 2D use cases even if they're completely valid, as you'd have to reimplement it with different inputs and outputs. It's not particularly hard to plot the 2D pose or compute the yaw error for the Pose message and there are already tools and libraries that can do this for you.


# This expresses a position and orientation on a 2D manifold.

float64 x
float64 y
float64 theta
---
std_msgs/Empty empty


================================================================================
MSG: std_msgs/Empty
")



(provide :poi_manager/UpdatePOIs "c194e4061af32f29e4bb999eece2910b")


