;; Auto-generated. Do not edit!


(when (boundp 'drawbot::Custom)
  (if (not (find-package "DRAWBOT"))
    (make-package "DRAWBOT"))
  (shadow 'Custom (find-package "DRAWBOT")))
(unless (find-package "DRAWBOT::CUSTOM")
  (make-package "DRAWBOT::CUSTOM"))

(in-package "ROS")
;;//! \htmlinclude Custom.msg.html


(defclass drawbot::Custom
  :super ros::object
  :slots (_motor_r _motor_l _change ))

(defmethod drawbot::Custom
  (:init
   (&key
    ((:motor_r __motor_r) 0.0)
    ((:motor_l __motor_l) 0.0)
    ((:change __change) nil)
    )
   (send-super :init)
   (setq _motor_r (float __motor_r))
   (setq _motor_l (float __motor_l))
   (setq _change __change)
   self)
  (:motor_r
   (&optional __motor_r)
   (if __motor_r (setq _motor_r __motor_r)) _motor_r)
  (:motor_l
   (&optional __motor_l)
   (if __motor_l (setq _motor_l __motor_l)) _motor_l)
  (:change
   (&optional (__change :null))
   (if (not (eq __change :null)) (setq _change __change)) _change)
  (:serialization-length
   ()
   (+
    ;; float32 _motor_r
    4
    ;; float32 _motor_l
    4
    ;; bool _change
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _motor_r
       (sys::poke _motor_r (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _motor_l
       (sys::poke _motor_l (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _change
       (if _change (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _motor_r
     (setq _motor_r (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _motor_l
     (setq _motor_l (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _change
     (setq _change (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get drawbot::Custom :md5sum-) "8b3086714753979f6aef080bf1f3ae63")
(setf (get drawbot::Custom :datatype-) "drawbot/Custom")
(setf (get drawbot::Custom :definition-)
      "float32 motor_r
float32 motor_l
bool change

")



(provide :drawbot/Custom "8b3086714753979f6aef080bf1f3ae63")


