; Auto-generated. Do not edit!


(cl:in-package drawbot-msg)


;//! \htmlinclude Custom_interface.msg.html

(cl:defclass <Custom_interface> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:fixnum
    :initform 0)
   (y
    :reader y
    :initarg :y
    :type cl:fixnum
    :initform 0))
)

(cl:defclass Custom_interface (<Custom_interface>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Custom_interface>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Custom_interface)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name drawbot-msg:<Custom_interface> is deprecated: use drawbot-msg:Custom_interface instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <Custom_interface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drawbot-msg:x-val is deprecated.  Use drawbot-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <Custom_interface>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader drawbot-msg:y-val is deprecated.  Use drawbot-msg:y instead.")
  (y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Custom_interface>) ostream)
  "Serializes a message object of type '<Custom_interface>"
  (cl:let* ((signed (cl:slot-value msg 'x)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Custom_interface>) istream)
  "Deserializes a message object of type '<Custom_interface>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'x) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'y) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Custom_interface>)))
  "Returns string type for a message object of type '<Custom_interface>"
  "drawbot/Custom_interface")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Custom_interface)))
  "Returns string type for a message object of type 'Custom_interface"
  "drawbot/Custom_interface")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Custom_interface>)))
  "Returns md5sum for a message object of type '<Custom_interface>"
  "6d78a6b8c9650c754bf0432d3d1707c3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Custom_interface)))
  "Returns md5sum for a message object of type 'Custom_interface"
  "6d78a6b8c9650c754bf0432d3d1707c3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Custom_interface>)))
  "Returns full string definition for message of type '<Custom_interface>"
  (cl:format cl:nil "int16 x~%int16 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Custom_interface)))
  "Returns full string definition for message of type 'Custom_interface"
  (cl:format cl:nil "int16 x~%int16 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Custom_interface>))
  (cl:+ 0
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Custom_interface>))
  "Converts a ROS message object to a list"
  (cl:list 'Custom_interface
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
))
