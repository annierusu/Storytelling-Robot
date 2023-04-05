# Install script for directory: /home/student/catkin_ws/src/headers/qt_nuitrack_app

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/qt_nuitrack_app/msg" TYPE FILE FILES
    "/home/student/catkin_ws/src/headers/qt_nuitrack_app/msg/FaceInfo.msg"
    "/home/student/catkin_ws/src/headers/qt_nuitrack_app/msg/Faces.msg"
    "/home/student/catkin_ws/src/headers/qt_nuitrack_app/msg/GestureInfo.msg"
    "/home/student/catkin_ws/src/headers/qt_nuitrack_app/msg/Gestures.msg"
    "/home/student/catkin_ws/src/headers/qt_nuitrack_app/msg/HandInfo.msg"
    "/home/student/catkin_ws/src/headers/qt_nuitrack_app/msg/Hands.msg"
    "/home/student/catkin_ws/src/headers/qt_nuitrack_app/msg/JointInfo.msg"
    "/home/student/catkin_ws/src/headers/qt_nuitrack_app/msg/SkeletonInfo.msg"
    "/home/student/catkin_ws/src/headers/qt_nuitrack_app/msg/Skeletons.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/qt_nuitrack_app/cmake" TYPE FILE FILES "/home/student/catkin_ws/build/headers/qt_nuitrack_app/catkin_generated/installspace/qt_nuitrack_app-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/student/catkin_ws/devel/include/qt_nuitrack_app")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/student/catkin_ws/devel/share/roseus/ros/qt_nuitrack_app")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/student/catkin_ws/devel/share/common-lisp/ros/qt_nuitrack_app")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/student/catkin_ws/devel/share/gennodejs/ros/qt_nuitrack_app")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/student/catkin_ws/devel/lib/python3/dist-packages/qt_nuitrack_app")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/student/catkin_ws/devel/lib/python3/dist-packages/qt_nuitrack_app")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/student/catkin_ws/build/headers/qt_nuitrack_app/catkin_generated/installspace/qt_nuitrack_app.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/qt_nuitrack_app/cmake" TYPE FILE FILES "/home/student/catkin_ws/build/headers/qt_nuitrack_app/catkin_generated/installspace/qt_nuitrack_app-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/qt_nuitrack_app/cmake" TYPE FILE FILES
    "/home/student/catkin_ws/build/headers/qt_nuitrack_app/catkin_generated/installspace/qt_nuitrack_appConfig.cmake"
    "/home/student/catkin_ws/build/headers/qt_nuitrack_app/catkin_generated/installspace/qt_nuitrack_appConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/qt_nuitrack_app" TYPE FILE FILES "/home/student/catkin_ws/src/headers/qt_nuitrack_app/package.xml")
endif()

