;; Auto-generated. Do not edit!


(when (boundp 'drawbot::Custom_interface)
  (if (not (find-package "DRAWBOT"))
    (make-package "DRAWBOT"))
  (shadow 'Custom_interface (find-package "DRAWBOT")))
(unless (find-package "DRAWBOT::CUSTOM_INTERFACE")
  (make-package "DRAWBOT::CUSTOM_INTERFACE"))

(in-package "ROS")
;;//! \htmlinclude Custom_interface.msg.html


(defclass drawbot::Custom_interface
  :super ros::object
  :slots (_x _y ))

(defmethod drawbot::Custom_interface
  (:init
   (&key
    ((:x __x) 0)
    ((:y __y) 0)
    )
   (send-super :init)
   (setq _x (round __x))
   (setq _y (round __y))
   self)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:serialization-length
   ()
   (+
    ;; int16 _x
    2
    ;; int16 _y
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _x
       (write-word _x s)
     ;; int16 _y
       (write-word _y s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _x
     (setq _x (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _y
     (setq _y (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get drawbot::Custom_interface :md5sum-) "6d78a6b8c9650c754bf0432d3d1707c3")
(setf (get drawbot::Custom_interface :datatype-) "drawbot/Custom_interface")
(setf (get drawbot::Custom_interface :definition-)
      "int16 x
int16 y

")



(provide :drawbot/Custom_interface "6d78a6b8c9650c754bf0432d3d1707c3")


