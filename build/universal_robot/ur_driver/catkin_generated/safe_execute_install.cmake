execute_process(COMMAND "/home/lauro199471/catkin_ws/build/universal_robot/ur_driver/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/lauro199471/catkin_ws/build/universal_robot/ur_driver/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
