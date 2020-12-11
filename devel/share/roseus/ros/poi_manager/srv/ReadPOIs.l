;; Auto-generated. Do not edit!


(when (boundp 'poi_manager::ReadPOIs)
  (if (not (find-package "POI_MANAGER"))
    (make-package "POI_MANAGER"))
  (shadow 'ReadPOIs (find-package "POI_MANAGER")))
(unless (find-package "POI_MANAGER::READPOIS")
  (make-package "POI_MANAGER::READPOIS"))
(unless (find-package "POI_MANAGER::READPOISREQUEST")
  (make-package "POI_MANAGER::READPOISREQUEST"))
(unless (find-package "POI_MANAGER::READPOISRESPONSE")
  (make-package "POI_MANAGER::READPOISRESPONSE"))

(in-package "ROS")





(defclass poi_manager::ReadPOIsRequest
  :super ros::object
  :slots ())

(defmethod poi_manager::ReadPOIsRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass poi_manager::ReadPOIsResponse
  :super ros::object
  :slots (_pose_list ))

(defmethod poi_manager::ReadPOIsResponse
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

(defclass poi_manager::ReadPOIs
  :super ros::object
  :slots ())

(setf (get poi_manager::ReadPOIs :md5sum-) "c28755b56158f239ec1c46a03550b3d2")
(setf (get poi_manager::ReadPOIs :datatype-) "poi_manager/ReadPOIs")
(setf (get poi_manager::ReadPOIs :request) poi_manager::ReadPOIsRequest)
(setf (get poi_manager::ReadPOIs :response) poi_manager::ReadPOIsResponse)

(defmethod poi_manager::ReadPOIsRequest
  (:response () (instance poi_manager::ReadPOIsResponse :init)))

(setf (get poi_manager::ReadPOIsRequest :md5sum-) "c28755b56158f239ec1c46a03550b3d2")
(setf (get poi_manager::ReadPOIsRequest :datatype-) "poi_manager/ReadPOIsRequest")
(setf (get poi_manager::ReadPOIsRequest :definition-)
      "---
LabeledPose[] pose_list


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
")

(setf (get poi_manager::ReadPOIsResponse :md5sum-) "c28755b56158f239ec1c46a03550b3d2")
(setf (get poi_manager::ReadPOIsResponse :datatype-) "poi_manager/ReadPOIsResponse")
(setf (get poi_manager::ReadPOIsResponse :definition-)
      "---
LabeledPose[] pose_list


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
")



(provide :poi_manager/ReadPOIs "c28755b56158f239ec1c46a03550b3d2")


