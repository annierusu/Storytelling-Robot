# Install script for directory: /home/student/catkin_ws/src/headers/qt_robot_interface

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/student/catkin_ws/install")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/qt_robot_interface/srv" TYPE FILE FILES
    "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/speech_say.srv"
    "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/speech_stop.srv"
    "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/speech_config.srv"
    "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/audio_play.srv"
    "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/audio_stop.srv"
    "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/emotion_show.srv"
    "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/emotion_stop.srv"
    "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/behavior_talk_audio.srv"
    "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/behavior_talk_text.srv"
    "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/setting_setVolume.srv"
    "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/setting_upload.srv"
    "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/setting_download.srv"
    "/home/student/catkin_ws/src/headers/qt_robot_interface/srv/setting_info.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/qt_robot_interface/cmake" TYPE FILE FILES "/home/student/catkin_ws/build/headers/qt_robot_interface/catkin_generated/installspace/qt_robot_interface-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/student/catkin_ws/devel/include/qt_robot_interface")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/student/catkin_ws/devel/share/roseus/ros/qt_robot_interface")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/student/catkin_ws/devel/share/common-lisp/ros/qt_robot_interface")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/student/catkin_ws/devel/share/gennodejs/ros/qt_robot_interface")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/student/catkin_ws/devel/lib/python3/dist-packages/qt_robot_interface")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/student/catkin_ws/devel/lib/python3/dist-packages/qt_robot_interface")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/student/catkin_ws/build/headers/qt_robot_interface/catkin_generated/installspace/qt_robot_interface.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/qt_robot_interface/cmake" TYPE FILE FILES "/home/student/catkin_ws/build/headers/qt_robot_interface/catkin_generated/installspace/qt_robot_interface-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/qt_robot_interface/cmake" TYPE FILE FILES
    "/home/student/catkin_ws/build/headers/qt_robot_interface/catkin_generated/installspace/qt_robot_interfaceConfig.cmake"
    "/home/student/catkin_ws/build/headers/qt_robot_interface/catkin_generated/installspace/qt_robot_interfaceConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/qt_robot_interface" TYPE FILE FILES "/home/student/catkin_ws/src/headers/qt_robot_interface/package.xml")
endif()

