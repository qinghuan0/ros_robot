# Install script for directory: /home/qinghuan/qh_ros/Team/robot/robot/jetson/ros/src/third_packages/rbx1/rbx1_nav

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/qinghuan/qh_ros/Team/robot/robot/jetson/ros/install")
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
  include("/home/qinghuan/qh_ros/Team/robot/robot/jetson/ros/build/third_packages/rbx1/rbx1_nav/catkin_generated/safe_execute_install.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/rbx1_nav" TYPE FILE FILES "/home/qinghuan/qh_ros/Team/robot/robot/jetson/ros/devel/include/rbx1_nav/CalibrateAngularConfig.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/rbx1_nav" TYPE FILE FILES "/home/qinghuan/qh_ros/Team/robot/robot/jetson/ros/devel/include/rbx1_nav/CalibrateLinearConfig.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/qinghuan/qh_ros/Team/robot/robot/jetson/ros/devel/lib/python3/dist-packages/rbx1_nav/cfg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages/rbx1_nav" TYPE DIRECTORY FILES "/home/qinghuan/qh_ros/Team/robot/robot/jetson/ros/devel/lib/python3/dist-packages/rbx1_nav/cfg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/qinghuan/qh_ros/Team/robot/robot/jetson/ros/build/third_packages/rbx1/rbx1_nav/catkin_generated/installspace/rbx1_nav.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rbx1_nav/cmake" TYPE FILE FILES
    "/home/qinghuan/qh_ros/Team/robot/robot/jetson/ros/build/third_packages/rbx1/rbx1_nav/catkin_generated/installspace/rbx1_navConfig.cmake"
    "/home/qinghuan/qh_ros/Team/robot/robot/jetson/ros/build/third_packages/rbx1/rbx1_nav/catkin_generated/installspace/rbx1_navConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rbx1_nav" TYPE FILE FILES "/home/qinghuan/qh_ros/Team/robot/robot/jetson/ros/src/third_packages/rbx1/rbx1_nav/package.xml")
endif()

