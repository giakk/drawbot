; Auto-generated. Do not edit!


(cl:in-package drawbot-msg)


;//! \htmlinclude Data_arduino.msg.html

(cl:defclass <Data_arduino> (roslisp-msg-protocol:ros-message)
  ((ref_speed_r
    :reader ref_speed_r
    :initarg :ref_speed_r
    :type cl:float
    :initform 0.0)
   (ref_speed_l
    :reader ref_speed_l
    :initarg :ref_speed_l
    :type cl:float
    :initform 0.0)
   (mesu_speed_r
    :reader mesu_speed_r
    :initarg :mesu_speed_r
    :type cl:float
    :initform 0.0)
   (mesu_speed_l
    :reader mesu_speed_l
    :initarg :mesu_speed_l
    :type cl:float
    :initform 0.0)
   (controller_speed_r
    :reader controller_speed_r
    :initarg :controller_speed_r
    :type cl:float
    :initform 0.0)
   (controller_speed_l
    :reader controller_speed_l
    :initarg :controller_speed_l
    :type cl:float
    :initform 0.0)
   (err_speed_r
    :reader err_speed_r
    :initarg :err_speed_r
    :type cl:float
    :initform 0.0)
   (err_speed_l
    :reader err_speed_l
    :initarg :err_speed_l
    :type cl:float
    :initform 0.0)
   (err_sum_speed_r
    :reader err_sum_speed_r
    :initarg :err_sum_speed_r
    :type cl:float
    :initform 0.0)
   (err_sum_speed_l
    :reader err_sum_speed_l
    :initarg :err_sum_speed_l
    :type cl:float
    :initform 0.0)
   (time_of_measure
    :reader time_of_measure
    :initarg :time_of_measure
    :type cl:float
    :initform 0.0))
)

(cl:defclass Data_arduino (<Data_arduino>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Data_arduino>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Data_arduino)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name drawbot-msg:<Data_arduino> is deprecated: use drawbot-msg:Data_arduino instead.")))

(cl:ensure-generic-function 'ref_speed_r-val :lambda-list '(m))
(cl:defmethod ref_speed_r-val ((m <Data_arduino>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drawbot-msg:ref_speed_r-val is deprecated.  Use drawbot-msg:ref_speed_r instead.")
  (ref_speed_r m))

(cl:ensure-generic-function 'ref_speed_l-val :lambda-list '(m))
(cl:defmethod ref_speed_l-val ((m <Data_arduino>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drawbot-msg:ref_speed_l-val is deprecated.  Use drawbot-msg:ref_speed_l instead.")
  (ref_speed_l m))

(cl:ensure-generic-function 'mesu_speed_r-val :lambda-list '(m))
(cl:defmethod mesu_speed_r-val ((m <Data_arduino>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drawbot-msg:mesu_speed_r-val is deprecated.  Use drawbot-msg:mesu_speed_r instead.")
  (mesu_speed_r m))

(cl:ensure-generic-function 'mesu_speed_l-val :lambda-list '(m))
(cl:defmethod mesu_speed_l-val ((m <Data_arduino>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drawbot-msg:mesu_speed_l-val is deprecated.  Use drawbot-msg:mesu_speed_l instead.")
  (mesu_speed_l m))

(cl:ensure-generic-function 'controller_speed_r-val :lambda-list '(m))
(cl:defmethod controller_speed_r-val ((m <Data_arduino>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drawbot-msg:controller_speed_r-val is deprecated.  Use drawbot-msg:controller_speed_r instead.")
  (controller_speed_r m))

(cl:ensure-generic-function 'controller_speed_l-val :lambda-list '(m))
(cl:defmethod controller_speed_l-val ((m <Data_arduino>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drawbot-msg:controller_speed_l-val is deprecated.  Use drawbot-msg:controller_speed_l instead.")
  (controller_speed_l m))

(cl:ensure-generic-function 'err_speed_r-val :lambda-list '(m))
(cl:defmethod err_speed_r-val ((m <Data_arduino>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drawbot-msg:err_speed_r-val is deprecated.  Use drawbot-msg:err_speed_r instead.")
  (err_speed_r m))

(cl:ensure-generic-function 'err_speed_l-val :lambda-list '(m))
(cl:defmethod err_speed_l-val ((m <Data_arduino>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drawbot-msg:err_speed_l-val is deprecated.  Use drawbot-msg:err_speed_l instead.")
  (err_speed_l m))

(cl:ensure-generic-function 'err_sum_speed_r-val :lambda-list '(m))
(cl:defmethod err_sum_speed_r-val ((m <Data_arduino>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drawbot-msg:err_sum_speed_r-val is deprecated.  Use drawbot-msg:err_sum_speed_r instead.")
  (err_sum_speed_r m))

(cl:ensure-generic-function 'err_sum_speed_l-val :lambda-list '(m))
(cl:defmethod err_sum_speed_l-val ((m <Data_arduino>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drawbot-msg:err_sum_speed_l-val is deprecated.  Use drawbot-msg:err_sum_speed_l instead.")
  (err_sum_speed_l m))

(cl:ensure-generic-function 'time_of_measure-val :lambda-list '(m))
(cl:defmethod time_of_measure-val ((m <Data_arduino>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drawbot-msg:time_of_measure-val is deprecated.  Use drawbot-msg:time_of_measure instead.")
  (time_of_measure m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Data_arduino>) ostream)
  "Serializes a message object of type '<Data_arduino>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ref_speed_r))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'ref_speed_l))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'mesu_speed_r))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'mesu_speed_l))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'controller_speed_r))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'controller_speed_l))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'err_speed_r))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'err_speed_l))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'err_sum_speed_r))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'err_sum_speed_l))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'time_of_measure))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Data_arduino>) istream)
  "Deserializes a message object of type '<Data_arduino>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ref_speed_r) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ref_speed_l) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'mesu_speed_r) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'mesu_speed_l) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'controller_speed_r) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'controller_speed_l) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'err_speed_r) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'err_speed_l) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'err_sum_speed_r) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'err_sum_speed_l) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'time_of_measure) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Data_arduino>)))
  "Returns string type for a message object of type '<Data_arduino>"
  "drawbot/Data_arduino")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Data_arduino)))
  "Returns string type for a message object of type 'Data_arduino"
  "drawbot/Data_arduino")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Data_arduino>)))
  "Returns md5sum for a message object of type '<Data_arduino>"
  "0ea41ce24b57574c9a377aecfc3f65a6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Data_arduino)))
  "Returns md5sum for a message object of type 'Data_arduino"
  "0ea41ce24b57574c9a377aecfc3f65a6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Data_arduino>)))
  "Returns full string definition for message of type '<Data_arduino>"
  (cl:format cl:nil "float32 ref_speed_r~%float32 ref_speed_l~%float32 mesu_speed_r~%float32 mesu_speed_l~%float32 controller_speed_r~%float32 controller_speed_l~%float32 err_speed_r~%float32 err_speed_l~%float32 err_sum_speed_r~%float32 err_sum_speed_l~%float32 time_of_measure~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Data_arduino)))
  "Returns full string definition for message of type 'Data_arduino"
  (cl:format cl:nil "float32 ref_speed_r~%float32 ref_speed_l~%float32 mesu_speed_r~%float32 mesu_speed_l~%float32 controller_speed_r~%float32 controller_speed_l~%float32 err_speed_r~%float32 err_speed_l~%float32 err_sum_speed_r~%float32 err_sum_speed_l~%float32 time_of_measure~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Data_arduino>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Data_arduino>))
  "Converts a ROS message object to a list"
  (cl:list 'Data_arduino
    (cl:cons ':ref_speed_r (ref_speed_r msg))
    (cl:cons ':ref_speed_l (ref_speed_l msg))
    (cl:cons ':mesu_speed_r (mesu_speed_r msg))
    (cl:cons ':mesu_speed_l (mesu_speed_l msg))
    (cl:cons ':controller_speed_r (controller_speed_r msg))
    (cl:cons ':controller_speed_l (controller_speed_l msg))
    (cl:cons ':err_speed_r (err_speed_r msg))
    (cl:cons ':err_speed_l (err_speed_l msg))
    (cl:cons ':err_sum_speed_r (err_sum_speed_r msg))
    (cl:cons ':err_sum_speed_l (err_sum_speed_l msg))
    (cl:cons ':time_of_measure (time_of_measure msg))
))
