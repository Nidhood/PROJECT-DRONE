# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include;/usr/include".split(';') if "${prefix}/include;/usr/include" != "" else []
PROJECT_CATKIN_DEPENDS = "geometry_msgs;hector_uav_msgs;roscpp".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-lhector_quadrotor_propulsion;-lhector_quadrotor_aerodynamics;/usr/lib/x86_64-linux-gnu/libboost_thread.so.1.71.0".split(';') if "-lhector_quadrotor_propulsion;-lhector_quadrotor_aerodynamics;/usr/lib/x86_64-linux-gnu/libboost_thread.so.1.71.0" != "" else []
PROJECT_NAME = "hector_quadrotor_model"
PROJECT_SPACE_DIR = "/home/nidhood/drone_ws/install"
PROJECT_VERSION = "0.3.5"
