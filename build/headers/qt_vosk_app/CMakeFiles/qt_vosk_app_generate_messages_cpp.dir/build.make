# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/student/catkin_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/student/catkin_ws/build

# Utility rule file for qt_vosk_app_generate_messages_cpp.

# Include the progress variables for this target.
include headers/qt_vosk_app/CMakeFiles/qt_vosk_app_generate_messages_cpp.dir/progress.make

headers/qt_vosk_app/CMakeFiles/qt_vosk_app_generate_messages_cpp: /home/student/catkin_ws/devel/include/qt_vosk_app/speech_recognize.h


/home/student/catkin_ws/devel/include/qt_vosk_app/speech_recognize.h: /opt/ros/noetic/lib/gencpp/gen_cpp.py
/home/student/catkin_ws/devel/include/qt_vosk_app/speech_recognize.h: /home/student/catkin_ws/src/headers/qt_vosk_app/srv/speech_recognize.srv
/home/student/catkin_ws/devel/include/qt_vosk_app/speech_recognize.h: /opt/ros/noetic/share/gencpp/msg.h.template
/home/student/catkin_ws/devel/include/qt_vosk_app/speech_recognize.h: /opt/ros/noetic/share/gencpp/srv.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/student/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating C++ code from qt_vosk_app/speech_recognize.srv"
	cd /home/student/catkin_ws/src/headers/qt_vosk_app && /home/student/catkin_ws/build/catkin_generated/env_cached.sh /usr/bin/python3 /opt/ros/noetic/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /home/student/catkin_ws/src/headers/qt_vosk_app/srv/speech_recognize.srv -Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg -p qt_vosk_app -o /home/student/catkin_ws/devel/include/qt_vosk_app -e /opt/ros/noetic/share/gencpp/cmake/..

qt_vosk_app_generate_messages_cpp: headers/qt_vosk_app/CMakeFiles/qt_vosk_app_generate_messages_cpp
qt_vosk_app_generate_messages_cpp: /home/student/catkin_ws/devel/include/qt_vosk_app/speech_recognize.h
qt_vosk_app_generate_messages_cpp: headers/qt_vosk_app/CMakeFiles/qt_vosk_app_generate_messages_cpp.dir/build.make

.PHONY : qt_vosk_app_generate_messages_cpp

# Rule to build all files generated by this target.
headers/qt_vosk_app/CMakeFiles/qt_vosk_app_generate_messages_cpp.dir/build: qt_vosk_app_generate_messages_cpp

.PHONY : headers/qt_vosk_app/CMakeFiles/qt_vosk_app_generate_messages_cpp.dir/build

headers/qt_vosk_app/CMakeFiles/qt_vosk_app_generate_messages_cpp.dir/clean:
	cd /home/student/catkin_ws/build/headers/qt_vosk_app && $(CMAKE_COMMAND) -P CMakeFiles/qt_vosk_app_generate_messages_cpp.dir/cmake_clean.cmake
.PHONY : headers/qt_vosk_app/CMakeFiles/qt_vosk_app_generate_messages_cpp.dir/clean

headers/qt_vosk_app/CMakeFiles/qt_vosk_app_generate_messages_cpp.dir/depend:
	cd /home/student/catkin_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/student/catkin_ws/src /home/student/catkin_ws/src/headers/qt_vosk_app /home/student/catkin_ws/build /home/student/catkin_ws/build/headers/qt_vosk_app /home/student/catkin_ws/build/headers/qt_vosk_app/CMakeFiles/qt_vosk_app_generate_messages_cpp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : headers/qt_vosk_app/CMakeFiles/qt_vosk_app_generate_messages_cpp.dir/depend

