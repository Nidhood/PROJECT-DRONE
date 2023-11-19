cmake_minimum_required(VERSION 3.0.2)
project(drone_controller)

find_package(catkin REQUIRED COMPONENTS
  gazebo_msgs
  gazebo_ros
  geometry_msgs
  nav_msgs
  roscpp
  rospy
  sensor_msgs
  std_msgs
  std_srvs
  tf
  tf2_ros
)

add_message_files(
  FILES
  prop_angular_velocity_msg.msg
  prop_angular_velocity_array_msg.msg
)

generate_messages(
  DEPENDENCIES
  std_msgs
)

catkin_package(
  INCLUDE_DIRS include
  LIBRARIES drone_controller
  CATKIN_DEPENDS gazebo_msgs gazebo_ros geometry_msgs  nav_msgs roscpp rospy sensor_msgs std_msgs std_srvs tf tf2_ros
  DEPENDS 
)
include_directories(
  ${catkin_INCLUDE_DIRS}
)

###########
## Build ##
###########

include_directories(include)
add_executable(link_controller_node src/LinkControllerNode.cpp src/main.cpp)
add_dependencies(link_controller_node ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
target_link_libraries(link_controller_node ${catkin_LIBRARIES})

#############
## Install ##
#############

## Enlazar las bibliotecas
## Mark cpp header files for installation
install(DIRECTORY include/${PROJECT_NAME}/
  DESTINATION ${CATKIN_PACKAGE_INCLUDE_DESTINATION}
  FILES_MATCHING PATTERN "*.h"
)