# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/workspace/CppND-Capstone-Mandelbort_Generator

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/workspace/CppND-Capstone-Mandelbort_Generator/build

# Include any dependencies generated for this target.
include CMakeFiles/Mandel.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Mandel.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Mandel.dir/flags.make

CMakeFiles/Mandel.dir/src/main.cpp.o: CMakeFiles/Mandel.dir/flags.make
CMakeFiles/Mandel.dir/src/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/workspace/CppND-Capstone-Mandelbort_Generator/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Mandel.dir/src/main.cpp.o"
	/usr/bin/g++-7  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Mandel.dir/src/main.cpp.o -c /home/workspace/CppND-Capstone-Mandelbort_Generator/src/main.cpp

CMakeFiles/Mandel.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Mandel.dir/src/main.cpp.i"
	/usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/workspace/CppND-Capstone-Mandelbort_Generator/src/main.cpp > CMakeFiles/Mandel.dir/src/main.cpp.i

CMakeFiles/Mandel.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Mandel.dir/src/main.cpp.s"
	/usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/workspace/CppND-Capstone-Mandelbort_Generator/src/main.cpp -o CMakeFiles/Mandel.dir/src/main.cpp.s

CMakeFiles/Mandel.dir/src/mandelbrot.cpp.o: CMakeFiles/Mandel.dir/flags.make
CMakeFiles/Mandel.dir/src/mandelbrot.cpp.o: ../src/mandelbrot.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/workspace/CppND-Capstone-Mandelbort_Generator/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Mandel.dir/src/mandelbrot.cpp.o"
	/usr/bin/g++-7  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Mandel.dir/src/mandelbrot.cpp.o -c /home/workspace/CppND-Capstone-Mandelbort_Generator/src/mandelbrot.cpp

CMakeFiles/Mandel.dir/src/mandelbrot.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Mandel.dir/src/mandelbrot.cpp.i"
	/usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/workspace/CppND-Capstone-Mandelbort_Generator/src/mandelbrot.cpp > CMakeFiles/Mandel.dir/src/mandelbrot.cpp.i

CMakeFiles/Mandel.dir/src/mandelbrot.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Mandel.dir/src/mandelbrot.cpp.s"
	/usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/workspace/CppND-Capstone-Mandelbort_Generator/src/mandelbrot.cpp -o CMakeFiles/Mandel.dir/src/mandelbrot.cpp.s

# Object files for target Mandel
Mandel_OBJECTS = \
"CMakeFiles/Mandel.dir/src/main.cpp.o" \
"CMakeFiles/Mandel.dir/src/mandelbrot.cpp.o"

# External object files for target Mandel
Mandel_EXTERNAL_OBJECTS =

Mandel: CMakeFiles/Mandel.dir/src/main.cpp.o
Mandel: CMakeFiles/Mandel.dir/src/mandelbrot.cpp.o
Mandel: CMakeFiles/Mandel.dir/build.make
Mandel: /usr/lib/x86_64-linux-gnu/libSDL2_image.so
Mandel: CMakeFiles/Mandel.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/workspace/CppND-Capstone-Mandelbort_Generator/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable Mandel"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Mandel.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Mandel.dir/build: Mandel

.PHONY : CMakeFiles/Mandel.dir/build

CMakeFiles/Mandel.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Mandel.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Mandel.dir/clean

CMakeFiles/Mandel.dir/depend:
	cd /home/workspace/CppND-Capstone-Mandelbort_Generator/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/workspace/CppND-Capstone-Mandelbort_Generator /home/workspace/CppND-Capstone-Mandelbort_Generator /home/workspace/CppND-Capstone-Mandelbort_Generator/build /home/workspace/CppND-Capstone-Mandelbort_Generator/build /home/workspace/CppND-Capstone-Mandelbort_Generator/build/CMakeFiles/Mandel.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Mandel.dir/depend

