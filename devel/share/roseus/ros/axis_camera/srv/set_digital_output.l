;; Auto-generated. Do not edit!


(when (boundp 'axis_camera::set_digital_output)
  (if (not (find-package "AXIS_CAMERA"))
    (make-package "AXIS_CAMERA"))
  (shadow 'set_digital_output (find-package "AXIS_CAMERA")))
(unless (find-package "AXIS_CAMERA::SET_DIGITAL_OUTPUT")
  (make-package "AXIS_CAMERA::SET_DIGITAL_OUTPUT"))
(unless (find-package "AXIS_CAMERA::SET_DIGITAL_OUTPUTREQUEST")
  (make-package "AXIS_CAMERA::SET_DIGITAL_OUTPUTREQUEST"))
(unless (find-package "AXIS_CAMERA::SET_DIGITAL_OUTPUTRESPONSE")
  (make-package "AXIS_CAMERA::SET_DIGITAL_OUTPUTRESPONSE"))

(in-package "ROS")





(defclass axis_camera::set_digital_outputRequest
  :super ros::object
  :slots (_output _value ))

(defmethod axis_camera::set_digital_outputRequest
  (:init
   (&key
    ((:output __output) 0)
    ((:value __value) nil)
    )
   (send-super :init)
   (setq _output (round __output))
   (setq _value __value)
   self)
  (:output
   (&optional __output)
   (if __output (setq _output __output)) _output)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; int8 _output
    1
    ;; bool _value
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int8 _output
       (write-byte _output s)
     ;; bool _value
       (if _value (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int8 _output
     (setq _output (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _output 127) (setq _output (- _output 256)))
   ;; bool _value
     (setq _value (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass axis_camera::set_digital_outputResponse
  :super ros::object
  :slots (_ret ))

(defmethod axis_camera::set_digital_outputResponse
  (:init
   (&key
    ((:ret __ret) nil)
    )
   (send-super :init)
   (setq _ret __ret)
   self)
  (:ret
   (&optional __ret)
   (if __ret (setq _ret __ret)) _ret)
  (:serialization-length
   ()
   (+
    ;; bool _ret
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _ret
       (if _ret (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _ret
     (setq _ret (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass axis_camera::set_digital_output
  :super ros::object
  :slots ())

(setf (get axis_camera::set_digital_output :md5sum-) "5df94efb72fc0f5277220bfb51b87d14")
(setf (get axis_camera::set_digital_output :datatype-) "axis_camera/set_digital_output")
(setf (get axis_camera::set_digital_output :request) axis_camera::set_digital_outputRequest)
(setf (get axis_camera::set_digital_output :response) axis_camera::set_digital_outputResponse)

(defmethod axis_camera::set_digital_outputRequest
  (:response () (instance axis_camera::set_digital_outputResponse :init)))

(setf (get axis_camera::set_digital_outputRequest :md5sum-) "5df94efb72fc0f5277220bfb51b87d14")
(setf (get axis_camera::set_digital_outputRequest :datatype-) "axis_camera/set_digital_outputRequest")
(setf (get axis_camera::set_digital_outputRequest :definition-)
      "int8 output
bool value
---
bool ret

")

(setf (get axis_camera::set_digital_outputResponse :md5sum-) "5df94efb72fc0f5277220bfb51b87d14")
(setf (get axis_camera::set_digital_outputResponse :datatype-) "axis_camera/set_digital_outputResponse")
(setf (get axis_camera::set_digital_outputResponse :definition-)
      "int8 output
bool value
---
bool ret

")



(provide :axis_camera/set_digital_output "5df94efb72fc0f5277220bfb51b87d14")


