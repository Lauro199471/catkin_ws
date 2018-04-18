cmake_minimum_required(VERSION 2.8.3)
project(led_xbox)

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin REQUIRED COMPONENTS
  roscpp
  std_msgs
)

find_package(Boost REQUIRED COMPONENTS system)
FIND_LIBRARY(WIRINGPI_LIBRARY wiringPi /opt/wiringPi)

###################################
## catkin specific configuration ##
###################################
## The catkin_package macro generates cmake config files for your package
## Declare things to be passed to dependent projects
## INCLUDE_DIRS: uncomment this if your package contains header files
## LIBRARIES: libraries you create in this project that dependent projects also need
## CATKIN_DEPENDS: catkin_packages dependent projects also need
## DEPENDS: system dependencies of this project that dependent projects also need
catkin_package(
#  INCLUDE_DIRS include
#  LIBRARIES HelloWorld
#  CATKIN_DEPENDS roscpp std_msgs
#  DEPENDS system_lib
)

###########
## Build ##
###########

## Specify additional locations of header files
## Your package locations should be listed before other locations
# include_directories(include)
include_directories(${catkin_INCLUDE_DIRS} ${WIRINGPI_LIBRARY})

## Declare a cpp executable
add_executable(xbox_to_pwm src/xbox_to_pwm.cpp)

## Add cmake target dependencies of the executable/library
add_dependencies(xbox_to_pwm led_xbox_generate_messages_cpp wiringPi)

## Specify libraries to link a library or executable target against
target_link_libraries(xbox_to_pwm  ${catkin_LIBRARIES}  ${WIRINGPI_LIBRARY})



