; Auto-generated. Do not edit!


(cl:in-package drawbot-msg)


;//! \htmlinclude Custom.msg.html

(cl:defclass <Custom> (roslisp-msg-protocol:ros-message)
  ((motor_r
    :reader motor_r
    :initarg :motor_r
    :type cl:float
    :initform 0.0)
   (motor_l
    :reader motor_l
    :initarg :motor_l
    :type cl:float
    :initform 0.0)
   (change
    :reader change
    :initarg :change
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Custom (<Custom>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Custom>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Custom)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name drawbot-msg:<Custom> is deprecated: use drawbot-msg:Custom instead.")))

(cl:ensure-generic-function 'motor_r-val :lambda-list '(m))
(cl:defmethod motor_r-val ((m <Custom>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drawbot-msg:motor_r-val is deprecated.  Use drawbot-msg:motor_r instead.")
  (motor_r m))

(cl:ensure-generic-function 'motor_l-val :lambda-list '(m))
(cl:defmethod motor_l-val ((m <Custom>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drawbot-msg:motor_l-val is deprecated.  Use drawbot-msg:motor_l instead.")
  (motor_l m))

(cl:ensure-generic-function 'change-val :lambda-list '(m))
(cl:defmethod change-val ((m <Custom>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drawbot-msg:change-val is deprecated.  Use drawbot-msg:change instead.")
  (change m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Custom>) ostream)
  "Serializes a message object of type '<Custom>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'motor_r))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'motor_l))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'change) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Custom>) istream)
  "Deserializes a message object of type '<Custom>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'motor_r) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'motor_l) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'change) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Custom>)))
  "Returns string type for a message object of type '<Custom>"
  "drawbot/Custom")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Custom)))
  "Returns string type for a message object of type 'Custom"
  "drawbot/Custom")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Custom>)))
  "Returns md5sum for a message object of type '<Custom>"
  "8b3086714753979f6aef080bf1f3ae63")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Custom)))
  "Returns md5sum for a message object of type 'Custom"
  "8b3086714753979f6aef080bf1f3ae63")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Custom>)))
  "Returns full string definition for message of type '<Custom>"
  (cl:format cl:nil "float32 motor_r~%float32 motor_l~%bool change~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Custom)))
  "Returns full string definition for message of type 'Custom"
  (cl:format cl:nil "float32 motor_r~%float32 motor_l~%bool change~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Custom>))
  (cl:+ 0
     4
     4
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Custom>))
  "Converts a ROS message object to a list"
  (cl:list 'Custom
    (cl:cons ':motor_r (motor_r msg))
    (cl:cons ':motor_l (motor_l msg))
    (cl:cons ':change (change msg))
))
