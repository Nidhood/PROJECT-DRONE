; Auto-generated. Do not edit!


(cl:in-package hector_quadrotor_controller_gazebo-msg)


;//! \htmlinclude prop_angular_velocity_array_msg.msg.html

(cl:defclass <prop_angular_velocity_array_msg> (roslisp-msg-protocol:ros-message)
  ((props
    :reader props
    :initarg :props
    :type (cl:vector hector_quadrotor_controller_gazebo-msg:prop_angular_velocity_msg)
   :initform (cl:make-array 0 :element-type 'hector_quadrotor_controller_gazebo-msg:prop_angular_velocity_msg :initial-element (cl:make-instance 'hector_quadrotor_controller_gazebo-msg:prop_angular_velocity_msg))))
)

(cl:defclass prop_angular_velocity_array_msg (<prop_angular_velocity_array_msg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <prop_angular_velocity_array_msg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'prop_angular_velocity_array_msg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hector_quadrotor_controller_gazebo-msg:<prop_angular_velocity_array_msg> is deprecated: use hector_quadrotor_controller_gazebo-msg:prop_angular_velocity_array_msg instead.")))

(cl:ensure-generic-function 'props-val :lambda-list '(m))
(cl:defmethod props-val ((m <prop_angular_velocity_array_msg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hector_quadrotor_controller_gazebo-msg:props-val is deprecated.  Use hector_quadrotor_controller_gazebo-msg:props instead.")
  (props m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <prop_angular_velocity_array_msg>) ostream)
  "Serializes a message object of type '<prop_angular_velocity_array_msg>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'props))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'props))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <prop_angular_velocity_array_msg>) istream)
  "Deserializes a message object of type '<prop_angular_velocity_array_msg>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'props) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'props)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'hector_quadrotor_controller_gazebo-msg:prop_angular_velocity_msg))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<prop_angular_velocity_array_msg>)))
  "Returns string type for a message object of type '<prop_angular_velocity_array_msg>"
  "hector_quadrotor_controller_gazebo/prop_angular_velocity_array_msg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'prop_angular_velocity_array_msg)))
  "Returns string type for a message object of type 'prop_angular_velocity_array_msg"
  "hector_quadrotor_controller_gazebo/prop_angular_velocity_array_msg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<prop_angular_velocity_array_msg>)))
  "Returns md5sum for a message object of type '<prop_angular_velocity_array_msg>"
  "b2c9f426c481da0990f4731d761f6df3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'prop_angular_velocity_array_msg)))
  "Returns md5sum for a message object of type 'prop_angular_velocity_array_msg"
  "b2c9f426c481da0990f4731d761f6df3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<prop_angular_velocity_array_msg>)))
  "Returns full string definition for message of type '<prop_angular_velocity_array_msg>"
  (cl:format cl:nil "prop_angular_velocity_msg[] props~%~%================================================================================~%MSG: hector_quadrotor_controller_gazebo/prop_angular_velocity_msg~%string prop_name~%float64 angular_velocity~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'prop_angular_velocity_array_msg)))
  "Returns full string definition for message of type 'prop_angular_velocity_array_msg"
  (cl:format cl:nil "prop_angular_velocity_msg[] props~%~%================================================================================~%MSG: hector_quadrotor_controller_gazebo/prop_angular_velocity_msg~%string prop_name~%float64 angular_velocity~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <prop_angular_velocity_array_msg>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'props) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <prop_angular_velocity_array_msg>))
  "Converts a ROS message object to a list"
  (cl:list 'prop_angular_velocity_array_msg
    (cl:cons ':props (props msg))
))
