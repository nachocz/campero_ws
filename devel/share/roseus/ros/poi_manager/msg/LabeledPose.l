;; Auto-generated. Do not edit!


(when (boundp 'poi_manager::LabeledPose)
  (if (not (find-package "POI_MANAGER"))
    (make-package "POI_MANAGER"))
  (shadow 'LabeledPose (find-package "POI_MANAGER")))
(unless (find-package "POI_MANAGER::LABELEDPOSE")
  (make-package "POI_MANAGER::LABELEDPOSE"))

(in-package "ROS")
;;//! \htmlinclude LabeledPose.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass poi_manager::LabeledPose
  :super ros::object
  :slots (_label _pose ))

(defmethod poi_manager::LabeledPose
  (:init
   (&key
    ((:label __label) "")
    ((:pose __pose) (instance geometry_msgs::Pose2D :init))
    )
   (send-super :init)
   (setq _label (string __label))
   (setq _pose __pose)
   self)
  (:label
   (&optional __label)
   (if __label (setq _label __label)) _label)
  (:pose
   (&rest __pose)
   (if (keywordp (car __pose))
       (send* _pose __pose)
     (progn
       (if __pose (setq _pose (car __pose)))
       _pose)))
  (:serialization-length
   ()
   (+
    ;; string _label
    4 (length _label)
    ;; geometry_msgs/Pose2D _pose
    (send _pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _label
       (write-long (length _label) s) (princ _label s)
     ;; geometry_msgs/Pose2D _pose
       (send _pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _label
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _label (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; geometry_msgs/Pose2D _pose
     (send _pose :deserialize buf ptr-) (incf ptr- (send _pose :serialization-length))
   ;;
   self)
  )

(setf (get poi_manager::LabeledPose :md5sum-) "7a1ec64bf005e8c3b1f7ef1b49fd5d1e")
(setf (get poi_manager::LabeledPose :datatype-) "poi_manager/LabeledPose")
(setf (get poi_manager::LabeledPose :definition-)
      "string label
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



(provide :poi_manager/LabeledPose "7a1ec64bf005e8c3b1f7ef1b49fd5d1e")


