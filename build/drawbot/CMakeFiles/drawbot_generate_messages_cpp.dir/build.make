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
CMAKE_SOURCE_DIR = /home/riccardo/catkin_ws/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/riccardo/catkin_ws/build

# Utility rule file for drawbot_generate_messages_cpp.

# Include the progress variables for this target.
include drawbot/CMakeFiles/drawbot_generate_messages_cpp.dir/progress.make

drawbot/CMakeFiles/drawbot_generate_messages_cpp: /home/riccardo/catkin_ws/devel/include/drawbot/Custom.h
drawbot/CMakeFiles/drawbot_generate_messages_cpp: /home/riccardo/catkin_ws/devel/include/drawbot/Data_arduino.h
drawbot/CMakeFiles/drawbot_generate_messages_cpp: /home/riccardo/catkin_ws/devel/include/drawbot/Custom_interface.h


/home/riccardo/catkin_ws/devel/include/drawbot/Custom.h: /opt/ros/noetic/lib/gencpp/gen_cpp.py
/home/riccardo/catkin_ws/devel/include/drawbot/Custom.h: /home/riccardo/catkin_ws/src/drawbot/msg/Custom.msg
/home/riccardo/catkin_ws/devel/include/drawbot/Custom.h: /opt/ros/noetic/share/gencpp/msg.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/riccardo/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating C++ code from drawbot/Custom.msg"
	cd /home/riccardo/catkin_ws/src/drawbot && /home/riccardo/catkin_ws/build/catkin_generated/env_cached.sh /usr/bin/python3 /opt/ros/noetic/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /home/riccardo/catkin_ws/src/drawbot/msg/Custom.msg -Idrawbot:/home/riccardo/catkin_ws/src/drawbot/msg -Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg -p drawbot -o /home/riccardo/catkin_ws/devel/include/drawbot -e /opt/ros/noetic/share/gencpp/cmake/..

/home/riccardo/catkin_ws/devel/include/drawbot/Data_arduino.h: /opt/ros/noetic/lib/gencpp/gen_cpp.py
/home/riccardo/catkin_ws/devel/include/drawbot/Data_arduino.h: /home/riccardo/catkin_ws/src/drawbot/msg/Data_arduino.msg
/home/riccardo/catkin_ws/devel/include/drawbot/Data_arduino.h: /opt/ros/noetic/share/gencpp/msg.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/riccardo/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating C++ code from drawbot/Data_arduino.msg"
	cd /home/riccardo/catkin_ws/src/drawbot && /home/riccardo/catkin_ws/build/catkin_generated/env_cached.sh /usr/bin/python3 /opt/ros/noetic/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /home/riccardo/catkin_ws/src/drawbot/msg/Data_arduino.msg -Idrawbot:/home/riccardo/catkin_ws/src/drawbot/msg -Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg -p drawbot -o /home/riccardo/catkin_ws/devel/include/drawbot -e /opt/ros/noetic/share/gencpp/cmake/..

/home/riccardo/catkin_ws/devel/include/drawbot/Custom_interface.h: /opt/ros/noetic/lib/gencpp/gen_cpp.py
/home/riccardo/catkin_ws/devel/include/drawbot/Custom_interface.h: /home/riccardo/catkin_ws/src/drawbot/msg/Custom_interface.msg
/home/riccardo/catkin_ws/devel/include/drawbot/Custom_interface.h: /opt/ros/noetic/share/gencpp/msg.h.template
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/riccardo/catkin_ws/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Generating C++ code from drawbot/Custom_interface.msg"
	cd /home/riccardo/catkin_ws/src/drawbot && /home/riccardo/catkin_ws/build/catkin_generated/env_cached.sh /usr/bin/python3 /opt/ros/noetic/share/gencpp/cmake/../../../lib/gencpp/gen_cpp.py /home/riccardo/catkin_ws/src/drawbot/msg/Custom_interface.msg -Idrawbot:/home/riccardo/catkin_ws/src/drawbot/msg -Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg -p drawbot -o /home/riccardo/catkin_ws/devel/include/drawbot -e /opt/ros/noetic/share/gencpp/cmake/..

drawbot_generate_messages_cpp: drawbot/CMakeFiles/drawbot_generate_messages_cpp
drawbot_generate_messages_cpp: /home/riccardo/catkin_ws/devel/include/drawbot/Custom.h
drawbot_generate_messages_cpp: /home/riccardo/catkin_ws/devel/include/drawbot/Data_arduino.h
drawbot_generate_messages_cpp: /home/riccardo/catkin_ws/devel/include/drawbot/Custom_interface.h
drawbot_generate_messages_cpp: drawbot/CMakeFiles/drawbot_generate_messages_cpp.dir/build.make

.PHONY : drawbot_generate_messages_cpp

# Rule to build all files generated by this target.
drawbot/CMakeFiles/drawbot_generate_messages_cpp.dir/build: drawbot_generate_messages_cpp

.PHONY : drawbot/CMakeFiles/drawbot_generate_messages_cpp.dir/build

drawbot/CMakeFiles/drawbot_generate_messages_cpp.dir/clean:
	cd /home/riccardo/catkin_ws/build/drawbot && $(CMAKE_COMMAND) -P CMakeFiles/drawbot_generate_messages_cpp.dir/cmake_clean.cmake
.PHONY : drawbot/CMakeFiles/drawbot_generate_messages_cpp.dir/clean

drawbot/CMakeFiles/drawbot_generate_messages_cpp.dir/depend:
	cd /home/riccardo/catkin_ws/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/riccardo/catkin_ws/src /home/riccardo/catkin_ws/src/drawbot /home/riccardo/catkin_ws/build /home/riccardo/catkin_ws/build/drawbot /home/riccardo/catkin_ws/build/drawbot/CMakeFiles/drawbot_generate_messages_cpp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : drawbot/CMakeFiles/drawbot_generate_messages_cpp.dir/depend

