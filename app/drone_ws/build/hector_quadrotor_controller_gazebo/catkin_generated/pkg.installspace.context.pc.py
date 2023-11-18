# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "gazebo_ros_control;hector_quadrotor_controller;drone_controller".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lhector_quadrotor_controller_gazebo".split(';') if "-lhector_quadrotor_controller_gazebo" != "" else []
PROJECT_NAME = "hector_quadrotor_controller_gazebo"
PROJECT_SPACE_DIR = "/app/drone_ws/install"
PROJECT_VERSION = "0.3.5"
