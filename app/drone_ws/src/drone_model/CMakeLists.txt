cmake_minimum_required(VERSION 2.8.3)

project(drone_model)

find_package(catkin REQUIRED COMPONENTS
  control_msgs
  geometry_msgs
  roscpp
  rospy
  std_msgs
  gazebo_msgs
  gazebo_plugins
  gazebo_ros
  gazebo_ros_control
)


catkin_package()

find_package(roslaunch)

foreach(dir config launch meshes urdf)
	install(DIRECTORY ${dir}/
		DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}/${dir})
endforeach(dir)
