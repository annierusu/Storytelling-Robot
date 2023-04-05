# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "qt_robot_interface: 0 messages, 13 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(qt_robot_interface_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/speech_say.srv" NAME_WE)
add_custom_target(_qt_robot_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "qt_robot_interface" "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/speech_say.srv" ""
)

get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/speech_stop.srv" NAME_WE)
add_custom_target(_qt_robot_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "qt_robot_interface" "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/speech_stop.srv" ""
)

get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/speech_config.srv" NAME_WE)
add_custom_target(_qt_robot_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "qt_robot_interface" "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/speech_config.srv" ""
)

get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/audio_play.srv" NAME_WE)
add_custom_target(_qt_robot_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "qt_robot_interface" "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/audio_play.srv" ""
)

get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/audio_stop.srv" NAME_WE)
add_custom_target(_qt_robot_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "qt_robot_interface" "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/audio_stop.srv" ""
)

get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/emotion_show.srv" NAME_WE)
add_custom_target(_qt_robot_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "qt_robot_interface" "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/emotion_show.srv" ""
)

get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/emotion_stop.srv" NAME_WE)
add_custom_target(_qt_robot_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "qt_robot_interface" "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/emotion_stop.srv" ""
)

get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/behavior_talk_audio.srv" NAME_WE)
add_custom_target(_qt_robot_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "qt_robot_interface" "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/behavior_talk_audio.srv" ""
)

get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/behavior_talk_text.srv" NAME_WE)
add_custom_target(_qt_robot_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "qt_robot_interface" "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/behavior_talk_text.srv" ""
)

get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/setting_setVolume.srv" NAME_WE)
add_custom_target(_qt_robot_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "qt_robot_interface" "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/setting_setVolume.srv" ""
)

get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/setting_upload.srv" NAME_WE)
add_custom_target(_qt_robot_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "qt_robot_interface" "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/setting_upload.srv" ""
)

get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/setting_download.srv" NAME_WE)
add_custom_target(_qt_robot_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "qt_robot_interface" "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/setting_download.srv" ""
)

get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/setting_info.srv" NAME_WE)
add_custom_target(_qt_robot_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "qt_robot_interface" "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/setting_info.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(qt_robot_interface
  "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/speech_say.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/qt_robot_interface
)
_generate_srv_cpp(qt_robot_interface
  "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/speech_stop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/qt_robot_interface
)
_generate_srv_cpp(qt_robot_interface
  "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/speech_config.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/qt_robot_interface
)
_generate_srv_cpp(qt_robot_interface
  "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/audio_play.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/qt_robot_interface
)
_generate_srv_cpp(qt_robot_interface
  "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/audio_stop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/qt_robot_interface
)
_generate_srv_cpp(qt_robot_interface
  "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/emotion_show.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/qt_robot_interface
)
_generate_srv_cpp(qt_robot_interface
  "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/emotion_stop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/qt_robot_interface
)
_generate_srv_cpp(qt_robot_interface
  "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/behavior_talk_audio.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/qt_robot_interface
)
_generate_srv_cpp(qt_robot_interface
  "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/behavior_talk_text.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/qt_robot_interface
)
_generate_srv_cpp(qt_robot_interface
  "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/setting_setVolume.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/qt_robot_interface
)
_generate_srv_cpp(qt_robot_interface
  "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/setting_upload.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/qt_robot_interface
)
_generate_srv_cpp(qt_robot_interface
  "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/setting_download.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/qt_robot_interface
)
_generate_srv_cpp(qt_robot_interface
  "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/setting_info.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/qt_robot_interface
)

### Generating Module File
_generate_module_cpp(qt_robot_interface
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/qt_robot_interface
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(qt_robot_interface_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(qt_robot_interface_generate_messages qt_robot_interface_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/speech_say.srv" NAME_WE)
add_dependencies(qt_robot_interface_generate_messages_cpp _qt_robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/speech_stop.srv" NAME_WE)
add_dependencies(qt_robot_interface_generate_messages_cpp _qt_robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/speech_config.srv" NAME_WE)
add_dependencies(qt_robot_interface_generate_messages_cpp _qt_robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/audio_play.srv" NAME_WE)
add_dependencies(qt_robot_interface_generate_messages_cpp _qt_robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/audio_stop.srv" NAME_WE)
add_dependencies(qt_robot_interface_generate_messages_cpp _qt_robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/emotion_show.srv" NAME_WE)
add_dependencies(qt_robot_interface_generate_messages_cpp _qt_robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/emotion_stop.srv" NAME_WE)
add_dependencies(qt_robot_interface_generate_messages_cpp _qt_robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/behavior_talk_audio.srv" NAME_WE)
add_dependencies(qt_robot_interface_generate_messages_cpp _qt_robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/behavior_talk_text.srv" NAME_WE)
add_dependencies(qt_robot_interface_generate_messages_cpp _qt_robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/setting_setVolume.srv" NAME_WE)
add_dependencies(qt_robot_interface_generate_messages_cpp _qt_robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/setting_upload.srv" NAME_WE)
add_dependencies(qt_robot_interface_generate_messages_cpp _qt_robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/setting_download.srv" NAME_WE)
add_dependencies(qt_robot_interface_generate_messages_cpp _qt_robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/setting_info.srv" NAME_WE)
add_dependencies(qt_robot_interface_generate_messages_cpp _qt_robot_interface_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(qt_robot_interface_gencpp)
add_dependencies(qt_robot_interface_gencpp qt_robot_interface_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS qt_robot_interface_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(qt_robot_interface
  "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/speech_say.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/qt_robot_interface
)
_generate_srv_eus(qt_robot_interface
  "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/speech_stop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/qt_robot_interface
)
_generate_srv_eus(qt_robot_interface
  "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/speech_config.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/qt_robot_interface
)
_generate_srv_eus(qt_robot_interface
  "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/audio_play.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/qt_robot_interface
)
_generate_srv_eus(qt_robot_interface
  "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/audio_stop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/qt_robot_interface
)
_generate_srv_eus(qt_robot_interface
  "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/emotion_show.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/qt_robot_interface
)
_generate_srv_eus(qt_robot_interface
  "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/emotion_stop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/qt_robot_interface
)
_generate_srv_eus(qt_robot_interface
  "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/behavior_talk_audio.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/qt_robot_interface
)
_generate_srv_eus(qt_robot_interface
  "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/behavior_talk_text.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/qt_robot_interface
)
_generate_srv_eus(qt_robot_interface
  "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/setting_setVolume.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/qt_robot_interface
)
_generate_srv_eus(qt_robot_interface
  "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/setting_upload.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/qt_robot_interface
)
_generate_srv_eus(qt_robot_interface
  "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/setting_download.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/qt_robot_interface
)
_generate_srv_eus(qt_robot_interface
  "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/setting_info.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/qt_robot_interface
)

### Generating Module File
_generate_module_eus(qt_robot_interface
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/qt_robot_interface
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(qt_robot_interface_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(qt_robot_interface_generate_messages qt_robot_interface_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/speech_say.srv" NAME_WE)
add_dependencies(qt_robot_interface_generate_messages_eus _qt_robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/speech_stop.srv" NAME_WE)
add_dependencies(qt_robot_interface_generate_messages_eus _qt_robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/speech_config.srv" NAME_WE)
add_dependencies(qt_robot_interface_generate_messages_eus _qt_robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/audio_play.srv" NAME_WE)
add_dependencies(qt_robot_interface_generate_messages_eus _qt_robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/audio_stop.srv" NAME_WE)
add_dependencies(qt_robot_interface_generate_messages_eus _qt_robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/emotion_show.srv" NAME_WE)
add_dependencies(qt_robot_interface_generate_messages_eus _qt_robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/emotion_stop.srv" NAME_WE)
add_dependencies(qt_robot_interface_generate_messages_eus _qt_robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/behavior_talk_audio.srv" NAME_WE)
add_dependencies(qt_robot_interface_generate_messages_eus _qt_robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/behavior_talk_text.srv" NAME_WE)
add_dependencies(qt_robot_interface_generate_messages_eus _qt_robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/setting_setVolume.srv" NAME_WE)
add_dependencies(qt_robot_interface_generate_messages_eus _qt_robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/setting_upload.srv" NAME_WE)
add_dependencies(qt_robot_interface_generate_messages_eus _qt_robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/setting_download.srv" NAME_WE)
add_dependencies(qt_robot_interface_generate_messages_eus _qt_robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/setting_info.srv" NAME_WE)
add_dependencies(qt_robot_interface_generate_messages_eus _qt_robot_interface_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(qt_robot_interface_geneus)
add_dependencies(qt_robot_interface_geneus qt_robot_interface_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS qt_robot_interface_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(qt_robot_interface
  "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/speech_say.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/qt_robot_interface
)
_generate_srv_lisp(qt_robot_interface
  "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/speech_stop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/qt_robot_interface
)
_generate_srv_lisp(qt_robot_interface
  "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/speech_config.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/qt_robot_interface
)
_generate_srv_lisp(qt_robot_interface
  "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/audio_play.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/qt_robot_interface
)
_generate_srv_lisp(qt_robot_interface
  "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/audio_stop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/qt_robot_interface
)
_generate_srv_lisp(qt_robot_interface
  "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/emotion_show.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/qt_robot_interface
)
_generate_srv_lisp(qt_robot_interface
  "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/emotion_stop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/qt_robot_interface
)
_generate_srv_lisp(qt_robot_interface
  "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/behavior_talk_audio.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/qt_robot_interface
)
_generate_srv_lisp(qt_robot_interface
  "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/behavior_talk_text.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/qt_robot_interface
)
_generate_srv_lisp(qt_robot_interface
  "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/setting_setVolume.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/qt_robot_interface
)
_generate_srv_lisp(qt_robot_interface
  "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/setting_upload.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/qt_robot_interface
)
_generate_srv_lisp(qt_robot_interface
  "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/setting_download.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/qt_robot_interface
)
_generate_srv_lisp(qt_robot_interface
  "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/setting_info.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/qt_robot_interface
)

### Generating Module File
_generate_module_lisp(qt_robot_interface
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/qt_robot_interface
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(qt_robot_interface_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(qt_robot_interface_generate_messages qt_robot_interface_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/speech_say.srv" NAME_WE)
add_dependencies(qt_robot_interface_generate_messages_lisp _qt_robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/speech_stop.srv" NAME_WE)
add_dependencies(qt_robot_interface_generate_messages_lisp _qt_robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/speech_config.srv" NAME_WE)
add_dependencies(qt_robot_interface_generate_messages_lisp _qt_robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/audio_play.srv" NAME_WE)
add_dependencies(qt_robot_interface_generate_messages_lisp _qt_robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/audio_stop.srv" NAME_WE)
add_dependencies(qt_robot_interface_generate_messages_lisp _qt_robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/emotion_show.srv" NAME_WE)
add_dependencies(qt_robot_interface_generate_messages_lisp _qt_robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/emotion_stop.srv" NAME_WE)
add_dependencies(qt_robot_interface_generate_messages_lisp _qt_robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/behavior_talk_audio.srv" NAME_WE)
add_dependencies(qt_robot_interface_generate_messages_lisp _qt_robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/behavior_talk_text.srv" NAME_WE)
add_dependencies(qt_robot_interface_generate_messages_lisp _qt_robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/setting_setVolume.srv" NAME_WE)
add_dependencies(qt_robot_interface_generate_messages_lisp _qt_robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/setting_upload.srv" NAME_WE)
add_dependencies(qt_robot_interface_generate_messages_lisp _qt_robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/setting_download.srv" NAME_WE)
add_dependencies(qt_robot_interface_generate_messages_lisp _qt_robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/setting_info.srv" NAME_WE)
add_dependencies(qt_robot_interface_generate_messages_lisp _qt_robot_interface_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(qt_robot_interface_genlisp)
add_dependencies(qt_robot_interface_genlisp qt_robot_interface_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS qt_robot_interface_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(qt_robot_interface
  "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/speech_say.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/qt_robot_interface
)
_generate_srv_nodejs(qt_robot_interface
  "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/speech_stop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/qt_robot_interface
)
_generate_srv_nodejs(qt_robot_interface
  "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/speech_config.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/qt_robot_interface
)
_generate_srv_nodejs(qt_robot_interface
  "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/audio_play.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/qt_robot_interface
)
_generate_srv_nodejs(qt_robot_interface
  "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/audio_stop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/qt_robot_interface
)
_generate_srv_nodejs(qt_robot_interface
  "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/emotion_show.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/qt_robot_interface
)
_generate_srv_nodejs(qt_robot_interface
  "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/emotion_stop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/qt_robot_interface
)
_generate_srv_nodejs(qt_robot_interface
  "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/behavior_talk_audio.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/qt_robot_interface
)
_generate_srv_nodejs(qt_robot_interface
  "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/behavior_talk_text.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/qt_robot_interface
)
_generate_srv_nodejs(qt_robot_interface
  "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/setting_setVolume.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/qt_robot_interface
)
_generate_srv_nodejs(qt_robot_interface
  "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/setting_upload.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/qt_robot_interface
)
_generate_srv_nodejs(qt_robot_interface
  "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/setting_download.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/qt_robot_interface
)
_generate_srv_nodejs(qt_robot_interface
  "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/setting_info.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/qt_robot_interface
)

### Generating Module File
_generate_module_nodejs(qt_robot_interface
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/qt_robot_interface
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(qt_robot_interface_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(qt_robot_interface_generate_messages qt_robot_interface_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/speech_say.srv" NAME_WE)
add_dependencies(qt_robot_interface_generate_messages_nodejs _qt_robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/speech_stop.srv" NAME_WE)
add_dependencies(qt_robot_interface_generate_messages_nodejs _qt_robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/speech_config.srv" NAME_WE)
add_dependencies(qt_robot_interface_generate_messages_nodejs _qt_robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/audio_play.srv" NAME_WE)
add_dependencies(qt_robot_interface_generate_messages_nodejs _qt_robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/audio_stop.srv" NAME_WE)
add_dependencies(qt_robot_interface_generate_messages_nodejs _qt_robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/emotion_show.srv" NAME_WE)
add_dependencies(qt_robot_interface_generate_messages_nodejs _qt_robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/emotion_stop.srv" NAME_WE)
add_dependencies(qt_robot_interface_generate_messages_nodejs _qt_robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/behavior_talk_audio.srv" NAME_WE)
add_dependencies(qt_robot_interface_generate_messages_nodejs _qt_robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/behavior_talk_text.srv" NAME_WE)
add_dependencies(qt_robot_interface_generate_messages_nodejs _qt_robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/setting_setVolume.srv" NAME_WE)
add_dependencies(qt_robot_interface_generate_messages_nodejs _qt_robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/setting_upload.srv" NAME_WE)
add_dependencies(qt_robot_interface_generate_messages_nodejs _qt_robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/setting_download.srv" NAME_WE)
add_dependencies(qt_robot_interface_generate_messages_nodejs _qt_robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/setting_info.srv" NAME_WE)
add_dependencies(qt_robot_interface_generate_messages_nodejs _qt_robot_interface_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(qt_robot_interface_gennodejs)
add_dependencies(qt_robot_interface_gennodejs qt_robot_interface_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS qt_robot_interface_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(qt_robot_interface
  "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/speech_say.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/qt_robot_interface
)
_generate_srv_py(qt_robot_interface
  "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/speech_stop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/qt_robot_interface
)
_generate_srv_py(qt_robot_interface
  "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/speech_config.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/qt_robot_interface
)
_generate_srv_py(qt_robot_interface
  "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/audio_play.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/qt_robot_interface
)
_generate_srv_py(qt_robot_interface
  "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/audio_stop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/qt_robot_interface
)
_generate_srv_py(qt_robot_interface
  "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/emotion_show.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/qt_robot_interface
)
_generate_srv_py(qt_robot_interface
  "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/emotion_stop.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/qt_robot_interface
)
_generate_srv_py(qt_robot_interface
  "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/behavior_talk_audio.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/qt_robot_interface
)
_generate_srv_py(qt_robot_interface
  "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/behavior_talk_text.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/qt_robot_interface
)
_generate_srv_py(qt_robot_interface
  "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/setting_setVolume.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/qt_robot_interface
)
_generate_srv_py(qt_robot_interface
  "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/setting_upload.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/qt_robot_interface
)
_generate_srv_py(qt_robot_interface
  "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/setting_download.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/qt_robot_interface
)
_generate_srv_py(qt_robot_interface
  "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/setting_info.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/qt_robot_interface
)

### Generating Module File
_generate_module_py(qt_robot_interface
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/qt_robot_interface
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(qt_robot_interface_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(qt_robot_interface_generate_messages qt_robot_interface_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/speech_say.srv" NAME_WE)
add_dependencies(qt_robot_interface_generate_messages_py _qt_robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/speech_stop.srv" NAME_WE)
add_dependencies(qt_robot_interface_generate_messages_py _qt_robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/speech_config.srv" NAME_WE)
add_dependencies(qt_robot_interface_generate_messages_py _qt_robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/audio_play.srv" NAME_WE)
add_dependencies(qt_robot_interface_generate_messages_py _qt_robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/audio_stop.srv" NAME_WE)
add_dependencies(qt_robot_interface_generate_messages_py _qt_robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/emotion_show.srv" NAME_WE)
add_dependencies(qt_robot_interface_generate_messages_py _qt_robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/emotion_stop.srv" NAME_WE)
add_dependencies(qt_robot_interface_generate_messages_py _qt_robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/behavior_talk_audio.srv" NAME_WE)
add_dependencies(qt_robot_interface_generate_messages_py _qt_robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/behavior_talk_text.srv" NAME_WE)
add_dependencies(qt_robot_interface_generate_messages_py _qt_robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/setting_setVolume.srv" NAME_WE)
add_dependencies(qt_robot_interface_generate_messages_py _qt_robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/setting_upload.srv" NAME_WE)
add_dependencies(qt_robot_interface_generate_messages_py _qt_robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/setting_download.srv" NAME_WE)
add_dependencies(qt_robot_interface_generate_messages_py _qt_robot_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/setting_info.srv" NAME_WE)
add_dependencies(qt_robot_interface_generate_messages_py _qt_robot_interface_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(qt_robot_interface_genpy)
add_dependencies(qt_robot_interface_genpy qt_robot_interface_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS qt_robot_interface_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/qt_robot_interface)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/qt_robot_interface
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(qt_robot_interface_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/qt_robot_interface)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/qt_robot_interface
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(qt_robot_interface_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/qt_robot_interface)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/qt_robot_interface
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(qt_robot_interface_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/qt_robot_interface)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/qt_robot_interface
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(qt_robot_interface_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/qt_robot_interface)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/qt_robot_interface\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/qt_robot_interface
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(qt_robot_interface_generate_messages_py std_msgs_generate_messages_py)
endif()
