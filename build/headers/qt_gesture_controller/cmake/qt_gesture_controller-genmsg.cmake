# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "qt_gesture_controller: 0 messages, 5 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(qt_gesture_controller_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_gesture_controller/srv/gesture_record.srv" NAME_WE)
add_custom_target(_qt_gesture_controller_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "qt_gesture_controller" "/home/student/catkin_ws/src/headers/qt_gesture_controller/srv/gesture_record.srv" ""
)

get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_gesture_controller/srv/gesture_save.srv" NAME_WE)
add_custom_target(_qt_gesture_controller_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "qt_gesture_controller" "/home/student/catkin_ws/src/headers/qt_gesture_controller/srv/gesture_save.srv" ""
)

get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_gesture_controller/srv/gesture_stop.srv" NAME_WE)
add_custom_target(_qt_gesture_controller_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "qt_gesture_controller" "/home/student/catkin_ws/src/headers/qt_gesture_controller/srv/gesture_stop.srv" ""
)

get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_gesture_controller/srv/gesture_play.srv" NAME_WE)
add_custom_target(_qt_gesture_controller_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "qt_gesture_controller" "/home/student/catkin_ws/src/headers/qt_gesture_controller/srv/gesture_play.srv" ""
)

get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_gesture_controller/srv/gesture_list.srv" NAME_WE)
add_custom_target(_qt_gesture_controller_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "qt_gesture_controller" "/home/student/catkin_ws/src/headers/qt_gesture_controller/srv/gesture_list.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(qt_gesture_controller
  "/home/student/catkin_ws/src/headers/qt_gesture_controller/srv/gesture_record.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/qt_gesture_controller
)
_generate_srv_cpp(qt_gesture_controller
  "/home/student/catkin_ws/src/headers/qt_gesture_controller/srv/gesture_save.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/qt_gesture_controller
)
_generate_srv_cpp(qt_gesture_controller
  "/home/student/catkin_ws/src/headers/qt_gesture_controller/srv/gesture_stop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/qt_gesture_controller
)
_generate_srv_cpp(qt_gesture_controller
  "/home/student/catkin_ws/src/headers/qt_gesture_controller/srv/gesture_play.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/qt_gesture_controller
)
_generate_srv_cpp(qt_gesture_controller
  "/home/student/catkin_ws/src/headers/qt_gesture_controller/srv/gesture_list.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/qt_gesture_controller
)

### Generating Module File
_generate_module_cpp(qt_gesture_controller
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/qt_gesture_controller
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(qt_gesture_controller_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(qt_gesture_controller_generate_messages qt_gesture_controller_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_gesture_controller/srv/gesture_record.srv" NAME_WE)
add_dependencies(qt_gesture_controller_generate_messages_cpp _qt_gesture_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_gesture_controller/srv/gesture_save.srv" NAME_WE)
add_dependencies(qt_gesture_controller_generate_messages_cpp _qt_gesture_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_gesture_controller/srv/gesture_stop.srv" NAME_WE)
add_dependencies(qt_gesture_controller_generate_messages_cpp _qt_gesture_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_gesture_controller/srv/gesture_play.srv" NAME_WE)
add_dependencies(qt_gesture_controller_generate_messages_cpp _qt_gesture_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_gesture_controller/srv/gesture_list.srv" NAME_WE)
add_dependencies(qt_gesture_controller_generate_messages_cpp _qt_gesture_controller_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(qt_gesture_controller_gencpp)
add_dependencies(qt_gesture_controller_gencpp qt_gesture_controller_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS qt_gesture_controller_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(qt_gesture_controller
  "/home/student/catkin_ws/src/headers/qt_gesture_controller/srv/gesture_record.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/qt_gesture_controller
)
_generate_srv_eus(qt_gesture_controller
  "/home/student/catkin_ws/src/headers/qt_gesture_controller/srv/gesture_save.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/qt_gesture_controller
)
_generate_srv_eus(qt_gesture_controller
  "/home/student/catkin_ws/src/headers/qt_gesture_controller/srv/gesture_stop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/qt_gesture_controller
)
_generate_srv_eus(qt_gesture_controller
  "/home/student/catkin_ws/src/headers/qt_gesture_controller/srv/gesture_play.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/qt_gesture_controller
)
_generate_srv_eus(qt_gesture_controller
  "/home/student/catkin_ws/src/headers/qt_gesture_controller/srv/gesture_list.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/qt_gesture_controller
)

### Generating Module File
_generate_module_eus(qt_gesture_controller
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/qt_gesture_controller
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(qt_gesture_controller_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(qt_gesture_controller_generate_messages qt_gesture_controller_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_gesture_controller/srv/gesture_record.srv" NAME_WE)
add_dependencies(qt_gesture_controller_generate_messages_eus _qt_gesture_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_gesture_controller/srv/gesture_save.srv" NAME_WE)
add_dependencies(qt_gesture_controller_generate_messages_eus _qt_gesture_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_gesture_controller/srv/gesture_stop.srv" NAME_WE)
add_dependencies(qt_gesture_controller_generate_messages_eus _qt_gesture_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_gesture_controller/srv/gesture_play.srv" NAME_WE)
add_dependencies(qt_gesture_controller_generate_messages_eus _qt_gesture_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_gesture_controller/srv/gesture_list.srv" NAME_WE)
add_dependencies(qt_gesture_controller_generate_messages_eus _qt_gesture_controller_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(qt_gesture_controller_geneus)
add_dependencies(qt_gesture_controller_geneus qt_gesture_controller_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS qt_gesture_controller_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(qt_gesture_controller
  "/home/student/catkin_ws/src/headers/qt_gesture_controller/srv/gesture_record.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/qt_gesture_controller
)
_generate_srv_lisp(qt_gesture_controller
  "/home/student/catkin_ws/src/headers/qt_gesture_controller/srv/gesture_save.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/qt_gesture_controller
)
_generate_srv_lisp(qt_gesture_controller
  "/home/student/catkin_ws/src/headers/qt_gesture_controller/srv/gesture_stop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/qt_gesture_controller
)
_generate_srv_lisp(qt_gesture_controller
  "/home/student/catkin_ws/src/headers/qt_gesture_controller/srv/gesture_play.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/qt_gesture_controller
)
_generate_srv_lisp(qt_gesture_controller
  "/home/student/catkin_ws/src/headers/qt_gesture_controller/srv/gesture_list.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/qt_gesture_controller
)

### Generating Module File
_generate_module_lisp(qt_gesture_controller
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/qt_gesture_controller
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(qt_gesture_controller_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(qt_gesture_controller_generate_messages qt_gesture_controller_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_gesture_controller/srv/gesture_record.srv" NAME_WE)
add_dependencies(qt_gesture_controller_generate_messages_lisp _qt_gesture_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_gesture_controller/srv/gesture_save.srv" NAME_WE)
add_dependencies(qt_gesture_controller_generate_messages_lisp _qt_gesture_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_gesture_controller/srv/gesture_stop.srv" NAME_WE)
add_dependencies(qt_gesture_controller_generate_messages_lisp _qt_gesture_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_gesture_controller/srv/gesture_play.srv" NAME_WE)
add_dependencies(qt_gesture_controller_generate_messages_lisp _qt_gesture_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_gesture_controller/srv/gesture_list.srv" NAME_WE)
add_dependencies(qt_gesture_controller_generate_messages_lisp _qt_gesture_controller_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(qt_gesture_controller_genlisp)
add_dependencies(qt_gesture_controller_genlisp qt_gesture_controller_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS qt_gesture_controller_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(qt_gesture_controller
  "/home/student/catkin_ws/src/headers/qt_gesture_controller/srv/gesture_record.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/qt_gesture_controller
)
_generate_srv_nodejs(qt_gesture_controller
  "/home/student/catkin_ws/src/headers/qt_gesture_controller/srv/gesture_save.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/qt_gesture_controller
)
_generate_srv_nodejs(qt_gesture_controller
  "/home/student/catkin_ws/src/headers/qt_gesture_controller/srv/gesture_stop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/qt_gesture_controller
)
_generate_srv_nodejs(qt_gesture_controller
  "/home/student/catkin_ws/src/headers/qt_gesture_controller/srv/gesture_play.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/qt_gesture_controller
)
_generate_srv_nodejs(qt_gesture_controller
  "/home/student/catkin_ws/src/headers/qt_gesture_controller/srv/gesture_list.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/qt_gesture_controller
)

### Generating Module File
_generate_module_nodejs(qt_gesture_controller
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/qt_gesture_controller
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(qt_gesture_controller_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(qt_gesture_controller_generate_messages qt_gesture_controller_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_gesture_controller/srv/gesture_record.srv" NAME_WE)
add_dependencies(qt_gesture_controller_generate_messages_nodejs _qt_gesture_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_gesture_controller/srv/gesture_save.srv" NAME_WE)
add_dependencies(qt_gesture_controller_generate_messages_nodejs _qt_gesture_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_gesture_controller/srv/gesture_stop.srv" NAME_WE)
add_dependencies(qt_gesture_controller_generate_messages_nodejs _qt_gesture_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_gesture_controller/srv/gesture_play.srv" NAME_WE)
add_dependencies(qt_gesture_controller_generate_messages_nodejs _qt_gesture_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_gesture_controller/srv/gesture_list.srv" NAME_WE)
add_dependencies(qt_gesture_controller_generate_messages_nodejs _qt_gesture_controller_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(qt_gesture_controller_gennodejs)
add_dependencies(qt_gesture_controller_gennodejs qt_gesture_controller_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS qt_gesture_controller_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(qt_gesture_controller
  "/home/student/catkin_ws/src/headers/qt_gesture_controller/srv/gesture_record.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/qt_gesture_controller
)
_generate_srv_py(qt_gesture_controller
  "/home/student/catkin_ws/src/headers/qt_gesture_controller/srv/gesture_save.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/qt_gesture_controller
)
_generate_srv_py(qt_gesture_controller
  "/home/student/catkin_ws/src/headers/qt_gesture_controller/srv/gesture_stop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/qt_gesture_controller
)
_generate_srv_py(qt_gesture_controller
  "/home/student/catkin_ws/src/headers/qt_gesture_controller/srv/gesture_play.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/qt_gesture_controller
)
_generate_srv_py(qt_gesture_controller
  "/home/student/catkin_ws/src/headers/qt_gesture_controller/srv/gesture_list.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/qt_gesture_controller
)

### Generating Module File
_generate_module_py(qt_gesture_controller
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/qt_gesture_controller
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(qt_gesture_controller_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(qt_gesture_controller_generate_messages qt_gesture_controller_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_gesture_controller/srv/gesture_record.srv" NAME_WE)
add_dependencies(qt_gesture_controller_generate_messages_py _qt_gesture_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_gesture_controller/srv/gesture_save.srv" NAME_WE)
add_dependencies(qt_gesture_controller_generate_messages_py _qt_gesture_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_gesture_controller/srv/gesture_stop.srv" NAME_WE)
add_dependencies(qt_gesture_controller_generate_messages_py _qt_gesture_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_gesture_controller/srv/gesture_play.srv" NAME_WE)
add_dependencies(qt_gesture_controller_generate_messages_py _qt_gesture_controller_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_gesture_controller/srv/gesture_list.srv" NAME_WE)
add_dependencies(qt_gesture_controller_generate_messages_py _qt_gesture_controller_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(qt_gesture_controller_genpy)
add_dependencies(qt_gesture_controller_genpy qt_gesture_controller_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS qt_gesture_controller_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/qt_gesture_controller)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/qt_gesture_controller
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(qt_gesture_controller_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/qt_gesture_controller)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/qt_gesture_controller
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(qt_gesture_controller_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/qt_gesture_controller)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/qt_gesture_controller
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(qt_gesture_controller_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/qt_gesture_controller)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/qt_gesture_controller
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(qt_gesture_controller_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/qt_gesture_controller)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/qt_gesture_controller\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/qt_gesture_controller
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(qt_gesture_controller_generate_messages_py std_msgs_generate_messages_py)
endif()
