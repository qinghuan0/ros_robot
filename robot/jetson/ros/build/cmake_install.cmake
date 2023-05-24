# Install script for directory: /home/nano/ros_car/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/nano/ros_car/install")
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
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/nano/ros_car/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/nano/ros_car/install" TYPE PROGRAM FILES "/home/nano/ros_car/build/catkin_generated/installspace/_setup_util.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/nano/ros_car/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/nano/ros_car/install" TYPE PROGRAM FILES "/home/nano/ros_car/build/catkin_generated/installspace/env.sh")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/nano/ros_car/install/setup.bash;/home/nano/ros_car/install/local_setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/nano/ros_car/install" TYPE FILE FILES
    "/home/nano/ros_car/build/catkin_generated/installspace/setup.bash"
    "/home/nano/ros_car/build/catkin_generated/installspace/local_setup.bash"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/nano/ros_car/install/setup.sh;/home/nano/ros_car/install/local_setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/nano/ros_car/install" TYPE FILE FILES
    "/home/nano/ros_car/build/catkin_generated/installspace/setup.sh"
    "/home/nano/ros_car/build/catkin_generated/installspace/local_setup.sh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/nano/ros_car/install/setup.zsh;/home/nano/ros_car/install/local_setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/nano/ros_car/install" TYPE FILE FILES
    "/home/nano/ros_car/build/catkin_generated/installspace/setup.zsh"
    "/home/nano/ros_car/build/catkin_generated/installspace/local_setup.zsh"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/nano/ros_car/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/nano/ros_car/install" TYPE FILE FILES "/home/nano/ros_car/build/catkin_generated/installspace/.rosinstall")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/nano/ros_car/build/gtest/cmake_install.cmake")
  include("/home/nano/ros_car/build/third_packages/camera_umd/camera_umd/cmake_install.cmake")
  include("/home/nano/ros_car/build/third_packages/frontier_exploration/exploration/cmake_install.cmake")
  include("/home/nano/ros_car/build/third_packages/rbx1/rbx1/cmake_install.cmake")
  include("/home/nano/ros_car/build/third_packages/world_canvas/world_canvas_tools/rqt_annotation_data/cmake_install.cmake")
  include("/home/nano/ros_car/build/third_packages/frontier_exploration/exploration_msgs/cmake_install.cmake")
  include("/home/nano/ros_car/build/third_packages/world_canvas/world_canvas_msgs/cmake_install.cmake")
  include("/home/nano/ros_car/build/third_packages/world_canvas/world_canvas_server/cmake_install.cmake")
  include("/home/nano/ros_car/build/delta_lidar/cmake_install.cmake")
  include("/home/nano/ros_car/build/ros_astra_camera/cmake_install.cmake")
  include("/home/nano/ros_car/build/third_packages/camera_umd/jpeg_streamer/cmake_install.cmake")
  include("/home/nano/ros_car/build/third_packages/rbx1/rbx1_bringup/cmake_install.cmake")
  include("/home/nano/ros_car/build/third_packages/rbx1/rbx1_dynamixels/cmake_install.cmake")
  include("/home/nano/ros_car/build/third_packages/rbx1/rbx1_vision/cmake_install.cmake")
  include("/home/nano/ros_car/build/robot_ctrl/cmake_install.cmake")
  include("/home/nano/ros_car/build/third_packages/rbx1/rbx1_speech/cmake_install.cmake")
  include("/home/nano/ros_car/build/third_packages/rbx1/rbx1_apps/cmake_install.cmake")
  include("/home/nano/ros_car/build/third_packages/rbx1/rbx1_nav/cmake_install.cmake")
  include("/home/nano/ros_car/build/robot_driver/cmake_install.cmake")
  include("/home/nano/ros_car/build/robot_navigation/cmake_install.cmake")
  include("/home/nano/ros_car/build/third_packages/robot_pose_publisher/cmake_install.cmake")
  include("/home/nano/ros_car/build/third_packages/rbx1/rbx1_description/cmake_install.cmake")
  include("/home/nano/ros_car/build/third_packages/camera_umd/uvc_camera/cmake_install.cmake")
  include("/home/nano/ros_car/build/third_packages/frontier_exploration/polygon_layer/cmake_install.cmake")
  include("/home/nano/ros_car/build/third_packages/frontier_exploration/exploration_server/cmake_install.cmake")
  include("/home/nano/ros_car/build/third_packages/frontier_exploration/frontier_exploration/cmake_install.cmake")
  include("/home/nano/ros_car/build/third_packages/world_canvas/world_canvas_libs/world_canvas_client_cpp/cmake_install.cmake")
  include("/home/nano/ros_car/build/third_packages/world_canvas/world_canvas_libs/world_canvas_client_py/cmake_install.cmake")
  include("/home/nano/ros_car/build/third_packages/world_canvas/world_canvas_libs/world_canvas_utils/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/nano/ros_car/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
