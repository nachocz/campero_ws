
(cl:in-package :asdf)

(defsystem "poi_manager-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :poi_manager-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "ReadPOIs" :depends-on ("_package_ReadPOIs"))
    (:file "_package_ReadPOIs" :depends-on ("_package"))
    (:file "UpdatePOIs" :depends-on ("_package_UpdatePOIs"))
    (:file "_package_UpdatePOIs" :depends-on ("_package"))
  ))