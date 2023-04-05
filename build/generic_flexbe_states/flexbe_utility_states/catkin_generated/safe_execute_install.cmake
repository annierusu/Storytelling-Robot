execute_process(COMMAND "/home/student/catkin_ws/build/generic_flexbe_states/flexbe_utility_states/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/student/catkin_ws/build/generic_flexbe_states/flexbe_utility_states/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
