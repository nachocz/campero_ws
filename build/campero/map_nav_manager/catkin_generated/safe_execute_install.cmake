execute_process(COMMAND "/home/pc-campero2/campero_ws/build/campero/map_nav_manager/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/pc-campero2/campero_ws/build/campero/map_nav_manager/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
