;; Auto-generated. Do not edit!


(when (boundp 'drawbot::Data_arduino)
  (if (not (find-package "DRAWBOT"))
    (make-package "DRAWBOT"))
  (shadow 'Data_arduino (find-package "DRAWBOT")))
(unless (find-package "DRAWBOT::DATA_ARDUINO")
  (make-package "DRAWBOT::DATA_ARDUINO"))

(in-package "ROS")
;;//! \htmlinclude Data_arduino.msg.html


(defclass drawbot::Data_arduino
  :super ros::object
  :slots (_ref_speed_r _ref_speed_l _mesu_speed_r _mesu_speed_l _controller_speed_r _controller_speed_l _err_speed_r _err_speed_l _err_sum_speed_r _err_sum_speed_l _time_of_measure ))

(defmethod drawbot::Data_arduino
  (:init
   (&key
    ((:ref_speed_r __ref_speed_r) 0.0)
    ((:ref_speed_l __ref_speed_l) 0.0)
    ((:mesu_speed_r __mesu_speed_r) 0.0)
    ((:mesu_speed_l __mesu_speed_l) 0.0)
    ((:controller_speed_r __controller_speed_r) 0.0)
    ((:controller_speed_l __controller_speed_l) 0.0)
    ((:err_speed_r __err_speed_r) 0.0)
    ((:err_speed_l __err_speed_l) 0.0)
    ((:err_sum_speed_r __err_sum_speed_r) 0.0)
    ((:err_sum_speed_l __err_sum_speed_l) 0.0)
    ((:time_of_measure __time_of_measure) 0.0)
    )
   (send-super :init)
   (setq _ref_speed_r (float __ref_speed_r))
   (setq _ref_speed_l (float __ref_speed_l))
   (setq _mesu_speed_r (float __mesu_speed_r))
   (setq _mesu_speed_l (float __mesu_speed_l))
   (setq _controller_speed_r (float __controller_speed_r))
   (setq _controller_speed_l (float __controller_speed_l))
   (setq _err_speed_r (float __err_speed_r))
   (setq _err_speed_l (float __err_speed_l))
   (setq _err_sum_speed_r (float __err_sum_speed_r))
   (setq _err_sum_speed_l (float __err_sum_speed_l))
   (setq _time_of_measure (float __time_of_measure))
   self)
  (:ref_speed_r
   (&optional __ref_speed_r)
   (if __ref_speed_r (setq _ref_speed_r __ref_speed_r)) _ref_speed_r)
  (:ref_speed_l
   (&optional __ref_speed_l)
   (if __ref_speed_l (setq _ref_speed_l __ref_speed_l)) _ref_speed_l)
  (:mesu_speed_r
   (&optional __mesu_speed_r)
   (if __mesu_speed_r (setq _mesu_speed_r __mesu_speed_r)) _mesu_speed_r)
  (:mesu_speed_l
   (&optional __mesu_speed_l)
   (if __mesu_speed_l (setq _mesu_speed_l __mesu_speed_l)) _mesu_speed_l)
  (:controller_speed_r
   (&optional __controller_speed_r)
   (if __controller_speed_r (setq _controller_speed_r __controller_speed_r)) _controller_speed_r)
  (:controller_speed_l
   (&optional __controller_speed_l)
   (if __controller_speed_l (setq _controller_speed_l __controller_speed_l)) _controller_speed_l)
  (:err_speed_r
   (&optional __err_speed_r)
   (if __err_speed_r (setq _err_speed_r __err_speed_r)) _err_speed_r)
  (:err_speed_l
   (&optional __err_speed_l)
   (if __err_speed_l (setq _err_speed_l __err_speed_l)) _err_speed_l)
  (:err_sum_speed_r
   (&optional __err_sum_speed_r)
   (if __err_sum_speed_r (setq _err_sum_speed_r __err_sum_speed_r)) _err_sum_speed_r)
  (:err_sum_speed_l
   (&optional __err_sum_speed_l)
   (if __err_sum_speed_l (setq _err_sum_speed_l __err_sum_speed_l)) _err_sum_speed_l)
  (:time_of_measure
   (&optional __time_of_measure)
   (if __time_of_measure (setq _time_of_measure __time_of_measure)) _time_of_measure)
  (:serialization-length
   ()
   (+
    ;; float32 _ref_speed_r
    4
    ;; float32 _ref_speed_l
    4
    ;; float32 _mesu_speed_r
    4
    ;; float32 _mesu_speed_l
    4
    ;; float32 _controller_speed_r
    4
    ;; float32 _controller_speed_l
    4
    ;; float32 _err_speed_r
    4
    ;; float32 _err_speed_l
    4
    ;; float32 _err_sum_speed_r
    4
    ;; float32 _err_sum_speed_l
    4
    ;; float32 _time_of_measure
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _ref_speed_r
       (sys::poke _ref_speed_r (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _ref_speed_l
       (sys::poke _ref_speed_l (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _mesu_speed_r
       (sys::poke _mesu_speed_r (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _mesu_speed_l
       (sys::poke _mesu_speed_l (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _controller_speed_r
       (sys::poke _controller_speed_r (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _controller_speed_l
       (sys::poke _controller_speed_l (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _err_speed_r
       (sys::poke _err_speed_r (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _err_speed_l
       (sys::poke _err_speed_l (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _err_sum_speed_r
       (sys::poke _err_sum_speed_r (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _err_sum_speed_l
       (sys::poke _err_sum_speed_l (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _time_of_measure
       (sys::poke _time_of_measure (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _ref_speed_r
     (setq _ref_speed_r (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _ref_speed_l
     (setq _ref_speed_l (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _mesu_speed_r
     (setq _mesu_speed_r (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _mesu_speed_l
     (setq _mesu_speed_l (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _controller_speed_r
     (setq _controller_speed_r (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _controller_speed_l
     (setq _controller_speed_l (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _err_speed_r
     (setq _err_speed_r (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _err_speed_l
     (setq _err_speed_l (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _err_sum_speed_r
     (setq _err_sum_speed_r (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _err_sum_speed_l
     (setq _err_sum_speed_l (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _time_of_measure
     (setq _time_of_measure (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get drawbot::Data_arduino :md5sum-) "0ea41ce24b57574c9a377aecfc3f65a6")
(setf (get drawbot::Data_arduino :datatype-) "drawbot/Data_arduino")
(setf (get drawbot::Data_arduino :definition-)
      "float32 ref_speed_r
float32 ref_speed_l
float32 mesu_speed_r
float32 mesu_speed_l
float32 controller_speed_r
float32 controller_speed_l
float32 err_speed_r
float32 err_speed_l
float32 err_sum_speed_r
float32 err_sum_speed_l
float32 time_of_measure

")



(provide :drawbot/Data_arduino "0ea41ce24b57574c9a377aecfc3f65a6")


