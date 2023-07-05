cmake_minimum_required(VERSION 3.0.2)
project(deeporange14_control)

## Compile as C++11, supported in ROS Kinetic and newer
# add_compile_options(-std=c++11)

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin REQUIRED COMPONENTS
  roscpp
  rospy
  std_msgs
  can_dbc_parser
  sensor_msgs
  geometry_msgs
  deeporange14_msgs
  roslaunch
  message_generation
)

catkin_package(
  CATKIN_DEPENDS
  message_runtime
  std_msgs
  geometry_msgs
  sensor_msgs
  deeporange14_msgs
  roscpp
  rospy

)


catkin_package(
  LIBRARIES
  ${PROJECT_NAME}
  INCLUDE
  include/
)


include_directories(
  include
  ${catkin_INCLUDE_DIRS}
)


add_library(${PROJECT_NAME}

  src/StateMachine.cpp
  src/RosHealthMonitor.cpp

)
add_executable(${PROJECT_NAME}_dbwnode src/node.cpp

)

target_link_libraries(${PROJECT_NAME}
  ${catkin_LIBRARIES}
)
target_link_libraries(${PROJECT_NAME}_dbwnode ${PROJECT_NAME}
)

install(DIRECTORY launch src dbc
  DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)

