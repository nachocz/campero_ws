# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/pc-campero2/campero_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pc-campero2/campero_ws/build

# Utility rule file for poi_manager_generate_messages_cpp.

# Include the progress variables for this target.
include campero/poi_manager/CMakeFiles/poi_manager_generate_messages_cpp.dir/progress.make

campero/poi_manager/CMakeFiles/poi_manager_generate_messages_cpp: /home/pc-campero2/campero_ws/devel/include/poi_manager/LabeledPose.h
campero/poi_manager/CMakeFiles/poi_manager_generate_messages_cpp: /home/pc-campero2/campero_ws/devel/include/poi_manager/ReadPOIs.h
campero/poi_manager/CMakeFiles/poi_manager_generate_messages_cpp: /home/pc-campero2/campero_ws/devel/include/poi_manager/UpdatePOIs.h


/home/pc-campero2/campero_ws/devel/include/poi_manager/LabeledPose.h: /opt/ros/kinetic/lib/gencpp/gen_cpp.py
/home/pc-campero2/campero_ws/devel/include/poi_manager/LabeledPose.h: /home/pc-campero2/campero_ws/src/campero/poi_manager/msg/LabeledPose.msg
/home/pc-campero2/campero_ws/devel/include/poi_manager/LabeledPose.h: /opt/ros/kinetic/share/geometry_msgs/msg/Pose2D.msg
/home/pc-campero2/campero_ws/devel/include/poi_manager/LabeledPose.h: /opt/ros/kinetic/share/gencpp/msg.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/pc-campero2/campero_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating C++ code from poi_manager/LabeledPose.msg"
	cd /home/pc-campero2/campero_ws/src/campero/poi_manager && /home/pc-campero2/campero_ws/build/catkin_generated/env_cached.sh /usr/bin/python2 /opt/ros/kinetic/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /home/pc-campero2/campero_ws/src/campero/poi_manager/msg/LabeledPose.msg -Ipoi_manager:/home/pc-campero2/campero_ws/src/campero/poi_manager/msg -Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg -Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg -p poi_manager -o /home/pc-campero2/campero_ws/devel/include/poi_manager -e /opt/ros/kinetic/share/gencpp/cmake/..

/home/pc-campero2/campero_ws/devel/include/poi_manager/ReadPOIs.h: /opt/ros/kinetic/lib/gencpp/gen_cpp.py
/home/pc-campero2/campero_ws/devel/include/poi_manager/ReadPOIs.h: /home/pc-campero2/campero_ws/src/campero/poi_manager/srv/ReadPOIs.srv
/home/pc-campero2/campero_ws/devel/include/poi_manager/ReadPOIs.h: /home/pc-campero2/campero_ws/src/campero/poi_manager/msg/LabeledPose.msg
/home/pc-campero2/campero_ws/devel/include/poi_manager/ReadPOIs.h: /opt/ros/kinetic/share/geometry_msgs/msg/Pose2D.msg
/home/pc-campero2/campero_ws/devel/include/poi_manager/ReadPOIs.h: /opt/ros/kinetic/share/gencpp/msg.h.template
/home/pc-campero2/campero_ws/devel/include/poi_manager/ReadPOIs.h: /opt/ros/kinetic/share/gencpp/srv.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/pc-campero2/campero_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating C++ code from poi_manager/ReadPOIs.srv"
	cd /home/pc-campero2/campero_ws/src/campero/poi_manager && /home/pc-campero2/campero_ws/build/catkin_generated/env_cached.sh /usr/bin/python2 /opt/ros/kinetic/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /home/pc-campero2/campero_ws/src/campero/poi_manager/srv/ReadPOIs.srv -Ipoi_manager:/home/pc-campero2/campero_ws/src/campero/poi_manager/msg -Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg -Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg -p poi_manager -o /home/pc-campero2/campero_ws/devel/include/poi_manager -e /opt/ros/kinetic/share/gencpp/cmake/..

/home/pc-campero2/campero_ws/devel/include/poi_manager/UpdatePOIs.h: /opt/ros/kinetic/lib/gencpp/gen_cpp.py
/home/pc-campero2/campero_ws/devel/include/poi_manager/UpdatePOIs.h: /home/pc-campero2/campero_ws/src/campero/poi_manager/srv/UpdatePOIs.srv
/home/pc-campero2/campero_ws/devel/include/poi_manager/UpdatePOIs.h: /home/pc-campero2/campero_ws/src/campero/poi_manager/msg/LabeledPose.msg
/home/pc-campero2/campero_ws/devel/include/poi_manager/UpdatePOIs.h: /opt/ros/kinetic/share/std_msgs/msg/Empty.msg
/home/pc-campero2/campero_ws/devel/include/poi_manager/UpdatePOIs.h: /opt/ros/kinetic/share/geometry_msgs/msg/Pose2D.msg
/home/pc-campero2/campero_ws/devel/include/poi_manager/UpdatePOIs.h: /opt/ros/kinetic/share/gencpp/msg.h.template
/home/pc-campero2/campero_ws/devel/include/poi_manager/UpdatePOIs.h: /opt/ros/kinetic/share/gencpp/srv.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/pc-campero2/campero_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Generating C++ code from poi_manager/UpdatePOIs.srv"
	cd /home/pc-campero2/campero_ws/src/campero/poi_manager && /home/pc-campero2/campero_ws/build/catkin_generated/env_cached.sh /usr/bin/python2 /opt/ros/kinetic/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /home/pc-campero2/campero_ws/src/campero/poi_manager/srv/UpdatePOIs.srv -Ipoi_manager:/home/pc-campero2/campero_ws/src/campero/poi_manager/msg -Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg -Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg -p poi_manager -o /home/pc-campero2/campero_ws/devel/include/poi_manager -e /opt/ros/kinetic/share/gencpp/cmake/..

poi_manager_generate_messages_cpp: campero/poi_manager/CMakeFiles/poi_manager_generate_messages_cpp
poi_manager_generate_messages_cpp: /home/pc-campero2/campero_ws/devel/include/poi_manager/LabeledPose.h
poi_manager_generate_messages_cpp: /home/pc-campero2/campero_ws/devel/include/poi_manager/ReadPOIs.h
poi_manager_generate_messages_cpp: /home/pc-campero2/campero_ws/devel/include/poi_manager/UpdatePOIs.h
poi_manager_generate_messages_cpp: campero/poi_manager/CMakeFiles/poi_manager_generate_messages_cpp.dir/build.make

.PHONY : poi_manager_generate_messages_cpp

# Rule to build all files generated by this target.
campero/poi_manager/CMakeFiles/poi_manager_generate_messages_cpp.dir/build: poi_manager_generate_messages_cpp

.PHONY : campero/poi_manager/CMakeFiles/poi_manager_generate_messages_cpp.dir/build

campero/poi_manager/CMakeFiles/poi_manager_generate_messages_cpp.dir/clean:
	cd /home/pc-campero2/campero_ws/build/campero/poi_manager && $(CMAKE_COMMAND) -P CMakeFiles/poi_manager_generate_messages_cpp.dir/cmake_clean.cmake
.PHONY : campero/poi_manager/CMakeFiles/poi_manager_generate_messages_cpp.dir/clean

campero/poi_manager/CMakeFiles/poi_manager_generate_messages_cpp.dir/depend:
	cd /home/pc-campero2/campero_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pc-campero2/campero_ws/src /home/pc-campero2/campero_ws/src/campero/poi_manager /home/pc-campero2/campero_ws/build /home/pc-campero2/campero_ws/build/campero/poi_manager /home/pc-campero2/campero_ws/build/campero/poi_manager/CMakeFiles/poi_manager_generate_messages_cpp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : campero/poi_manager/CMakeFiles/poi_manager_generate_messages_cpp.dir/depend

