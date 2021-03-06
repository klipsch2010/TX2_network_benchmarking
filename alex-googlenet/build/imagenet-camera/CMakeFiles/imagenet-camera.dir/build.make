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
include imagenet-camera/CMakeFiles/imagenet-camera.dir/depend.make

# Include the progress variables for this target.
include imagenet-camera/CMakeFiles/imagenet-camera.dir/progress.make

# Include the compile flags for this target's objects.
include imagenet-camera/CMakeFiles/imagenet-camera.dir/flags.make

imagenet-camera/CMakeFiles/imagenet-camera.dir/imagenet-camera.cpp.o: imagenet-camera/CMakeFiles/imagenet-camera.dir/flags.make
imagenet-camera/CMakeFiles/imagenet-camera.dir/imagenet-camera.cpp.o: ../imagenet-camera/imagenet-camera.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nvidia/project/alex-googlenet/jetson-inference/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object imagenet-camera/CMakeFiles/imagenet-camera.dir/imagenet-camera.cpp.o"
	cd /home/nvidia/project/alex-googlenet/jetson-inference/build/imagenet-camera && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/imagenet-camera.dir/imagenet-camera.cpp.o -c /home/nvidia/project/alex-googlenet/jetson-inference/imagenet-camera/imagenet-camera.cpp

imagenet-camera/CMakeFiles/imagenet-camera.dir/imagenet-camera.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/imagenet-camera.dir/imagenet-camera.cpp.i"
	cd /home/nvidia/project/alex-googlenet/jetson-inference/build/imagenet-camera && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nvidia/project/alex-googlenet/jetson-inference/imagenet-camera/imagenet-camera.cpp > CMakeFiles/imagenet-camera.dir/imagenet-camera.cpp.i

imagenet-camera/CMakeFiles/imagenet-camera.dir/imagenet-camera.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/imagenet-camera.dir/imagenet-camera.cpp.s"
	cd /home/nvidia/project/alex-googlenet/jetson-inference/build/imagenet-camera && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nvidia/project/alex-googlenet/jetson-inference/imagenet-camera/imagenet-camera.cpp -o CMakeFiles/imagenet-camera.dir/imagenet-camera.cpp.s

imagenet-camera/CMakeFiles/imagenet-camera.dir/imagenet-camera.cpp.o.requires:

.PHONY : imagenet-camera/CMakeFiles/imagenet-camera.dir/imagenet-camera.cpp.o.requires

imagenet-camera/CMakeFiles/imagenet-camera.dir/imagenet-camera.cpp.o.provides: imagenet-camera/CMakeFiles/imagenet-camera.dir/imagenet-camera.cpp.o.requires
	$(MAKE) -f imagenet-camera/CMakeFiles/imagenet-camera.dir/build.make imagenet-camera/CMakeFiles/imagenet-camera.dir/imagenet-camera.cpp.o.provides.build
.PHONY : imagenet-camera/CMakeFiles/imagenet-camera.dir/imagenet-camera.cpp.o.provides

imagenet-camera/CMakeFiles/imagenet-camera.dir/imagenet-camera.cpp.o.provides.build: imagenet-camera/CMakeFiles/imagenet-camera.dir/imagenet-camera.cpp.o


# Object files for target imagenet-camera
imagenet__camera_OBJECTS = \
"CMakeFiles/imagenet-camera.dir/imagenet-camera.cpp.o"

# External object files for target imagenet-camera
imagenet__camera_EXTERNAL_OBJECTS =

aarch64/bin/imagenet-camera: imagenet-camera/CMakeFiles/imagenet-camera.dir/imagenet-camera.cpp.o
aarch64/bin/imagenet-camera: imagenet-camera/CMakeFiles/imagenet-camera.dir/build.make
aarch64/bin/imagenet-camera: /usr/local/cuda-9.0/lib64/libcudart_static.a
aarch64/bin/imagenet-camera: /usr/lib/aarch64-linux-gnu/librt.so
aarch64/bin/imagenet-camera: aarch64/lib/libjetson-inference.so
aarch64/bin/imagenet-camera: /usr/local/cuda-9.0/lib64/libcudart_static.a
aarch64/bin/imagenet-camera: /usr/lib/aarch64-linux-gnu/librt.so
aarch64/bin/imagenet-camera: /usr/lib/aarch64-linux-gnu/libQtGui.so
aarch64/bin/imagenet-camera: /usr/lib/aarch64-linux-gnu/libQtCore.so
aarch64/bin/imagenet-camera: imagenet-camera/CMakeFiles/imagenet-camera.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/nvidia/project/alex-googlenet/jetson-inference/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../aarch64/bin/imagenet-camera"
	cd /home/nvidia/project/alex-googlenet/jetson-inference/build/imagenet-camera && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/imagenet-camera.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
imagenet-camera/CMakeFiles/imagenet-camera.dir/build: aarch64/bin/imagenet-camera

.PHONY : imagenet-camera/CMakeFiles/imagenet-camera.dir/build

imagenet-camera/CMakeFiles/imagenet-camera.dir/requires: imagenet-camera/CMakeFiles/imagenet-camera.dir/imagenet-camera.cpp.o.requires

.PHONY : imagenet-camera/CMakeFiles/imagenet-camera.dir/requires

imagenet-camera/CMakeFiles/imagenet-camera.dir/clean:
	cd /home/nvidia/project/alex-googlenet/jetson-inference/build/imagenet-camera && $(CMAKE_COMMAND) -P CMakeFiles/imagenet-camera.dir/cmake_clean.cmake
.PHONY : imagenet-camera/CMakeFiles/imagenet-camera.dir/clean

imagenet-camera/CMakeFiles/imagenet-camera.dir/depend:
	cd /home/nvidia/project/alex-googlenet/jetson-inference/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nvidia/project/alex-googlenet/jetson-inference /home/nvidia/project/alex-googlenet/jetson-inference/imagenet-camera /home/nvidia/project/alex-googlenet/jetson-inference/build /home/nvidia/project/alex-googlenet/jetson-inference/build/imagenet-camera /home/nvidia/project/alex-googlenet/jetson-inference/build/imagenet-camera/CMakeFiles/imagenet-camera.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : imagenet-camera/CMakeFiles/imagenet-camera.dir/depend

