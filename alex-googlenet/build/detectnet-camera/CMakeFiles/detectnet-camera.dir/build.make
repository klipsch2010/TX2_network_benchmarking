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
include detectnet-camera/CMakeFiles/detectnet-camera.dir/depend.make

# Include the progress variables for this target.
include detectnet-camera/CMakeFiles/detectnet-camera.dir/progress.make

# Include the compile flags for this target's objects.
include detectnet-camera/CMakeFiles/detectnet-camera.dir/flags.make

detectnet-camera/CMakeFiles/detectnet-camera.dir/detectnet-camera.cpp.o: detectnet-camera/CMakeFiles/detectnet-camera.dir/flags.make
detectnet-camera/CMakeFiles/detectnet-camera.dir/detectnet-camera.cpp.o: ../detectnet-camera/detectnet-camera.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nvidia/project/alex-googlenet/jetson-inference/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object detectnet-camera/CMakeFiles/detectnet-camera.dir/detectnet-camera.cpp.o"
	cd /home/nvidia/project/alex-googlenet/jetson-inference/build/detectnet-camera && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/detectnet-camera.dir/detectnet-camera.cpp.o -c /home/nvidia/project/alex-googlenet/jetson-inference/detectnet-camera/detectnet-camera.cpp

detectnet-camera/CMakeFiles/detectnet-camera.dir/detectnet-camera.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/detectnet-camera.dir/detectnet-camera.cpp.i"
	cd /home/nvidia/project/alex-googlenet/jetson-inference/build/detectnet-camera && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nvidia/project/alex-googlenet/jetson-inference/detectnet-camera/detectnet-camera.cpp > CMakeFiles/detectnet-camera.dir/detectnet-camera.cpp.i

detectnet-camera/CMakeFiles/detectnet-camera.dir/detectnet-camera.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/detectnet-camera.dir/detectnet-camera.cpp.s"
	cd /home/nvidia/project/alex-googlenet/jetson-inference/build/detectnet-camera && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nvidia/project/alex-googlenet/jetson-inference/detectnet-camera/detectnet-camera.cpp -o CMakeFiles/detectnet-camera.dir/detectnet-camera.cpp.s

detectnet-camera/CMakeFiles/detectnet-camera.dir/detectnet-camera.cpp.o.requires:

.PHONY : detectnet-camera/CMakeFiles/detectnet-camera.dir/detectnet-camera.cpp.o.requires

detectnet-camera/CMakeFiles/detectnet-camera.dir/detectnet-camera.cpp.o.provides: detectnet-camera/CMakeFiles/detectnet-camera.dir/detectnet-camera.cpp.o.requires
	$(MAKE) -f detectnet-camera/CMakeFiles/detectnet-camera.dir/build.make detectnet-camera/CMakeFiles/detectnet-camera.dir/detectnet-camera.cpp.o.provides.build
.PHONY : detectnet-camera/CMakeFiles/detectnet-camera.dir/detectnet-camera.cpp.o.provides

detectnet-camera/CMakeFiles/detectnet-camera.dir/detectnet-camera.cpp.o.provides.build: detectnet-camera/CMakeFiles/detectnet-camera.dir/detectnet-camera.cpp.o


# Object files for target detectnet-camera
detectnet__camera_OBJECTS = \
"CMakeFiles/detectnet-camera.dir/detectnet-camera.cpp.o"

# External object files for target detectnet-camera
detectnet__camera_EXTERNAL_OBJECTS =

aarch64/bin/detectnet-camera: detectnet-camera/CMakeFiles/detectnet-camera.dir/detectnet-camera.cpp.o
aarch64/bin/detectnet-camera: detectnet-camera/CMakeFiles/detectnet-camera.dir/build.make
aarch64/bin/detectnet-camera: /usr/local/cuda-9.0/lib64/libcudart_static.a
aarch64/bin/detectnet-camera: /usr/lib/aarch64-linux-gnu/librt.so
aarch64/bin/detectnet-camera: aarch64/lib/libjetson-inference.so
aarch64/bin/detectnet-camera: /usr/local/cuda-9.0/lib64/libcudart_static.a
aarch64/bin/detectnet-camera: /usr/lib/aarch64-linux-gnu/librt.so
aarch64/bin/detectnet-camera: /usr/lib/aarch64-linux-gnu/libQtGui.so
aarch64/bin/detectnet-camera: /usr/lib/aarch64-linux-gnu/libQtCore.so
aarch64/bin/detectnet-camera: detectnet-camera/CMakeFiles/detectnet-camera.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/nvidia/project/alex-googlenet/jetson-inference/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../aarch64/bin/detectnet-camera"
	cd /home/nvidia/project/alex-googlenet/jetson-inference/build/detectnet-camera && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/detectnet-camera.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
detectnet-camera/CMakeFiles/detectnet-camera.dir/build: aarch64/bin/detectnet-camera

.PHONY : detectnet-camera/CMakeFiles/detectnet-camera.dir/build

detectnet-camera/CMakeFiles/detectnet-camera.dir/requires: detectnet-camera/CMakeFiles/detectnet-camera.dir/detectnet-camera.cpp.o.requires

.PHONY : detectnet-camera/CMakeFiles/detectnet-camera.dir/requires

detectnet-camera/CMakeFiles/detectnet-camera.dir/clean:
	cd /home/nvidia/project/alex-googlenet/jetson-inference/build/detectnet-camera && $(CMAKE_COMMAND) -P CMakeFiles/detectnet-camera.dir/cmake_clean.cmake
.PHONY : detectnet-camera/CMakeFiles/detectnet-camera.dir/clean

detectnet-camera/CMakeFiles/detectnet-camera.dir/depend:
	cd /home/nvidia/project/alex-googlenet/jetson-inference/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nvidia/project/alex-googlenet/jetson-inference /home/nvidia/project/alex-googlenet/jetson-inference/detectnet-camera /home/nvidia/project/alex-googlenet/jetson-inference/build /home/nvidia/project/alex-googlenet/jetson-inference/build/detectnet-camera /home/nvidia/project/alex-googlenet/jetson-inference/build/detectnet-camera/CMakeFiles/detectnet-camera.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : detectnet-camera/CMakeFiles/detectnet-camera.dir/depend

