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
CMAKE_SOURCE_DIR = /home/nvidia/project/alex-googlenet/jetson-inference

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/nvidia/project/alex-googlenet/jetson-inference/build

# Include any dependencies generated for this target.
include segnet-camera/CMakeFiles/segnet-camera.dir/depend.make

# Include the progress variables for this target.
include segnet-camera/CMakeFiles/segnet-camera.dir/progress.make

# Include the compile flags for this target's objects.
include segnet-camera/CMakeFiles/segnet-camera.dir/flags.make

segnet-camera/CMakeFiles/segnet-camera.dir/segnet-camera.cpp.o: segnet-camera/CMakeFiles/segnet-camera.dir/flags.make
segnet-camera/CMakeFiles/segnet-camera.dir/segnet-camera.cpp.o: ../segnet-camera/segnet-camera.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nvidia/project/alex-googlenet/jetson-inference/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object segnet-camera/CMakeFiles/segnet-camera.dir/segnet-camera.cpp.o"
	cd /home/nvidia/project/alex-googlenet/jetson-inference/build/segnet-camera && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/segnet-camera.dir/segnet-camera.cpp.o -c /home/nvidia/project/alex-googlenet/jetson-inference/segnet-camera/segnet-camera.cpp

segnet-camera/CMakeFiles/segnet-camera.dir/segnet-camera.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/segnet-camera.dir/segnet-camera.cpp.i"
	cd /home/nvidia/project/alex-googlenet/jetson-inference/build/segnet-camera && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nvidia/project/alex-googlenet/jetson-inference/segnet-camera/segnet-camera.cpp > CMakeFiles/segnet-camera.dir/segnet-camera.cpp.i

segnet-camera/CMakeFiles/segnet-camera.dir/segnet-camera.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/segnet-camera.dir/segnet-camera.cpp.s"
	cd /home/nvidia/project/alex-googlenet/jetson-inference/build/segnet-camera && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nvidia/project/alex-googlenet/jetson-inference/segnet-camera/segnet-camera.cpp -o CMakeFiles/segnet-camera.dir/segnet-camera.cpp.s

segnet-camera/CMakeFiles/segnet-camera.dir/segnet-camera.cpp.o.requires:

.PHONY : segnet-camera/CMakeFiles/segnet-camera.dir/segnet-camera.cpp.o.requires

segnet-camera/CMakeFiles/segnet-camera.dir/segnet-camera.cpp.o.provides: segnet-camera/CMakeFiles/segnet-camera.dir/segnet-camera.cpp.o.requires
	$(MAKE) -f segnet-camera/CMakeFiles/segnet-camera.dir/build.make segnet-camera/CMakeFiles/segnet-camera.dir/segnet-camera.cpp.o.provides.build
.PHONY : segnet-camera/CMakeFiles/segnet-camera.dir/segnet-camera.cpp.o.provides

segnet-camera/CMakeFiles/segnet-camera.dir/segnet-camera.cpp.o.provides.build: segnet-camera/CMakeFiles/segnet-camera.dir/segnet-camera.cpp.o


# Object files for target segnet-camera
segnet__camera_OBJECTS = \
"CMakeFiles/segnet-camera.dir/segnet-camera.cpp.o"

# External object files for target segnet-camera
segnet__camera_EXTERNAL_OBJECTS =

aarch64/bin/segnet-camera: segnet-camera/CMakeFiles/segnet-camera.dir/segnet-camera.cpp.o
aarch64/bin/segnet-camera: segnet-camera/CMakeFiles/segnet-camera.dir/build.make
aarch64/bin/segnet-camera: /usr/local/cuda-9.0/lib64/libcudart_static.a
aarch64/bin/segnet-camera: /usr/lib/aarch64-linux-gnu/librt.so
aarch64/bin/segnet-camera: aarch64/lib/libjetson-inference.so
aarch64/bin/segnet-camera: /usr/local/cuda-9.0/lib64/libcudart_static.a
aarch64/bin/segnet-camera: /usr/lib/aarch64-linux-gnu/librt.so
aarch64/bin/segnet-camera: /usr/lib/aarch64-linux-gnu/libQtGui.so
aarch64/bin/segnet-camera: /usr/lib/aarch64-linux-gnu/libQtCore.so
aarch64/bin/segnet-camera: segnet-camera/CMakeFiles/segnet-camera.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/nvidia/project/alex-googlenet/jetson-inference/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../aarch64/bin/segnet-camera"
	cd /home/nvidia/project/alex-googlenet/jetson-inference/build/segnet-camera && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/segnet-camera.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
segnet-camera/CMakeFiles/segnet-camera.dir/build: aarch64/bin/segnet-camera

.PHONY : segnet-camera/CMakeFiles/segnet-camera.dir/build

segnet-camera/CMakeFiles/segnet-camera.dir/requires: segnet-camera/CMakeFiles/segnet-camera.dir/segnet-camera.cpp.o.requires

.PHONY : segnet-camera/CMakeFiles/segnet-camera.dir/requires

segnet-camera/CMakeFiles/segnet-camera.dir/clean:
	cd /home/nvidia/project/alex-googlenet/jetson-inference/build/segnet-camera && $(CMAKE_COMMAND) -P CMakeFiles/segnet-camera.dir/cmake_clean.cmake
.PHONY : segnet-camera/CMakeFiles/segnet-camera.dir/clean

segnet-camera/CMakeFiles/segnet-camera.dir/depend:
	cd /home/nvidia/project/alex-googlenet/jetson-inference/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nvidia/project/alex-googlenet/jetson-inference /home/nvidia/project/alex-googlenet/jetson-inference/segnet-camera /home/nvidia/project/alex-googlenet/jetson-inference/build /home/nvidia/project/alex-googlenet/jetson-inference/build/segnet-camera /home/nvidia/project/alex-googlenet/jetson-inference/build/segnet-camera/CMakeFiles/segnet-camera.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : segnet-camera/CMakeFiles/segnet-camera.dir/depend

