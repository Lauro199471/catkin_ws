# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /home/lauro199471/catkin_ws/src/Xbox_Pan_and_Tilt

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/lauro199471/catkin_ws/build/Xbox_Pan_and_Tilt

# Include any dependencies generated for this target.
include CMakeFiles/minimal_simulator.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/minimal_simulator.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/minimal_simulator.dir/flags.make

CMakeFiles/minimal_simulator.dir/src/minimal_simulator.cpp.o: CMakeFiles/minimal_simulator.dir/flags.make
CMakeFiles/minimal_simulator.dir/src/minimal_simulator.cpp.o: /home/lauro199471/catkin_ws/src/Xbox_Pan_and_Tilt/src/minimal_simulator.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lauro199471/catkin_ws/build/Xbox_Pan_and_Tilt/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/minimal_simulator.dir/src/minimal_simulator.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/minimal_simulator.dir/src/minimal_simulator.cpp.o -c /home/lauro199471/catkin_ws/src/Xbox_Pan_and_Tilt/src/minimal_simulator.cpp

CMakeFiles/minimal_simulator.dir/src/minimal_simulator.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/minimal_simulator.dir/src/minimal_simulator.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lauro199471/catkin_ws/src/Xbox_Pan_and_Tilt/src/minimal_simulator.cpp > CMakeFiles/minimal_simulator.dir/src/minimal_simulator.cpp.i

CMakeFiles/minimal_simulator.dir/src/minimal_simulator.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/minimal_simulator.dir/src/minimal_simulator.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lauro199471/catkin_ws/src/Xbox_Pan_and_Tilt/src/minimal_simulator.cpp -o CMakeFiles/minimal_simulator.dir/src/minimal_simulator.cpp.s

CMakeFiles/minimal_simulator.dir/src/minimal_simulator.cpp.o.requires:

.PHONY : CMakeFiles/minimal_simulator.dir/src/minimal_simulator.cpp.o.requires

CMakeFiles/minimal_simulator.dir/src/minimal_simulator.cpp.o.provides: CMakeFiles/minimal_simulator.dir/src/minimal_simulator.cpp.o.requires
	$(MAKE) -f CMakeFiles/minimal_simulator.dir/build.make CMakeFiles/minimal_simulator.dir/src/minimal_simulator.cpp.o.provides.build
.PHONY : CMakeFiles/minimal_simulator.dir/src/minimal_simulator.cpp.o.provides

CMakeFiles/minimal_simulator.dir/src/minimal_simulator.cpp.o.provides.build: CMakeFiles/minimal_simulator.dir/src/minimal_simulator.cpp.o


# Object files for target minimal_simulator
minimal_simulator_OBJECTS = \
"CMakeFiles/minimal_simulator.dir/src/minimal_simulator.cpp.o"

# External object files for target minimal_simulator
minimal_simulator_EXTERNAL_OBJECTS =

minimal_simulator: CMakeFiles/minimal_simulator.dir/src/minimal_simulator.cpp.o
minimal_simulator: CMakeFiles/minimal_simulator.dir/build.make
minimal_simulator: /opt/ros/kinetic/lib/libroscpp.so
minimal_simulator: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
minimal_simulator: /usr/lib/x86_64-linux-gnu/libboost_signals.so
minimal_simulator: /opt/ros/kinetic/lib/librosconsole.so
minimal_simulator: /opt/ros/kinetic/lib/librosconsole_log4cxx.so
minimal_simulator: /opt/ros/kinetic/lib/librosconsole_backend_interface.so
minimal_simulator: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
minimal_simulator: /usr/lib/x86_64-linux-gnu/libboost_regex.so
minimal_simulator: /opt/ros/kinetic/lib/libxmlrpcpp.so
minimal_simulator: /opt/ros/kinetic/lib/libroscpp_serialization.so
minimal_simulator: /opt/ros/kinetic/lib/librostime.so
minimal_simulator: /opt/ros/kinetic/lib/libcpp_common.so
minimal_simulator: /usr/lib/x86_64-linux-gnu/libboost_system.so
minimal_simulator: /usr/lib/x86_64-linux-gnu/libboost_thread.so
minimal_simulator: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
minimal_simulator: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
minimal_simulator: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
minimal_simulator: /usr/lib/x86_64-linux-gnu/libpthread.so
minimal_simulator: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
minimal_simulator: CMakeFiles/minimal_simulator.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/lauro199471/catkin_ws/build/Xbox_Pan_and_Tilt/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable minimal_simulator"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/minimal_simulator.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/minimal_simulator.dir/build: minimal_simulator

.PHONY : CMakeFiles/minimal_simulator.dir/build

CMakeFiles/minimal_simulator.dir/requires: CMakeFiles/minimal_simulator.dir/src/minimal_simulator.cpp.o.requires

.PHONY : CMakeFiles/minimal_simulator.dir/requires

CMakeFiles/minimal_simulator.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/minimal_simulator.dir/cmake_clean.cmake
.PHONY : CMakeFiles/minimal_simulator.dir/clean

CMakeFiles/minimal_simulator.dir/depend:
	cd /home/lauro199471/catkin_ws/build/Xbox_Pan_and_Tilt && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lauro199471/catkin_ws/src/Xbox_Pan_and_Tilt /home/lauro199471/catkin_ws/src/Xbox_Pan_and_Tilt /home/lauro199471/catkin_ws/build/Xbox_Pan_and_Tilt /home/lauro199471/catkin_ws/build/Xbox_Pan_and_Tilt /home/lauro199471/catkin_ws/build/Xbox_Pan_and_Tilt/CMakeFiles/minimal_simulator.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/minimal_simulator.dir/depend

