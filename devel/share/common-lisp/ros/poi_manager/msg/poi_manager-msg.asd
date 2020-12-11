
(cl:in-package :asdf)

(defsystem "poi_manager-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "LabeledPose" :depends-on ("_package_LabeledPose"))
    (:file "_package_LabeledPose" :depends-on ("_package"))
  ))