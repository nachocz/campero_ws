# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "axis_camera: 3 messages, 2 services")

set(MSG_I_FLAGS "-Iaxis_camera:/home/pc-campero2/campero_ws/src/campero/axis_camera/msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Irobotnik_msgs:/home/pc-campero2/campero_ws/src/campero/robotnik_msgs/msg;-Irobotnik_msgs:/home/pc-campero2/campero_ws/devel/share/robotnik_msgs/msg;-Iaxis_camera:/home/pc-campero2/campero_ws/src/campero/axis_camera/msg;-Iactionlib_msgs:/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(axis_camera_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/axis_camera/msg/ptz.msg" NAME_WE)
add_custom_target(_axis_camera_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "axis_camera" "/home/pc-campero2/campero_ws/src/campero/axis_camera/msg/ptz.msg" ""
)

get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/axis_camera/srv/set_ptz.srv" NAME_WE)
add_custom_target(_axis_camera_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "axis_camera" "/home/pc-campero2/campero_ws/src/campero/axis_camera/srv/set_ptz.srv" ""
)

get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/axis_camera/msg/Axis.msg" NAME_WE)
add_custom_target(_axis_camera_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "axis_camera" "/home/pc-campero2/campero_ws/src/campero/axis_camera/msg/Axis.msg" ""
)

get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/axis_camera/msg/inputs_outputs.msg" NAME_WE)
add_custom_target(_axis_camera_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "axis_camera" "/home/pc-campero2/campero_ws/src/campero/axis_camera/msg/inputs_outputs.msg" ""
)

get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/axis_camera/srv/set_digital_output.srv" NAME_WE)
add_custom_target(_axis_camera_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "axis_camera" "/home/pc-campero2/campero_ws/src/campero/axis_camera/srv/set_digital_output.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(axis_camera
  "/home/pc-campero2/campero_ws/src/campero/axis_camera/msg/ptz.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/axis_camera
)
_generate_msg_cpp(axis_camera
  "/home/pc-campero2/campero_ws/src/campero/axis_camera/msg/Axis.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/axis_camera
)
_generate_msg_cpp(axis_camera
  "/home/pc-campero2/campero_ws/src/campero/axis_camera/msg/inputs_outputs.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/axis_camera
)

### Generating Services
_generate_srv_cpp(axis_camera
  "/home/pc-campero2/campero_ws/src/campero/axis_camera/srv/set_digital_output.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/axis_camera
)
_generate_srv_cpp(axis_camera
  "/home/pc-campero2/campero_ws/src/campero/axis_camera/srv/set_ptz.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/axis_camera
)

### Generating Module File
_generate_module_cpp(axis_camera
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/axis_camera
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(axis_camera_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(axis_camera_generate_messages axis_camera_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/axis_camera/msg/ptz.msg" NAME_WE)
add_dependencies(axis_camera_generate_messages_cpp _axis_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/axis_camera/srv/set_ptz.srv" NAME_WE)
add_dependencies(axis_camera_generate_messages_cpp _axis_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/axis_camera/msg/Axis.msg" NAME_WE)
add_dependencies(axis_camera_generate_messages_cpp _axis_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/axis_camera/msg/inputs_outputs.msg" NAME_WE)
add_dependencies(axis_camera_generate_messages_cpp _axis_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/axis_camera/srv/set_digital_output.srv" NAME_WE)
add_dependencies(axis_camera_generate_messages_cpp _axis_camera_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(axis_camera_gencpp)
add_dependencies(axis_camera_gencpp axis_camera_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS axis_camera_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(axis_camera
  "/home/pc-campero2/campero_ws/src/campero/axis_camera/msg/ptz.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/axis_camera
)
_generate_msg_eus(axis_camera
  "/home/pc-campero2/campero_ws/src/campero/axis_camera/msg/Axis.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/axis_camera
)
_generate_msg_eus(axis_camera
  "/home/pc-campero2/campero_ws/src/campero/axis_camera/msg/inputs_outputs.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/axis_camera
)

### Generating Services
_generate_srv_eus(axis_camera
  "/home/pc-campero2/campero_ws/src/campero/axis_camera/srv/set_digital_output.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/axis_camera
)
_generate_srv_eus(axis_camera
  "/home/pc-campero2/campero_ws/src/campero/axis_camera/srv/set_ptz.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/axis_camera
)

### Generating Module File
_generate_module_eus(axis_camera
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/axis_camera
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(axis_camera_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(axis_camera_generate_messages axis_camera_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/axis_camera/msg/ptz.msg" NAME_WE)
add_dependencies(axis_camera_generate_messages_eus _axis_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/axis_camera/srv/set_ptz.srv" NAME_WE)
add_dependencies(axis_camera_generate_messages_eus _axis_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/axis_camera/msg/Axis.msg" NAME_WE)
add_dependencies(axis_camera_generate_messages_eus _axis_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/axis_camera/msg/inputs_outputs.msg" NAME_WE)
add_dependencies(axis_camera_generate_messages_eus _axis_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/axis_camera/srv/set_digital_output.srv" NAME_WE)
add_dependencies(axis_camera_generate_messages_eus _axis_camera_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(axis_camera_geneus)
add_dependencies(axis_camera_geneus axis_camera_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS axis_camera_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(axis_camera
  "/home/pc-campero2/campero_ws/src/campero/axis_camera/msg/ptz.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/axis_camera
)
_generate_msg_lisp(axis_camera
  "/home/pc-campero2/campero_ws/src/campero/axis_camera/msg/Axis.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/axis_camera
)
_generate_msg_lisp(axis_camera
  "/home/pc-campero2/campero_ws/src/campero/axis_camera/msg/inputs_outputs.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/axis_camera
)

### Generating Services
_generate_srv_lisp(axis_camera
  "/home/pc-campero2/campero_ws/src/campero/axis_camera/srv/set_digital_output.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/axis_camera
)
_generate_srv_lisp(axis_camera
  "/home/pc-campero2/campero_ws/src/campero/axis_camera/srv/set_ptz.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/axis_camera
)

### Generating Module File
_generate_module_lisp(axis_camera
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/axis_camera
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(axis_camera_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(axis_camera_generate_messages axis_camera_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/axis_camera/msg/ptz.msg" NAME_WE)
add_dependencies(axis_camera_generate_messages_lisp _axis_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/axis_camera/srv/set_ptz.srv" NAME_WE)
add_dependencies(axis_camera_generate_messages_lisp _axis_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/axis_camera/msg/Axis.msg" NAME_WE)
add_dependencies(axis_camera_generate_messages_lisp _axis_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/axis_camera/msg/inputs_outputs.msg" NAME_WE)
add_dependencies(axis_camera_generate_messages_lisp _axis_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/axis_camera/srv/set_digital_output.srv" NAME_WE)
add_dependencies(axis_camera_generate_messages_lisp _axis_camera_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(axis_camera_genlisp)
add_dependencies(axis_camera_genlisp axis_camera_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS axis_camera_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(axis_camera
  "/home/pc-campero2/campero_ws/src/campero/axis_camera/msg/ptz.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/axis_camera
)
_generate_msg_nodejs(axis_camera
  "/home/pc-campero2/campero_ws/src/campero/axis_camera/msg/Axis.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/axis_camera
)
_generate_msg_nodejs(axis_camera
  "/home/pc-campero2/campero_ws/src/campero/axis_camera/msg/inputs_outputs.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/axis_camera
)

### Generating Services
_generate_srv_nodejs(axis_camera
  "/home/pc-campero2/campero_ws/src/campero/axis_camera/srv/set_digital_output.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/axis_camera
)
_generate_srv_nodejs(axis_camera
  "/home/pc-campero2/campero_ws/src/campero/axis_camera/srv/set_ptz.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/axis_camera
)

### Generating Module File
_generate_module_nodejs(axis_camera
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/axis_camera
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(axis_camera_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(axis_camera_generate_messages axis_camera_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/axis_camera/msg/ptz.msg" NAME_WE)
add_dependencies(axis_camera_generate_messages_nodejs _axis_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/axis_camera/srv/set_ptz.srv" NAME_WE)
add_dependencies(axis_camera_generate_messages_nodejs _axis_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/axis_camera/msg/Axis.msg" NAME_WE)
add_dependencies(axis_camera_generate_messages_nodejs _axis_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/axis_camera/msg/inputs_outputs.msg" NAME_WE)
add_dependencies(axis_camera_generate_messages_nodejs _axis_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/axis_camera/srv/set_digital_output.srv" NAME_WE)
add_dependencies(axis_camera_generate_messages_nodejs _axis_camera_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(axis_camera_gennodejs)
add_dependencies(axis_camera_gennodejs axis_camera_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS axis_camera_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(axis_camera
  "/home/pc-campero2/campero_ws/src/campero/axis_camera/msg/ptz.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/axis_camera
)
_generate_msg_py(axis_camera
  "/home/pc-campero2/campero_ws/src/campero/axis_camera/msg/Axis.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/axis_camera
)
_generate_msg_py(axis_camera
  "/home/pc-campero2/campero_ws/src/campero/axis_camera/msg/inputs_outputs.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/axis_camera
)

### Generating Services
_generate_srv_py(axis_camera
  "/home/pc-campero2/campero_ws/src/campero/axis_camera/srv/set_digital_output.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/axis_camera
)
_generate_srv_py(axis_camera
  "/home/pc-campero2/campero_ws/src/campero/axis_camera/srv/set_ptz.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/axis_camera
)

### Generating Module File
_generate_module_py(axis_camera
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/axis_camera
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(axis_camera_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(axis_camera_generate_messages axis_camera_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/axis_camera/msg/ptz.msg" NAME_WE)
add_dependencies(axis_camera_generate_messages_py _axis_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/axis_camera/srv/set_ptz.srv" NAME_WE)
add_dependencies(axis_camera_generate_messages_py _axis_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/axis_camera/msg/Axis.msg" NAME_WE)
add_dependencies(axis_camera_generate_messages_py _axis_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/axis_camera/msg/inputs_outputs.msg" NAME_WE)
add_dependencies(axis_camera_generate_messages_py _axis_camera_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/axis_camera/srv/set_digital_output.srv" NAME_WE)
add_dependencies(axis_camera_generate_messages_py _axis_camera_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(axis_camera_genpy)
add_dependencies(axis_camera_genpy axis_camera_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS axis_camera_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/axis_camera)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/axis_camera
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(axis_camera_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(axis_camera_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(axis_camera_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET robotnik_msgs_generate_messages_cpp)
  add_dependencies(axis_camera_generate_messages_cpp robotnik_msgs_generate_messages_cpp)
endif()
if(TARGET axis_camera_generate_messages_cpp)
  add_dependencies(axis_camera_generate_messages_cpp axis_camera_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/axis_camera)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/axis_camera
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(axis_camera_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(axis_camera_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(axis_camera_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET robotnik_msgs_generate_messages_eus)
  add_dependencies(axis_camera_generate_messages_eus robotnik_msgs_generate_messages_eus)
endif()
if(TARGET axis_camera_generate_messages_eus)
  add_dependencies(axis_camera_generate_messages_eus axis_camera_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/axis_camera)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/axis_camera
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(axis_camera_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(axis_camera_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(axis_camera_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET robotnik_msgs_generate_messages_lisp)
  add_dependencies(axis_camera_generate_messages_lisp robotnik_msgs_generate_messages_lisp)
endif()
if(TARGET axis_camera_generate_messages_lisp)
  add_dependencies(axis_camera_generate_messages_lisp axis_camera_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/axis_camera)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/axis_camera
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(axis_camera_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(axis_camera_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(axis_camera_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET robotnik_msgs_generate_messages_nodejs)
  add_dependencies(axis_camera_generate_messages_nodejs robotnik_msgs_generate_messages_nodejs)
endif()
if(TARGET axis_camera_generate_messages_nodejs)
  add_dependencies(axis_camera_generate_messages_nodejs axis_camera_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/axis_camera)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/axis_camera\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/axis_camera
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/axis_camera
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/axis_camera/.+/__init__.pyc?$"
  )
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(axis_camera_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(axis_camera_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(axis_camera_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET robotnik_msgs_generate_messages_py)
  add_dependencies(axis_camera_generate_messages_py robotnik_msgs_generate_messages_py)
endif()
if(TARGET axis_camera_generate_messages_py)
  add_dependencies(axis_camera_generate_messages_py axis_camera_generate_messages_py)
endif()
