# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "system_monitor: 16 messages, 0 services")

set(MSG_I_FLAGS "-Isystem_monitor:/home/pc-campero2/campero_ws/src/campero/system_monitor/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Isystem_monitor:/home/pc-campero2/campero_ws/src/campero/system_monitor/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(system_monitor_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/NetStatus.msg" NAME_WE)
add_custom_target(_system_monitor_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "system_monitor" "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/NetStatus.msg" "system_monitor/Interface"
)

get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Memory.msg" NAME_WE)
add_custom_target(_system_monitor_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "system_monitor" "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Memory.msg" ""
)

get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/HDDStatus.msg" NAME_WE)
add_custom_target(_system_monitor_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "system_monitor" "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/HDDStatus.msg" "system_monitor/Disk"
)

get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Interface.msg" NAME_WE)
add_custom_target(_system_monitor_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "system_monitor" "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Interface.msg" ""
)

get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/DiagnosticMEM.msg" NAME_WE)
add_custom_target(_system_monitor_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "system_monitor" "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/DiagnosticMEM.msg" "system_monitor/MEMStatus:system_monitor/Memory"
)

get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CoreUsage.msg" NAME_WE)
add_custom_target(_system_monitor_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "system_monitor" "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CoreUsage.msg" ""
)

get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CoreTemp.msg" NAME_WE)
add_custom_target(_system_monitor_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "system_monitor" "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CoreTemp.msg" ""
)

get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CPUUsageStatus.msg" NAME_WE)
add_custom_target(_system_monitor_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "system_monitor" "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CPUUsageStatus.msg" "system_monitor/CoreUsage"
)

get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/DiagnosticCPUUsage.msg" NAME_WE)
add_custom_target(_system_monitor_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "system_monitor" "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/DiagnosticCPUUsage.msg" "system_monitor/CPUUsageStatus:system_monitor/CoreUsage"
)

get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Diagnostic.msg" NAME_WE)
add_custom_target(_system_monitor_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "system_monitor" "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Diagnostic.msg" "system_monitor/HDDStatus:system_monitor/DiagnosticHDD:system_monitor/Memory:system_monitor/CoreTemp:system_monitor/NetStatus:system_monitor/CoreUsage:system_monitor/CPUTemperatureStatus:system_monitor/DiagnosticNET:system_monitor/DiagnosticCPUUsage:system_monitor/DiagnosticMEM:system_monitor/Interface:system_monitor/CPUUsageStatus:system_monitor/MEMStatus:system_monitor/DiagnosticCPUTemperature:system_monitor/Disk"
)

get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/MEMStatus.msg" NAME_WE)
add_custom_target(_system_monitor_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "system_monitor" "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/MEMStatus.msg" "system_monitor/Memory"
)

get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CPUTemperatureStatus.msg" NAME_WE)
add_custom_target(_system_monitor_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "system_monitor" "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CPUTemperatureStatus.msg" "system_monitor/CoreTemp"
)

get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/DiagnosticCPUTemperature.msg" NAME_WE)
add_custom_target(_system_monitor_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "system_monitor" "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/DiagnosticCPUTemperature.msg" "system_monitor/CPUTemperatureStatus:system_monitor/CoreTemp"
)

get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/DiagnosticNET.msg" NAME_WE)
add_custom_target(_system_monitor_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "system_monitor" "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/DiagnosticNET.msg" "system_monitor/Interface:system_monitor/NetStatus"
)

get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Disk.msg" NAME_WE)
add_custom_target(_system_monitor_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "system_monitor" "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Disk.msg" ""
)

get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/DiagnosticHDD.msg" NAME_WE)
add_custom_target(_system_monitor_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "system_monitor" "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/DiagnosticHDD.msg" "system_monitor/HDDStatus:system_monitor/Disk"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(system_monitor
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/NetStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Interface.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/system_monitor
)
_generate_msg_cpp(system_monitor
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Memory.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/system_monitor
)
_generate_msg_cpp(system_monitor
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/HDDStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Disk.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/system_monitor
)
_generate_msg_cpp(system_monitor
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Interface.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/system_monitor
)
_generate_msg_cpp(system_monitor
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/DiagnosticMEM.msg"
  "${MSG_I_FLAGS}"
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/MEMStatus.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Memory.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/system_monitor
)
_generate_msg_cpp(system_monitor
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CPUUsageStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CoreUsage.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/system_monitor
)
_generate_msg_cpp(system_monitor
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CoreTemp.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/system_monitor
)
_generate_msg_cpp(system_monitor
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CoreUsage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/system_monitor
)
_generate_msg_cpp(system_monitor
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/DiagnosticCPUUsage.msg"
  "${MSG_I_FLAGS}"
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CPUUsageStatus.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CoreUsage.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/system_monitor
)
_generate_msg_cpp(system_monitor
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Diagnostic.msg"
  "${MSG_I_FLAGS}"
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/HDDStatus.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/DiagnosticHDD.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Memory.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CoreTemp.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/NetStatus.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CoreUsage.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CPUTemperatureStatus.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/DiagnosticNET.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/DiagnosticCPUUsage.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/DiagnosticMEM.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Interface.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CPUUsageStatus.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/MEMStatus.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/DiagnosticCPUTemperature.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Disk.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/system_monitor
)
_generate_msg_cpp(system_monitor
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/MEMStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Memory.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/system_monitor
)
_generate_msg_cpp(system_monitor
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CPUTemperatureStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CoreTemp.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/system_monitor
)
_generate_msg_cpp(system_monitor
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/DiagnosticCPUTemperature.msg"
  "${MSG_I_FLAGS}"
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CPUTemperatureStatus.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CoreTemp.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/system_monitor
)
_generate_msg_cpp(system_monitor
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/DiagnosticNET.msg"
  "${MSG_I_FLAGS}"
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Interface.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/NetStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/system_monitor
)
_generate_msg_cpp(system_monitor
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Disk.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/system_monitor
)
_generate_msg_cpp(system_monitor
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/DiagnosticHDD.msg"
  "${MSG_I_FLAGS}"
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/HDDStatus.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Disk.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/system_monitor
)

### Generating Services

### Generating Module File
_generate_module_cpp(system_monitor
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/system_monitor
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(system_monitor_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(system_monitor_generate_messages system_monitor_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/NetStatus.msg" NAME_WE)
add_dependencies(system_monitor_generate_messages_cpp _system_monitor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Memory.msg" NAME_WE)
add_dependencies(system_monitor_generate_messages_cpp _system_monitor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/HDDStatus.msg" NAME_WE)
add_dependencies(system_monitor_generate_messages_cpp _system_monitor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Interface.msg" NAME_WE)
add_dependencies(system_monitor_generate_messages_cpp _system_monitor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/DiagnosticMEM.msg" NAME_WE)
add_dependencies(system_monitor_generate_messages_cpp _system_monitor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CoreUsage.msg" NAME_WE)
add_dependencies(system_monitor_generate_messages_cpp _system_monitor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CoreTemp.msg" NAME_WE)
add_dependencies(system_monitor_generate_messages_cpp _system_monitor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CPUUsageStatus.msg" NAME_WE)
add_dependencies(system_monitor_generate_messages_cpp _system_monitor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/DiagnosticCPUUsage.msg" NAME_WE)
add_dependencies(system_monitor_generate_messages_cpp _system_monitor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Diagnostic.msg" NAME_WE)
add_dependencies(system_monitor_generate_messages_cpp _system_monitor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/MEMStatus.msg" NAME_WE)
add_dependencies(system_monitor_generate_messages_cpp _system_monitor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CPUTemperatureStatus.msg" NAME_WE)
add_dependencies(system_monitor_generate_messages_cpp _system_monitor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/DiagnosticCPUTemperature.msg" NAME_WE)
add_dependencies(system_monitor_generate_messages_cpp _system_monitor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/DiagnosticNET.msg" NAME_WE)
add_dependencies(system_monitor_generate_messages_cpp _system_monitor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Disk.msg" NAME_WE)
add_dependencies(system_monitor_generate_messages_cpp _system_monitor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/DiagnosticHDD.msg" NAME_WE)
add_dependencies(system_monitor_generate_messages_cpp _system_monitor_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(system_monitor_gencpp)
add_dependencies(system_monitor_gencpp system_monitor_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS system_monitor_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(system_monitor
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/NetStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Interface.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/system_monitor
)
_generate_msg_eus(system_monitor
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Memory.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/system_monitor
)
_generate_msg_eus(system_monitor
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/HDDStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Disk.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/system_monitor
)
_generate_msg_eus(system_monitor
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Interface.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/system_monitor
)
_generate_msg_eus(system_monitor
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/DiagnosticMEM.msg"
  "${MSG_I_FLAGS}"
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/MEMStatus.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Memory.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/system_monitor
)
_generate_msg_eus(system_monitor
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CPUUsageStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CoreUsage.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/system_monitor
)
_generate_msg_eus(system_monitor
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CoreTemp.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/system_monitor
)
_generate_msg_eus(system_monitor
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CoreUsage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/system_monitor
)
_generate_msg_eus(system_monitor
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/DiagnosticCPUUsage.msg"
  "${MSG_I_FLAGS}"
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CPUUsageStatus.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CoreUsage.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/system_monitor
)
_generate_msg_eus(system_monitor
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Diagnostic.msg"
  "${MSG_I_FLAGS}"
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/HDDStatus.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/DiagnosticHDD.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Memory.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CoreTemp.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/NetStatus.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CoreUsage.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CPUTemperatureStatus.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/DiagnosticNET.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/DiagnosticCPUUsage.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/DiagnosticMEM.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Interface.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CPUUsageStatus.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/MEMStatus.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/DiagnosticCPUTemperature.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Disk.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/system_monitor
)
_generate_msg_eus(system_monitor
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/MEMStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Memory.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/system_monitor
)
_generate_msg_eus(system_monitor
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CPUTemperatureStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CoreTemp.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/system_monitor
)
_generate_msg_eus(system_monitor
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/DiagnosticCPUTemperature.msg"
  "${MSG_I_FLAGS}"
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CPUTemperatureStatus.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CoreTemp.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/system_monitor
)
_generate_msg_eus(system_monitor
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/DiagnosticNET.msg"
  "${MSG_I_FLAGS}"
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Interface.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/NetStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/system_monitor
)
_generate_msg_eus(system_monitor
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Disk.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/system_monitor
)
_generate_msg_eus(system_monitor
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/DiagnosticHDD.msg"
  "${MSG_I_FLAGS}"
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/HDDStatus.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Disk.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/system_monitor
)

### Generating Services

### Generating Module File
_generate_module_eus(system_monitor
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/system_monitor
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(system_monitor_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(system_monitor_generate_messages system_monitor_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/NetStatus.msg" NAME_WE)
add_dependencies(system_monitor_generate_messages_eus _system_monitor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Memory.msg" NAME_WE)
add_dependencies(system_monitor_generate_messages_eus _system_monitor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/HDDStatus.msg" NAME_WE)
add_dependencies(system_monitor_generate_messages_eus _system_monitor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Interface.msg" NAME_WE)
add_dependencies(system_monitor_generate_messages_eus _system_monitor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/DiagnosticMEM.msg" NAME_WE)
add_dependencies(system_monitor_generate_messages_eus _system_monitor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CoreUsage.msg" NAME_WE)
add_dependencies(system_monitor_generate_messages_eus _system_monitor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CoreTemp.msg" NAME_WE)
add_dependencies(system_monitor_generate_messages_eus _system_monitor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CPUUsageStatus.msg" NAME_WE)
add_dependencies(system_monitor_generate_messages_eus _system_monitor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/DiagnosticCPUUsage.msg" NAME_WE)
add_dependencies(system_monitor_generate_messages_eus _system_monitor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Diagnostic.msg" NAME_WE)
add_dependencies(system_monitor_generate_messages_eus _system_monitor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/MEMStatus.msg" NAME_WE)
add_dependencies(system_monitor_generate_messages_eus _system_monitor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CPUTemperatureStatus.msg" NAME_WE)
add_dependencies(system_monitor_generate_messages_eus _system_monitor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/DiagnosticCPUTemperature.msg" NAME_WE)
add_dependencies(system_monitor_generate_messages_eus _system_monitor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/DiagnosticNET.msg" NAME_WE)
add_dependencies(system_monitor_generate_messages_eus _system_monitor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Disk.msg" NAME_WE)
add_dependencies(system_monitor_generate_messages_eus _system_monitor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/DiagnosticHDD.msg" NAME_WE)
add_dependencies(system_monitor_generate_messages_eus _system_monitor_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(system_monitor_geneus)
add_dependencies(system_monitor_geneus system_monitor_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS system_monitor_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(system_monitor
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/NetStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Interface.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/system_monitor
)
_generate_msg_lisp(system_monitor
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Memory.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/system_monitor
)
_generate_msg_lisp(system_monitor
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/HDDStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Disk.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/system_monitor
)
_generate_msg_lisp(system_monitor
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Interface.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/system_monitor
)
_generate_msg_lisp(system_monitor
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/DiagnosticMEM.msg"
  "${MSG_I_FLAGS}"
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/MEMStatus.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Memory.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/system_monitor
)
_generate_msg_lisp(system_monitor
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CPUUsageStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CoreUsage.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/system_monitor
)
_generate_msg_lisp(system_monitor
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CoreTemp.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/system_monitor
)
_generate_msg_lisp(system_monitor
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CoreUsage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/system_monitor
)
_generate_msg_lisp(system_monitor
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/DiagnosticCPUUsage.msg"
  "${MSG_I_FLAGS}"
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CPUUsageStatus.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CoreUsage.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/system_monitor
)
_generate_msg_lisp(system_monitor
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Diagnostic.msg"
  "${MSG_I_FLAGS}"
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/HDDStatus.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/DiagnosticHDD.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Memory.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CoreTemp.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/NetStatus.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CoreUsage.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CPUTemperatureStatus.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/DiagnosticNET.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/DiagnosticCPUUsage.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/DiagnosticMEM.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Interface.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CPUUsageStatus.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/MEMStatus.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/DiagnosticCPUTemperature.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Disk.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/system_monitor
)
_generate_msg_lisp(system_monitor
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/MEMStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Memory.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/system_monitor
)
_generate_msg_lisp(system_monitor
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CPUTemperatureStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CoreTemp.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/system_monitor
)
_generate_msg_lisp(system_monitor
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/DiagnosticCPUTemperature.msg"
  "${MSG_I_FLAGS}"
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CPUTemperatureStatus.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CoreTemp.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/system_monitor
)
_generate_msg_lisp(system_monitor
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/DiagnosticNET.msg"
  "${MSG_I_FLAGS}"
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Interface.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/NetStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/system_monitor
)
_generate_msg_lisp(system_monitor
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Disk.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/system_monitor
)
_generate_msg_lisp(system_monitor
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/DiagnosticHDD.msg"
  "${MSG_I_FLAGS}"
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/HDDStatus.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Disk.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/system_monitor
)

### Generating Services

### Generating Module File
_generate_module_lisp(system_monitor
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/system_monitor
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(system_monitor_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(system_monitor_generate_messages system_monitor_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/NetStatus.msg" NAME_WE)
add_dependencies(system_monitor_generate_messages_lisp _system_monitor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Memory.msg" NAME_WE)
add_dependencies(system_monitor_generate_messages_lisp _system_monitor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/HDDStatus.msg" NAME_WE)
add_dependencies(system_monitor_generate_messages_lisp _system_monitor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Interface.msg" NAME_WE)
add_dependencies(system_monitor_generate_messages_lisp _system_monitor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/DiagnosticMEM.msg" NAME_WE)
add_dependencies(system_monitor_generate_messages_lisp _system_monitor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CoreUsage.msg" NAME_WE)
add_dependencies(system_monitor_generate_messages_lisp _system_monitor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CoreTemp.msg" NAME_WE)
add_dependencies(system_monitor_generate_messages_lisp _system_monitor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CPUUsageStatus.msg" NAME_WE)
add_dependencies(system_monitor_generate_messages_lisp _system_monitor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/DiagnosticCPUUsage.msg" NAME_WE)
add_dependencies(system_monitor_generate_messages_lisp _system_monitor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Diagnostic.msg" NAME_WE)
add_dependencies(system_monitor_generate_messages_lisp _system_monitor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/MEMStatus.msg" NAME_WE)
add_dependencies(system_monitor_generate_messages_lisp _system_monitor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CPUTemperatureStatus.msg" NAME_WE)
add_dependencies(system_monitor_generate_messages_lisp _system_monitor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/DiagnosticCPUTemperature.msg" NAME_WE)
add_dependencies(system_monitor_generate_messages_lisp _system_monitor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/DiagnosticNET.msg" NAME_WE)
add_dependencies(system_monitor_generate_messages_lisp _system_monitor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Disk.msg" NAME_WE)
add_dependencies(system_monitor_generate_messages_lisp _system_monitor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/DiagnosticHDD.msg" NAME_WE)
add_dependencies(system_monitor_generate_messages_lisp _system_monitor_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(system_monitor_genlisp)
add_dependencies(system_monitor_genlisp system_monitor_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS system_monitor_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(system_monitor
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/NetStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Interface.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/system_monitor
)
_generate_msg_nodejs(system_monitor
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Memory.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/system_monitor
)
_generate_msg_nodejs(system_monitor
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/HDDStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Disk.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/system_monitor
)
_generate_msg_nodejs(system_monitor
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Interface.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/system_monitor
)
_generate_msg_nodejs(system_monitor
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/DiagnosticMEM.msg"
  "${MSG_I_FLAGS}"
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/MEMStatus.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Memory.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/system_monitor
)
_generate_msg_nodejs(system_monitor
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CPUUsageStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CoreUsage.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/system_monitor
)
_generate_msg_nodejs(system_monitor
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CoreTemp.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/system_monitor
)
_generate_msg_nodejs(system_monitor
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CoreUsage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/system_monitor
)
_generate_msg_nodejs(system_monitor
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/DiagnosticCPUUsage.msg"
  "${MSG_I_FLAGS}"
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CPUUsageStatus.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CoreUsage.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/system_monitor
)
_generate_msg_nodejs(system_monitor
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Diagnostic.msg"
  "${MSG_I_FLAGS}"
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/HDDStatus.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/DiagnosticHDD.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Memory.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CoreTemp.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/NetStatus.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CoreUsage.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CPUTemperatureStatus.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/DiagnosticNET.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/DiagnosticCPUUsage.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/DiagnosticMEM.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Interface.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CPUUsageStatus.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/MEMStatus.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/DiagnosticCPUTemperature.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Disk.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/system_monitor
)
_generate_msg_nodejs(system_monitor
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/MEMStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Memory.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/system_monitor
)
_generate_msg_nodejs(system_monitor
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CPUTemperatureStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CoreTemp.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/system_monitor
)
_generate_msg_nodejs(system_monitor
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/DiagnosticCPUTemperature.msg"
  "${MSG_I_FLAGS}"
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CPUTemperatureStatus.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CoreTemp.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/system_monitor
)
_generate_msg_nodejs(system_monitor
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/DiagnosticNET.msg"
  "${MSG_I_FLAGS}"
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Interface.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/NetStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/system_monitor
)
_generate_msg_nodejs(system_monitor
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Disk.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/system_monitor
)
_generate_msg_nodejs(system_monitor
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/DiagnosticHDD.msg"
  "${MSG_I_FLAGS}"
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/HDDStatus.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Disk.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/system_monitor
)

### Generating Services

### Generating Module File
_generate_module_nodejs(system_monitor
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/system_monitor
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(system_monitor_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(system_monitor_generate_messages system_monitor_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/NetStatus.msg" NAME_WE)
add_dependencies(system_monitor_generate_messages_nodejs _system_monitor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Memory.msg" NAME_WE)
add_dependencies(system_monitor_generate_messages_nodejs _system_monitor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/HDDStatus.msg" NAME_WE)
add_dependencies(system_monitor_generate_messages_nodejs _system_monitor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Interface.msg" NAME_WE)
add_dependencies(system_monitor_generate_messages_nodejs _system_monitor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/DiagnosticMEM.msg" NAME_WE)
add_dependencies(system_monitor_generate_messages_nodejs _system_monitor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CoreUsage.msg" NAME_WE)
add_dependencies(system_monitor_generate_messages_nodejs _system_monitor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CoreTemp.msg" NAME_WE)
add_dependencies(system_monitor_generate_messages_nodejs _system_monitor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CPUUsageStatus.msg" NAME_WE)
add_dependencies(system_monitor_generate_messages_nodejs _system_monitor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/DiagnosticCPUUsage.msg" NAME_WE)
add_dependencies(system_monitor_generate_messages_nodejs _system_monitor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Diagnostic.msg" NAME_WE)
add_dependencies(system_monitor_generate_messages_nodejs _system_monitor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/MEMStatus.msg" NAME_WE)
add_dependencies(system_monitor_generate_messages_nodejs _system_monitor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CPUTemperatureStatus.msg" NAME_WE)
add_dependencies(system_monitor_generate_messages_nodejs _system_monitor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/DiagnosticCPUTemperature.msg" NAME_WE)
add_dependencies(system_monitor_generate_messages_nodejs _system_monitor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/DiagnosticNET.msg" NAME_WE)
add_dependencies(system_monitor_generate_messages_nodejs _system_monitor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Disk.msg" NAME_WE)
add_dependencies(system_monitor_generate_messages_nodejs _system_monitor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/DiagnosticHDD.msg" NAME_WE)
add_dependencies(system_monitor_generate_messages_nodejs _system_monitor_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(system_monitor_gennodejs)
add_dependencies(system_monitor_gennodejs system_monitor_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS system_monitor_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(system_monitor
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/NetStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Interface.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/system_monitor
)
_generate_msg_py(system_monitor
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Memory.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/system_monitor
)
_generate_msg_py(system_monitor
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/HDDStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Disk.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/system_monitor
)
_generate_msg_py(system_monitor
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Interface.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/system_monitor
)
_generate_msg_py(system_monitor
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/DiagnosticMEM.msg"
  "${MSG_I_FLAGS}"
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/MEMStatus.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Memory.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/system_monitor
)
_generate_msg_py(system_monitor
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CPUUsageStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CoreUsage.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/system_monitor
)
_generate_msg_py(system_monitor
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CoreTemp.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/system_monitor
)
_generate_msg_py(system_monitor
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CoreUsage.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/system_monitor
)
_generate_msg_py(system_monitor
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/DiagnosticCPUUsage.msg"
  "${MSG_I_FLAGS}"
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CPUUsageStatus.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CoreUsage.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/system_monitor
)
_generate_msg_py(system_monitor
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Diagnostic.msg"
  "${MSG_I_FLAGS}"
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/HDDStatus.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/DiagnosticHDD.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Memory.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CoreTemp.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/NetStatus.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CoreUsage.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CPUTemperatureStatus.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/DiagnosticNET.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/DiagnosticCPUUsage.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/DiagnosticMEM.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Interface.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CPUUsageStatus.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/MEMStatus.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/DiagnosticCPUTemperature.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Disk.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/system_monitor
)
_generate_msg_py(system_monitor
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/MEMStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Memory.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/system_monitor
)
_generate_msg_py(system_monitor
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CPUTemperatureStatus.msg"
  "${MSG_I_FLAGS}"
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CoreTemp.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/system_monitor
)
_generate_msg_py(system_monitor
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/DiagnosticCPUTemperature.msg"
  "${MSG_I_FLAGS}"
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CPUTemperatureStatus.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CoreTemp.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/system_monitor
)
_generate_msg_py(system_monitor
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/DiagnosticNET.msg"
  "${MSG_I_FLAGS}"
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Interface.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/NetStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/system_monitor
)
_generate_msg_py(system_monitor
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Disk.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/system_monitor
)
_generate_msg_py(system_monitor
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/DiagnosticHDD.msg"
  "${MSG_I_FLAGS}"
  "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/HDDStatus.msg;/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Disk.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/system_monitor
)

### Generating Services

### Generating Module File
_generate_module_py(system_monitor
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/system_monitor
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(system_monitor_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(system_monitor_generate_messages system_monitor_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/NetStatus.msg" NAME_WE)
add_dependencies(system_monitor_generate_messages_py _system_monitor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Memory.msg" NAME_WE)
add_dependencies(system_monitor_generate_messages_py _system_monitor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/HDDStatus.msg" NAME_WE)
add_dependencies(system_monitor_generate_messages_py _system_monitor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Interface.msg" NAME_WE)
add_dependencies(system_monitor_generate_messages_py _system_monitor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/DiagnosticMEM.msg" NAME_WE)
add_dependencies(system_monitor_generate_messages_py _system_monitor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CoreUsage.msg" NAME_WE)
add_dependencies(system_monitor_generate_messages_py _system_monitor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CoreTemp.msg" NAME_WE)
add_dependencies(system_monitor_generate_messages_py _system_monitor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CPUUsageStatus.msg" NAME_WE)
add_dependencies(system_monitor_generate_messages_py _system_monitor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/DiagnosticCPUUsage.msg" NAME_WE)
add_dependencies(system_monitor_generate_messages_py _system_monitor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Diagnostic.msg" NAME_WE)
add_dependencies(system_monitor_generate_messages_py _system_monitor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/MEMStatus.msg" NAME_WE)
add_dependencies(system_monitor_generate_messages_py _system_monitor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CPUTemperatureStatus.msg" NAME_WE)
add_dependencies(system_monitor_generate_messages_py _system_monitor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/DiagnosticCPUTemperature.msg" NAME_WE)
add_dependencies(system_monitor_generate_messages_py _system_monitor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/DiagnosticNET.msg" NAME_WE)
add_dependencies(system_monitor_generate_messages_py _system_monitor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Disk.msg" NAME_WE)
add_dependencies(system_monitor_generate_messages_py _system_monitor_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/DiagnosticHDD.msg" NAME_WE)
add_dependencies(system_monitor_generate_messages_py _system_monitor_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(system_monitor_genpy)
add_dependencies(system_monitor_genpy system_monitor_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS system_monitor_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/system_monitor)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/system_monitor
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(system_monitor_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET system_monitor_generate_messages_cpp)
  add_dependencies(system_monitor_generate_messages_cpp system_monitor_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/system_monitor)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/system_monitor
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(system_monitor_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET system_monitor_generate_messages_eus)
  add_dependencies(system_monitor_generate_messages_eus system_monitor_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/system_monitor)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/system_monitor
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(system_monitor_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET system_monitor_generate_messages_lisp)
  add_dependencies(system_monitor_generate_messages_lisp system_monitor_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/system_monitor)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/system_monitor
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(system_monitor_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET system_monitor_generate_messages_nodejs)
  add_dependencies(system_monitor_generate_messages_nodejs system_monitor_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/system_monitor)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/system_monitor\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/system_monitor
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(system_monitor_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET system_monitor_generate_messages_py)
  add_dependencies(system_monitor_generate_messages_py system_monitor_generate_messages_py)
endif()
