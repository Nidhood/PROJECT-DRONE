# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "hector_quadrotor_controller_gazebo: 2 messages, 0 services")

set(MSG_I_FLAGS "-Ihector_quadrotor_controller_gazebo:/home/nidhood/drone_ws/src/hector_quadrotor_controller_gazebo/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(hector_quadrotor_controller_gazebo_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/nidhood/drone_ws/src/hector_quadrotor_controller_gazebo/msg/prop_angular_velocity_msg.msg" NAME_WE)
add_custom_target(_hector_quadrotor_controller_gazebo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hector_quadrotor_controller_gazebo" "/home/nidhood/drone_ws/src/hector_quadrotor_controller_gazebo/msg/prop_angular_velocity_msg.msg" ""
)

get_filename_component(_filename "/home/nidhood/drone_ws/src/hector_quadrotor_controller_gazebo/msg/prop_angular_velocity_array_msg.msg" NAME_WE)
add_custom_target(_hector_quadrotor_controller_gazebo_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hector_quadrotor_controller_gazebo" "/home/nidhood/drone_ws/src/hector_quadrotor_controller_gazebo/msg/prop_angular_velocity_array_msg.msg" "hector_quadrotor_controller_gazebo/prop_angular_velocity_msg"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(hector_quadrotor_controller_gazebo
  "/home/nidhood/drone_ws/src/hector_quadrotor_controller_gazebo/msg/prop_angular_velocity_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hector_quadrotor_controller_gazebo
)
_generate_msg_cpp(hector_quadrotor_controller_gazebo
  "/home/nidhood/drone_ws/src/hector_quadrotor_controller_gazebo/msg/prop_angular_velocity_array_msg.msg"
  "${MSG_I_FLAGS}"
  "/home/nidhood/drone_ws/src/hector_quadrotor_controller_gazebo/msg/prop_angular_velocity_msg.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hector_quadrotor_controller_gazebo
)

### Generating Services

### Generating Module File
_generate_module_cpp(hector_quadrotor_controller_gazebo
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hector_quadrotor_controller_gazebo
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(hector_quadrotor_controller_gazebo_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(hector_quadrotor_controller_gazebo_generate_messages hector_quadrotor_controller_gazebo_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nidhood/drone_ws/src/hector_quadrotor_controller_gazebo/msg/prop_angular_velocity_msg.msg" NAME_WE)
add_dependencies(hector_quadrotor_controller_gazebo_generate_messages_cpp _hector_quadrotor_controller_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nidhood/drone_ws/src/hector_quadrotor_controller_gazebo/msg/prop_angular_velocity_array_msg.msg" NAME_WE)
add_dependencies(hector_quadrotor_controller_gazebo_generate_messages_cpp _hector_quadrotor_controller_gazebo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hector_quadrotor_controller_gazebo_gencpp)
add_dependencies(hector_quadrotor_controller_gazebo_gencpp hector_quadrotor_controller_gazebo_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hector_quadrotor_controller_gazebo_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(hector_quadrotor_controller_gazebo
  "/home/nidhood/drone_ws/src/hector_quadrotor_controller_gazebo/msg/prop_angular_velocity_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hector_quadrotor_controller_gazebo
)
_generate_msg_eus(hector_quadrotor_controller_gazebo
  "/home/nidhood/drone_ws/src/hector_quadrotor_controller_gazebo/msg/prop_angular_velocity_array_msg.msg"
  "${MSG_I_FLAGS}"
  "/home/nidhood/drone_ws/src/hector_quadrotor_controller_gazebo/msg/prop_angular_velocity_msg.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hector_quadrotor_controller_gazebo
)

### Generating Services

### Generating Module File
_generate_module_eus(hector_quadrotor_controller_gazebo
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hector_quadrotor_controller_gazebo
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(hector_quadrotor_controller_gazebo_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(hector_quadrotor_controller_gazebo_generate_messages hector_quadrotor_controller_gazebo_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nidhood/drone_ws/src/hector_quadrotor_controller_gazebo/msg/prop_angular_velocity_msg.msg" NAME_WE)
add_dependencies(hector_quadrotor_controller_gazebo_generate_messages_eus _hector_quadrotor_controller_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nidhood/drone_ws/src/hector_quadrotor_controller_gazebo/msg/prop_angular_velocity_array_msg.msg" NAME_WE)
add_dependencies(hector_quadrotor_controller_gazebo_generate_messages_eus _hector_quadrotor_controller_gazebo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hector_quadrotor_controller_gazebo_geneus)
add_dependencies(hector_quadrotor_controller_gazebo_geneus hector_quadrotor_controller_gazebo_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hector_quadrotor_controller_gazebo_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(hector_quadrotor_controller_gazebo
  "/home/nidhood/drone_ws/src/hector_quadrotor_controller_gazebo/msg/prop_angular_velocity_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hector_quadrotor_controller_gazebo
)
_generate_msg_lisp(hector_quadrotor_controller_gazebo
  "/home/nidhood/drone_ws/src/hector_quadrotor_controller_gazebo/msg/prop_angular_velocity_array_msg.msg"
  "${MSG_I_FLAGS}"
  "/home/nidhood/drone_ws/src/hector_quadrotor_controller_gazebo/msg/prop_angular_velocity_msg.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hector_quadrotor_controller_gazebo
)

### Generating Services

### Generating Module File
_generate_module_lisp(hector_quadrotor_controller_gazebo
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hector_quadrotor_controller_gazebo
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(hector_quadrotor_controller_gazebo_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(hector_quadrotor_controller_gazebo_generate_messages hector_quadrotor_controller_gazebo_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nidhood/drone_ws/src/hector_quadrotor_controller_gazebo/msg/prop_angular_velocity_msg.msg" NAME_WE)
add_dependencies(hector_quadrotor_controller_gazebo_generate_messages_lisp _hector_quadrotor_controller_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nidhood/drone_ws/src/hector_quadrotor_controller_gazebo/msg/prop_angular_velocity_array_msg.msg" NAME_WE)
add_dependencies(hector_quadrotor_controller_gazebo_generate_messages_lisp _hector_quadrotor_controller_gazebo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hector_quadrotor_controller_gazebo_genlisp)
add_dependencies(hector_quadrotor_controller_gazebo_genlisp hector_quadrotor_controller_gazebo_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hector_quadrotor_controller_gazebo_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(hector_quadrotor_controller_gazebo
  "/home/nidhood/drone_ws/src/hector_quadrotor_controller_gazebo/msg/prop_angular_velocity_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hector_quadrotor_controller_gazebo
)
_generate_msg_nodejs(hector_quadrotor_controller_gazebo
  "/home/nidhood/drone_ws/src/hector_quadrotor_controller_gazebo/msg/prop_angular_velocity_array_msg.msg"
  "${MSG_I_FLAGS}"
  "/home/nidhood/drone_ws/src/hector_quadrotor_controller_gazebo/msg/prop_angular_velocity_msg.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hector_quadrotor_controller_gazebo
)

### Generating Services

### Generating Module File
_generate_module_nodejs(hector_quadrotor_controller_gazebo
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hector_quadrotor_controller_gazebo
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(hector_quadrotor_controller_gazebo_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(hector_quadrotor_controller_gazebo_generate_messages hector_quadrotor_controller_gazebo_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nidhood/drone_ws/src/hector_quadrotor_controller_gazebo/msg/prop_angular_velocity_msg.msg" NAME_WE)
add_dependencies(hector_quadrotor_controller_gazebo_generate_messages_nodejs _hector_quadrotor_controller_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nidhood/drone_ws/src/hector_quadrotor_controller_gazebo/msg/prop_angular_velocity_array_msg.msg" NAME_WE)
add_dependencies(hector_quadrotor_controller_gazebo_generate_messages_nodejs _hector_quadrotor_controller_gazebo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hector_quadrotor_controller_gazebo_gennodejs)
add_dependencies(hector_quadrotor_controller_gazebo_gennodejs hector_quadrotor_controller_gazebo_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hector_quadrotor_controller_gazebo_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(hector_quadrotor_controller_gazebo
  "/home/nidhood/drone_ws/src/hector_quadrotor_controller_gazebo/msg/prop_angular_velocity_msg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hector_quadrotor_controller_gazebo
)
_generate_msg_py(hector_quadrotor_controller_gazebo
  "/home/nidhood/drone_ws/src/hector_quadrotor_controller_gazebo/msg/prop_angular_velocity_array_msg.msg"
  "${MSG_I_FLAGS}"
  "/home/nidhood/drone_ws/src/hector_quadrotor_controller_gazebo/msg/prop_angular_velocity_msg.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hector_quadrotor_controller_gazebo
)

### Generating Services

### Generating Module File
_generate_module_py(hector_quadrotor_controller_gazebo
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hector_quadrotor_controller_gazebo
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(hector_quadrotor_controller_gazebo_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(hector_quadrotor_controller_gazebo_generate_messages hector_quadrotor_controller_gazebo_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/nidhood/drone_ws/src/hector_quadrotor_controller_gazebo/msg/prop_angular_velocity_msg.msg" NAME_WE)
add_dependencies(hector_quadrotor_controller_gazebo_generate_messages_py _hector_quadrotor_controller_gazebo_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/nidhood/drone_ws/src/hector_quadrotor_controller_gazebo/msg/prop_angular_velocity_array_msg.msg" NAME_WE)
add_dependencies(hector_quadrotor_controller_gazebo_generate_messages_py _hector_quadrotor_controller_gazebo_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hector_quadrotor_controller_gazebo_genpy)
add_dependencies(hector_quadrotor_controller_gazebo_genpy hector_quadrotor_controller_gazebo_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hector_quadrotor_controller_gazebo_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hector_quadrotor_controller_gazebo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hector_quadrotor_controller_gazebo
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(hector_quadrotor_controller_gazebo_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hector_quadrotor_controller_gazebo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hector_quadrotor_controller_gazebo
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(hector_quadrotor_controller_gazebo_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hector_quadrotor_controller_gazebo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hector_quadrotor_controller_gazebo
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(hector_quadrotor_controller_gazebo_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hector_quadrotor_controller_gazebo)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hector_quadrotor_controller_gazebo
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(hector_quadrotor_controller_gazebo_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hector_quadrotor_controller_gazebo)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hector_quadrotor_controller_gazebo\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hector_quadrotor_controller_gazebo
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(hector_quadrotor_controller_gazebo_generate_messages_py std_msgs_generate_messages_py)
endif()
