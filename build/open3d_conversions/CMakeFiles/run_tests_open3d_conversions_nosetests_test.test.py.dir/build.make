# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.27

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

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
CMAKE_SOURCE_DIR = /home/ubuntu/unilidar_sdk/unitree_lidar_ros/catkin_point_lio_unilidar/pcdwrite/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ubuntu/unilidar_sdk/unitree_lidar_ros/catkin_point_lio_unilidar/pcdwrite/build

# Utility rule file for run_tests_open3d_conversions_nosetests_test.test.py.

# Include any custom commands dependencies for this target.
include open3d_conversions/CMakeFiles/run_tests_open3d_conversions_nosetests_test.test.py.dir/compiler_depend.make

# Include the progress variables for this target.
include open3d_conversions/CMakeFiles/run_tests_open3d_conversions_nosetests_test.test.py.dir/progress.make

open3d_conversions/CMakeFiles/run_tests_open3d_conversions_nosetests_test.test.py:
	cd /home/ubuntu/unilidar_sdk/unitree_lidar_ros/catkin_point_lio_unilidar/pcdwrite/build/open3d_conversions && ../catkin_generated/env_cached.sh /usr/bin/python3 /opt/ros/noetic/share/catkin/cmake/test/run_tests.py /home/ubuntu/unilidar_sdk/unitree_lidar_ros/catkin_point_lio_unilidar/pcdwrite/build/test_results/open3d_conversions/nosetests-test.test.py.xml "\"/usr/local/bin/cmake\" -E make_directory /home/ubuntu/unilidar_sdk/unitree_lidar_ros/catkin_point_lio_unilidar/pcdwrite/build/test_results/open3d_conversions" "/usr/bin/nosetests3 -P --process-timeout=60 /home/ubuntu/unilidar_sdk/unitree_lidar_ros/catkin_point_lio_unilidar/pcdwrite/src/open3d_conversions/test/test.py --with-xunit --xunit-file=/home/ubuntu/unilidar_sdk/unitree_lidar_ros/catkin_point_lio_unilidar/pcdwrite/build/test_results/open3d_conversions/nosetests-test.test.py.xml"

run_tests_open3d_conversions_nosetests_test.test.py: open3d_conversions/CMakeFiles/run_tests_open3d_conversions_nosetests_test.test.py
run_tests_open3d_conversions_nosetests_test.test.py: open3d_conversions/CMakeFiles/run_tests_open3d_conversions_nosetests_test.test.py.dir/build.make
.PHONY : run_tests_open3d_conversions_nosetests_test.test.py

# Rule to build all files generated by this target.
open3d_conversions/CMakeFiles/run_tests_open3d_conversions_nosetests_test.test.py.dir/build: run_tests_open3d_conversions_nosetests_test.test.py
.PHONY : open3d_conversions/CMakeFiles/run_tests_open3d_conversions_nosetests_test.test.py.dir/build

open3d_conversions/CMakeFiles/run_tests_open3d_conversions_nosetests_test.test.py.dir/clean:
	cd /home/ubuntu/unilidar_sdk/unitree_lidar_ros/catkin_point_lio_unilidar/pcdwrite/build/open3d_conversions && $(CMAKE_COMMAND) -P CMakeFiles/run_tests_open3d_conversions_nosetests_test.test.py.dir/cmake_clean.cmake
.PHONY : open3d_conversions/CMakeFiles/run_tests_open3d_conversions_nosetests_test.test.py.dir/clean

open3d_conversions/CMakeFiles/run_tests_open3d_conversions_nosetests_test.test.py.dir/depend:
	cd /home/ubuntu/unilidar_sdk/unitree_lidar_ros/catkin_point_lio_unilidar/pcdwrite/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu/unilidar_sdk/unitree_lidar_ros/catkin_point_lio_unilidar/pcdwrite/src /home/ubuntu/unilidar_sdk/unitree_lidar_ros/catkin_point_lio_unilidar/pcdwrite/src/open3d_conversions /home/ubuntu/unilidar_sdk/unitree_lidar_ros/catkin_point_lio_unilidar/pcdwrite/build /home/ubuntu/unilidar_sdk/unitree_lidar_ros/catkin_point_lio_unilidar/pcdwrite/build/open3d_conversions /home/ubuntu/unilidar_sdk/unitree_lidar_ros/catkin_point_lio_unilidar/pcdwrite/build/open3d_conversions/CMakeFiles/run_tests_open3d_conversions_nosetests_test.test.py.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : open3d_conversions/CMakeFiles/run_tests_open3d_conversions_nosetests_test.test.py.dir/depend

