; Auto-generated. Do not edit!


(cl:in-package hector_quadrotor_controller_gazebo-msg)


;//! \htmlinclude prop_angular_velocity_msg.msg.html

(cl:defclass <prop_angular_velocity_msg> (roslisp-msg-protocol:ros-message)
  ((prop_name
    :reader prop_name
    :initarg :prop_name
    :type cl:string
    :initform "")
   (angular_velocity
    :reader angular_velocity
    :initarg :angular_velocity
    :type cl:float
    :initform 0.0))
)

(cl:defclass prop_angular_velocity_msg (<prop_angular_velocity_msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <prop_angular_velocity_msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'prop_angular_velocity_msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hector_quadrotor_controller_gazebo-msg:<prop_angular_velocity_msg> is deprecated: use hector_quadrotor_controller_gazebo-msg:prop_angular_velocity_msg instead.")))

(cl:ensure-generic-function 'prop_name-val :lambda-list '(m))
(cl:defmethod prop_name-val ((m <prop_angular_velocity_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hector_quadrotor_controller_gazebo-msg:prop_name-val is deprecated.  Use hector_quadrotor_controller_gazebo-msg:prop_name instead.")
  (prop_name m))

(cl:ensure-generic-function 'angular_velocity-val :lambda-list '(m))
(cl:defmethod angular_velocity-val ((m <prop_angular_velocity_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hector_quadrotor_controller_gazebo-msg:angular_velocity-val is deprecated.  Use hector_quadrotor_controller_gazebo-msg:angular_velocity instead.")
  (angular_velocity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <prop_angular_velocity_msg>) ostream)
  "Serializes a message object of type '<prop_angular_velocity_msg>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'prop_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'prop_name))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'angular_velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <prop_angular_velocity_msg>) istream)
  "Deserializes a message object of type '<prop_angular_velocity_msg>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'prop_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'prop_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angular_velocity) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<prop_angular_velocity_msg>)))
  "Returns string type for a message object of type '<prop_angular_velocity_msg>"
  "hector_quadrotor_controller_gazebo/prop_angular_velocity_msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'prop_angular_velocity_msg)))
  "Returns string type for a message object of type 'prop_angular_velocity_msg"
  "hector_quadrotor_controller_gazebo/prop_angular_velocity_msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<prop_angular_velocity_msg>)))
  "Returns md5sum for a message object of type '<prop_angular_velocity_msg>"
  "34fd363f50e9c618a6d6b7d2b7a53747")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'prop_angular_velocity_msg)))
  "Returns md5sum for a message object of type 'prop_angular_velocity_msg"
  "34fd363f50e9c618a6d6b7d2b7a53747")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<prop_angular_velocity_msg>)))
  "Returns full string definition for message of type '<prop_angular_velocity_msg>"
  (cl:format cl:nil "string prop_name~%float64 angular_velocity~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'prop_angular_velocity_msg)))
  "Returns full string definition for message of type 'prop_angular_velocity_msg"
  (cl:format cl:nil "string prop_name~%float64 angular_velocity~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <prop_angular_velocity_msg>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'prop_name))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <prop_angular_velocity_msg>))
  "Converts a ROS message object to a list"
  (cl:list 'prop_angular_velocity_msg
    (cl:cons ':prop_name (prop_name msg))
    (cl:cons ':angular_velocity (angular_velocity msg))
))
