# Install script for directory: /home/pc-campero2/campero_ws/src/campero/system_monitor

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/pc-campero2/campero_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/system_monitor/msg" TYPE FILE FILES
    "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CoreTemp.msg"
    "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CoreUsage.msg"
    "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CPUTemperatureStatus.msg"
    "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/CPUUsageStatus.msg"
    "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Diagnostic.msg"
    "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/DiagnosticCPUTemperature.msg"
    "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/DiagnosticCPUUsage.msg"
    "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/DiagnosticHDD.msg"
    "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/DiagnosticMEM.msg"
    "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/DiagnosticNET.msg"
    "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Disk.msg"
    "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/HDDStatus.msg"
    "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Interface.msg"
    "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/Memory.msg"
    "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/MEMStatus.msg"
    "/home/pc-campero2/campero_ws/src/campero/system_monitor/msg/NetStatus.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/system_monitor/cmake" TYPE FILE FILES "/home/pc-campero2/campero_ws/build/campero/system_monitor/catkin_generated/installspace/system_monitor-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/pc-campero2/campero_ws/devel/include/system_monitor")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/pc-campero2/campero_ws/devel/share/roseus/ros/system_monitor")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/pc-campero2/campero_ws/devel/share/common-lisp/ros/system_monitor")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/pc-campero2/campero_ws/devel/share/gennodejs/ros/system_monitor")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/pc-campero2/campero_ws/devel/lib/python2.7/dist-packages/system_monitor")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/pc-campero2/campero_ws/devel/lib/python2.7/dist-packages/system_monitor")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/pc-campero2/campero_ws/build/campero/system_monitor/catkin_generated/installspace/system_monitor.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/system_monitor/cmake" TYPE FILE FILES "/home/pc-campero2/campero_ws/build/campero/system_monitor/catkin_generated/installspace/system_monitor-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/system_monitor/cmake" TYPE FILE FILES
    "/home/pc-campero2/campero_ws/build/campero/system_monitor/catkin_generated/installspace/system_monitorConfig.cmake"
    "/home/pc-campero2/campero_ws/build/campero/system_monitor/catkin_generated/installspace/system_monitorConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/system_monitor" TYPE FILE FILES "/home/pc-campero2/campero_ws/src/campero/system_monitor/package.xml")
endif()

