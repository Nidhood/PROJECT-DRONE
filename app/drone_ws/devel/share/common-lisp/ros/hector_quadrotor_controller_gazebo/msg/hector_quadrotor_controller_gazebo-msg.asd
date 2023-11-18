
(cl:in-package :asdf)

(defsystem "hector_quadrotor_controller_gazebo-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "prop_angular_velocity_array_msg" :depends-on ("_package_prop_angular_velocity_array_msg"))
    (:file "_package_prop_angular_velocity_array_msg" :depends-on ("_package"))
    (:file "prop_angular_velocity_msg" :depends-on ("_package_prop_angular_velocity_msg"))
    (:file "_package_prop_angular_velocity_msg" :depends-on ("_package"))
  ))