# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/qinghuan/qh_ros/Team/robot/robot/jetson/ros/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/qinghuan/qh_ros/Team/robot/robot/jetson/ros/build

# Utility rule file for clean_test_results_exploration_server.

# Include the progress variables for this target.
include third_packages/frontier_exploration/exploration_server/CMakeFiles/clean_test_results_exploration_server.dir/progress.make

third_packages/frontier_exploration/exploration_server/CMakeFiles/clean_test_results_exploration_server:
	cd /home/qinghuan/qh_ros/Team/robot/robot/jetson/ros/build/third_packages/frontier_exploration/exploration_server && /usr/bin/python3 /opt/ros/noetic/share/catkin/cmake/test/remove_test_results.py /home/qinghuan/qh_ros/Team/robot/robot/jetson/ros/build/test_results/exploration_server

clean_test_results_exploration_server: third_packages/frontier_exploration/exploration_server/CMakeFiles/clean_test_results_exploration_server
clean_test_results_exploration_server: third_packages/frontier_exploration/exploration_server/CMakeFiles/clean_test_results_exploration_server.dir/build.make

.PHONY : clean_test_results_exploration_server

# Rule to build all files generated by this target.
third_packages/frontier_exploration/exploration_server/CMakeFiles/clean_test_results_exploration_server.dir/build: clean_test_results_exploration_server

.PHONY : third_packages/frontier_exploration/exploration_server/CMakeFiles/clean_test_results_exploration_server.dir/build

third_packages/frontier_exploration/exploration_server/CMakeFiles/clean_test_results_exploration_server.dir/clean:
	cd /home/qinghuan/qh_ros/Team/robot/robot/jetson/ros/build/third_packages/frontier_exploration/exploration_server && $(CMAKE_COMMAND) -P CMakeFiles/clean_test_results_exploration_server.dir/cmake_clean.cmake
.PHONY : third_packages/frontier_exploration/exploration_server/CMakeFiles/clean_test_results_exploration_server.dir/clean

third_packages/frontier_exploration/exploration_server/CMakeFiles/clean_test_results_exploration_server.dir/depend:
	cd /home/qinghuan/qh_ros/Team/robot/robot/jetson/ros/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/qinghuan/qh_ros/Team/robot/robot/jetson/ros/src /home/qinghuan/qh_ros/Team/robot/robot/jetson/ros/src/third_packages/frontier_exploration/exploration_server /home/qinghuan/qh_ros/Team/robot/robot/jetson/ros/build /home/qinghuan/qh_ros/Team/robot/robot/jetson/ros/build/third_packages/frontier_exploration/exploration_server /home/qinghuan/qh_ros/Team/robot/robot/jetson/ros/build/third_packages/frontier_exploration/exploration_server/CMakeFiles/clean_test_results_exploration_server.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : third_packages/frontier_exploration/exploration_server/CMakeFiles/clean_test_results_exploration_server.dir/depend

