# Install script for directory: /home/qinghuan/qh_ros/Team/robot/robot/jetson/ros/src/third_packages/world_canvas/world_canvas_msgs

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/world_canvas_msgs/msg" TYPE FILE FILES
    "/home/qinghuan/qh_ros/Team/robot/robot/jetson/ros/src/third_packages/world_canvas/world_canvas_msgs/msg/Annotation.msg"
    "/home/qinghuan/qh_ros/Team/robot/robot/jetson/ros/src/third_packages/world_canvas/world_canvas_msgs/msg/Annotations.msg"
    "/home/qinghuan/qh_ros/Team/robot/robot/jetson/ros/src/third_packages/world_canvas/world_canvas_msgs/msg/AnnotationData.msg"
    "/home/qinghuan/qh_ros/Team/robot/robot/jetson/ros/src/third_packages/world_canvas/world_canvas_msgs/msg/WorldCanvas.msg"
    "/home/qinghuan/qh_ros/Team/robot/robot/jetson/ros/src/third_packages/world_canvas/world_canvas_msgs/msg/MapListEntry.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/world_canvas_msgs/srv" TYPE FILE FILES
    "/home/qinghuan/qh_ros/Team/robot/robot/jetson/ros/src/third_packages/world_canvas/world_canvas_msgs/srv/DeleteMap.srv"
    "/home/qinghuan/qh_ros/Team/robot/robot/jetson/ros/src/third_packages/world_canvas/world_canvas_msgs/srv/ListMaps.srv"
    "/home/qinghuan/qh_ros/Team/robot/robot/jetson/ros/src/third_packages/world_canvas/world_canvas_msgs/srv/PublishMap.srv"
    "/home/qinghuan/qh_ros/Team/robot/robot/jetson/ros/src/third_packages/world_canvas/world_canvas_msgs/srv/RenameMap.srv"
    "/home/qinghuan/qh_ros/Team/robot/robot/jetson/ros/src/third_packages/world_canvas/world_canvas_msgs/srv/SaveMap.srv"
    "/home/qinghuan/qh_ros/Team/robot/robot/jetson/ros/src/third_packages/world_canvas/world_canvas_msgs/srv/DeleteAnnotations.srv"
    "/home/qinghuan/qh_ros/Team/robot/robot/jetson/ros/src/third_packages/world_canvas/world_canvas_msgs/srv/GetAnnotations.srv"
    "/home/qinghuan/qh_ros/Team/robot/robot/jetson/ros/src/third_packages/world_canvas/world_canvas_msgs/srv/GetAnnotationsData.srv"
    "/home/qinghuan/qh_ros/Team/robot/robot/jetson/ros/src/third_packages/world_canvas/world_canvas_msgs/srv/PubAnnotationsData.srv"
    "/home/qinghuan/qh_ros/Team/robot/robot/jetson/ros/src/third_packages/world_canvas/world_canvas_msgs/srv/EditAnnotationsData.srv"
    "/home/qinghuan/qh_ros/Team/robot/robot/jetson/ros/src/third_packages/world_canvas/world_canvas_msgs/srv/SaveAnnotationsData.srv"
    "/home/qinghuan/qh_ros/Team/robot/robot/jetson/ros/src/third_packages/world_canvas/world_canvas_msgs/srv/ListWorlds.srv"
    "/home/qinghuan/qh_ros/Team/robot/robot/jetson/ros/src/third_packages/world_canvas/world_canvas_msgs/srv/SetKeyword.srv"
    "/home/qinghuan/qh_ros/Team/robot/robot/jetson/ros/src/third_packages/world_canvas/world_canvas_msgs/srv/SetRelationship.srv"
    "/home/qinghuan/qh_ros/Team/robot/robot/jetson/ros/src/third_packages/world_canvas/world_canvas_msgs/srv/ResetDatabase.srv"
    "/home/qinghuan/qh_ros/Team/robot/robot/jetson/ros/src/third_packages/world_canvas/world_canvas_msgs/srv/YAMLImport.srv"
    "/home/qinghuan/qh_ros/Team/robot/robot/jetson/ros/src/third_packages/world_canvas/world_canvas_msgs/srv/YAMLExport.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/world_canvas_msgs/cmake" TYPE FILE FILES "/home/qinghuan/qh_ros/Team/robot/robot/jetson/ros/build/third_packages/world_canvas/world_canvas_msgs/catkin_generated/installspace/world_canvas_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/qinghuan/qh_ros/Team/robot/robot/jetson/ros/devel/include/world_canvas_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/qinghuan/qh_ros/Team/robot/robot/jetson/ros/devel/share/roseus/ros/world_canvas_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/qinghuan/qh_ros/Team/robot/robot/jetson/ros/devel/share/common-lisp/ros/world_canvas_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/qinghuan/qh_ros/Team/robot/robot/jetson/ros/devel/share/gennodejs/ros/world_canvas_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/qinghuan/qh_ros/Team/robot/robot/jetson/ros/devel/lib/python3/dist-packages/world_canvas_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/qinghuan/qh_ros/Team/robot/robot/jetson/ros/devel/lib/python3/dist-packages/world_canvas_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/qinghuan/qh_ros/Team/robot/robot/jetson/ros/build/third_packages/world_canvas/world_canvas_msgs/catkin_generated/installspace/world_canvas_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/world_canvas_msgs/cmake" TYPE FILE FILES "/home/qinghuan/qh_ros/Team/robot/robot/jetson/ros/build/third_packages/world_canvas/world_canvas_msgs/catkin_generated/installspace/world_canvas_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/world_canvas_msgs/cmake" TYPE FILE FILES
    "/home/qinghuan/qh_ros/Team/robot/robot/jetson/ros/build/third_packages/world_canvas/world_canvas_msgs/catkin_generated/installspace/world_canvas_msgsConfig.cmake"
    "/home/qinghuan/qh_ros/Team/robot/robot/jetson/ros/build/third_packages/world_canvas/world_canvas_msgs/catkin_generated/installspace/world_canvas_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/world_canvas_msgs" TYPE FILE FILES "/home/qinghuan/qh_ros/Team/robot/robot/jetson/ros/src/third_packages/world_canvas/world_canvas_msgs/package.xml")
endif()

