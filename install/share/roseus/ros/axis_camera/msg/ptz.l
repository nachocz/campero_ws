;; Auto-generated. Do not edit!


(when (boundp 'axis_camera::ptz)
  (if (not (find-package "AXIS_CAMERA"))
    (make-package "AXIS_CAMERA"))
  (shadow 'ptz (find-package "AXIS_CAMERA")))
(unless (find-package "AXIS_CAMERA::PTZ")
  (make-package "AXIS_CAMERA::PTZ"))

(in-package "ROS")
;;//! \htmlinclude ptz.msg.html


(defclass axis_camera::ptz
  :super ros::object
  :slots (_pan _tilt _zoom _relative ))

(defmethod axis_camera::ptz
  (:init
   (&key
    ((:pan __pan) 0.0)
    ((:tilt __tilt) 0.0)
    ((:zoom __zoom) 0.0)
    ((:relative __relative) nil)
    )
   (send-super :init)
   (setq _pan (float __pan))
   (setq _tilt (float __tilt))
   (setq _zoom (float __zoom))
   (setq _relative __relative)
   self)
  (:pan
   (&optional __pan)
   (if __pan (setq _pan __pan)) _pan)
  (:tilt
   (&optional __tilt)
   (if __tilt (setq _tilt __tilt)) _tilt)
  (:zoom
   (&optional __zoom)
   (if __zoom (setq _zoom __zoom)) _zoom)
  (:relative
   (&optional __relative)
   (if __relative (setq _relative __relative)) _relative)
  (:serialization-length
   ()
   (+
    ;; float32 _pan
    4
    ;; float32 _tilt
    4
    ;; float32 _zoom
    4
    ;; bool _relative
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _pan
       (sys::poke _pan (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _tilt
       (sys::poke _tilt (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _zoom
       (sys::poke _zoom (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _relative
       (if _relative (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _pan
     (setq _pan (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _tilt
     (setq _tilt (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _zoom
     (setq _zoom (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _relative
     (setq _relative (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get axis_camera::ptz :md5sum-) "84c4d3942670b5782592e834a63c50ba")
(setf (get axis_camera::ptz :datatype-) "axis_camera/ptz")
(setf (get axis_camera::ptz :definition-)
      "# PAN value
float32 pan
# Tilt value
float32 tilt
# Zoom value
float32 zoom
# Flag for relative  movements
bool relative


")



(provide :axis_camera/ptz "84c4d3942670b5782592e834a63c50ba")


