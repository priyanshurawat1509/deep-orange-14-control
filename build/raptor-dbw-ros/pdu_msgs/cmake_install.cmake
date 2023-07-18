# Install script for directory: /home/sanskrj/deeporange14_control/src/raptor-dbw-ros/pdu_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/sanskrj/deeporange14_control/install")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pdu_msgs/msg" TYPE FILE FILES
    "/home/sanskrj/deeporange14_control/src/raptor-dbw-ros/pdu_msgs/msg/FuseReport.msg"
    "/home/sanskrj/deeporange14_control/src/raptor-dbw-ros/pdu_msgs/msg/FuseStatus.msg"
    "/home/sanskrj/deeporange14_control/src/raptor-dbw-ros/pdu_msgs/msg/RelayCommand.msg"
    "/home/sanskrj/deeporange14_control/src/raptor-dbw-ros/pdu_msgs/msg/RelayReport.msg"
    "/home/sanskrj/deeporange14_control/src/raptor-dbw-ros/pdu_msgs/msg/RelayState.msg"
    "/home/sanskrj/deeporange14_control/src/raptor-dbw-ros/pdu_msgs/msg/RelayStatus.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pdu_msgs/cmake" TYPE FILE FILES "/home/sanskrj/deeporange14_control/build/raptor-dbw-ros/pdu_msgs/catkin_generated/installspace/pdu_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/sanskrj/deeporange14_control/devel/include/pdu_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/sanskrj/deeporange14_control/devel/share/roseus/ros/pdu_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/sanskrj/deeporange14_control/devel/share/common-lisp/ros/pdu_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/sanskrj/deeporange14_control/devel/share/gennodejs/ros/pdu_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/sanskrj/deeporange14_control/devel/lib/python3/dist-packages/pdu_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/sanskrj/deeporange14_control/devel/lib/python3/dist-packages/pdu_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/sanskrj/deeporange14_control/build/raptor-dbw-ros/pdu_msgs/catkin_generated/installspace/pdu_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pdu_msgs/cmake" TYPE FILE FILES "/home/sanskrj/deeporange14_control/build/raptor-dbw-ros/pdu_msgs/catkin_generated/installspace/pdu_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pdu_msgs/cmake" TYPE FILE FILES
    "/home/sanskrj/deeporange14_control/build/raptor-dbw-ros/pdu_msgs/catkin_generated/installspace/pdu_msgsConfig.cmake"
    "/home/sanskrj/deeporange14_control/build/raptor-dbw-ros/pdu_msgs/catkin_generated/installspace/pdu_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pdu_msgs" TYPE FILE FILES "/home/sanskrj/deeporange14_control/src/raptor-dbw-ros/pdu_msgs/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pdu_msgs" TYPE DIRECTORY FILES "/home/sanskrj/deeporange14_control/src/raptor-dbw-ros/pdu_msgs/bmr" FILES_MATCHING REGEX "/[^/]*\\.bmr$")
endif()

