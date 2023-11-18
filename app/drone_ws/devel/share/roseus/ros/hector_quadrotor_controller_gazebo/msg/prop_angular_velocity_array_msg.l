;; Auto-generated. Do not edit!


(when (boundp 'hector_quadrotor_controller_gazebo::prop_angular_velocity_array_msg)
  (if (not (find-package "HECTOR_QUADROTOR_CONTROLLER_GAZEBO"))
    (make-package "HECTOR_QUADROTOR_CONTROLLER_GAZEBO"))
  (shadow 'prop_angular_velocity_array_msg (find-package "HECTOR_QUADROTOR_CONTROLLER_GAZEBO")))
(unless (find-package "HECTOR_QUADROTOR_CONTROLLER_GAZEBO::PROP_ANGULAR_VELOCITY_ARRAY_MSG")
  (make-package "HECTOR_QUADROTOR_CONTROLLER_GAZEBO::PROP_ANGULAR_VELOCITY_ARRAY_MSG"))

(in-package "ROS")
;;//! \htmlinclude prop_angular_velocity_array_msg.msg.html


(defclass hector_quadrotor_controller_gazebo::prop_angular_velocity_array_msg
  :super ros::object
  :slots (_props ))

(defmethod hector_quadrotor_controller_gazebo::prop_angular_velocity_array_msg
  (:init
   (&key
    ((:props __props) ())
    )
   (send-super :init)
   (setq _props __props)
   self)
  (:props
   (&rest __props)
   (if (keywordp (car __props))
       (send* _props __props)
     (progn
       (if __props (setq _props (car __props)))
       _props)))
  (:serialization-length
   ()
   (+
    ;; hector_quadrotor_controller_gazebo/prop_angular_velocity_msg[] _props
    (apply #'+ (send-all _props :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; hector_quadrotor_controller_gazebo/prop_angular_velocity_msg[] _props
     (write-long (length _props) s)
     (dolist (elem _props)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; hector_quadrotor_controller_gazebo/prop_angular_velocity_msg[] _props
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _props (let (r) (dotimes (i n) (push (instance hector_quadrotor_controller_gazebo::prop_angular_velocity_msg :init) r)) r))
     (dolist (elem- _props)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get hector_quadrotor_controller_gazebo::prop_angular_velocity_array_msg :md5sum-) "b2c9f426c481da0990f4731d761f6df3")
(setf (get hector_quadrotor_controller_gazebo::prop_angular_velocity_array_msg :datatype-) "hector_quadrotor_controller_gazebo/prop_angular_velocity_array_msg")
(setf (get hector_quadrotor_controller_gazebo::prop_angular_velocity_array_msg :definition-)
      "prop_angular_velocity_msg[] props

================================================================================
MSG: hector_quadrotor_controller_gazebo/prop_angular_velocity_msg
string prop_name
float64 angular_velocity
")



(provide :hector_quadrotor_controller_gazebo/prop_angular_velocity_array_msg "b2c9f426c481da0990f4731d761f6df3")


