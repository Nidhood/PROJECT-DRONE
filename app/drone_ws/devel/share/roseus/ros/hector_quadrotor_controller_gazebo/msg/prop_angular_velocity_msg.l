;; Auto-generated. Do not edit!


(when (boundp 'hector_quadrotor_controller_gazebo::prop_angular_velocity_msg)
  (if (not (find-package "HECTOR_QUADROTOR_CONTROLLER_GAZEBO"))
    (make-package "HECTOR_QUADROTOR_CONTROLLER_GAZEBO"))
  (shadow 'prop_angular_velocity_msg (find-package "HECTOR_QUADROTOR_CONTROLLER_GAZEBO")))
(unless (find-package "HECTOR_QUADROTOR_CONTROLLER_GAZEBO::PROP_ANGULAR_VELOCITY_MSG")
  (make-package "HECTOR_QUADROTOR_CONTROLLER_GAZEBO::PROP_ANGULAR_VELOCITY_MSG"))

(in-package "ROS")
;;//! \htmlinclude prop_angular_velocity_msg.msg.html


(defclass hector_quadrotor_controller_gazebo::prop_angular_velocity_msg
  :super ros::object
  :slots (_prop_name _angular_velocity ))

(defmethod hector_quadrotor_controller_gazebo::prop_angular_velocity_msg
  (:init
   (&key
    ((:prop_name __prop_name) "")
    ((:angular_velocity __angular_velocity) 0.0)
    )
   (send-super :init)
   (setq _prop_name (string __prop_name))
   (setq _angular_velocity (float __angular_velocity))
   self)
  (:prop_name
   (&optional __prop_name)
   (if __prop_name (setq _prop_name __prop_name)) _prop_name)
  (:angular_velocity
   (&optional __angular_velocity)
   (if __angular_velocity (setq _angular_velocity __angular_velocity)) _angular_velocity)
  (:serialization-length
   ()
   (+
    ;; string _prop_name
    4 (length _prop_name)
    ;; float64 _angular_velocity
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _prop_name
       (write-long (length _prop_name) s) (princ _prop_name s)
     ;; float64 _angular_velocity
       (sys::poke _angular_velocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _prop_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _prop_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _angular_velocity
     (setq _angular_velocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get hector_quadrotor_controller_gazebo::prop_angular_velocity_msg :md5sum-) "34fd363f50e9c618a6d6b7d2b7a53747")
(setf (get hector_quadrotor_controller_gazebo::prop_angular_velocity_msg :datatype-) "hector_quadrotor_controller_gazebo/prop_angular_velocity_msg")
(setf (get hector_quadrotor_controller_gazebo::prop_angular_velocity_msg :definition-)
      "string prop_name
float64 angular_velocity
")



(provide :hector_quadrotor_controller_gazebo/prop_angular_velocity_msg "34fd363f50e9c618a6d6b7d2b7a53747")


