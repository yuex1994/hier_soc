# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

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
CMAKE_SOURCE_DIR = /ILAng/ila_8051_soc

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /ILAng/ila_8051_soc/build

# Include any dependencies generated for this target.
include CMakeFiles/simple.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/simple.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/simple.dir/flags.make

CMakeFiles/simple.dir/app/main.cc.o: CMakeFiles/simple.dir/flags.make
CMakeFiles/simple.dir/app/main.cc.o: ../app/main.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/ILAng/ila_8051_soc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/simple.dir/app/main.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/simple.dir/app/main.cc.o -c /ILAng/ila_8051_soc/app/main.cc

CMakeFiles/simple.dir/app/main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/simple.dir/app/main.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /ILAng/ila_8051_soc/app/main.cc > CMakeFiles/simple.dir/app/main.cc.i

CMakeFiles/simple.dir/app/main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/simple.dir/app/main.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /ILAng/ila_8051_soc/app/main.cc -o CMakeFiles/simple.dir/app/main.cc.s

CMakeFiles/simple.dir/src/lib.cc.o: CMakeFiles/simple.dir/flags.make
CMakeFiles/simple.dir/src/lib.cc.o: ../src/lib.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/ILAng/ila_8051_soc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/simple.dir/src/lib.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/simple.dir/src/lib.cc.o -c /ILAng/ila_8051_soc/src/lib.cc

CMakeFiles/simple.dir/src/lib.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/simple.dir/src/lib.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /ILAng/ila_8051_soc/src/lib.cc > CMakeFiles/simple.dir/src/lib.cc.i

CMakeFiles/simple.dir/src/lib.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/simple.dir/src/lib.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /ILAng/ila_8051_soc/src/lib.cc -o CMakeFiles/simple.dir/src/lib.cc.s

CMakeFiles/simple.dir/src/aes_8051_integrator.cc.o: CMakeFiles/simple.dir/flags.make
CMakeFiles/simple.dir/src/aes_8051_integrator.cc.o: ../src/aes_8051_integrator.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/ILAng/ila_8051_soc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/simple.dir/src/aes_8051_integrator.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/simple.dir/src/aes_8051_integrator.cc.o -c /ILAng/ila_8051_soc/src/aes_8051_integrator.cc

CMakeFiles/simple.dir/src/aes_8051_integrator.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/simple.dir/src/aes_8051_integrator.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /ILAng/ila_8051_soc/src/aes_8051_integrator.cc > CMakeFiles/simple.dir/src/aes_8051_integrator.cc.i

CMakeFiles/simple.dir/src/aes_8051_integrator.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/simple.dir/src/aes_8051_integrator.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /ILAng/ila_8051_soc/src/aes_8051_integrator.cc -o CMakeFiles/simple.dir/src/aes_8051_integrator.cc.s

# Object files for target simple
simple_OBJECTS = \
"CMakeFiles/simple.dir/app/main.cc.o" \
"CMakeFiles/simple.dir/src/lib.cc.o" \
"CMakeFiles/simple.dir/src/aes_8051_integrator.cc.o"

# External object files for target simple
simple_EXTERNAL_OBJECTS =

simple: CMakeFiles/simple.dir/app/main.cc.o
simple: CMakeFiles/simple.dir/src/lib.cc.o
simple: CMakeFiles/simple.dir/src/aes_8051_integrator.cc.o
simple: CMakeFiles/simple.dir/build.make
simple: /usr/local/lib/libilang.so
simple: /usr/lib/libz3.so
simple: /usr/local/lib/libglog.so.0.4.0
simple: /usr/local/lib/libverilogparser.so
simple: CMakeFiles/simple.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/ILAng/ila_8051_soc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable simple"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/simple.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/simple.dir/build: simple

.PHONY : CMakeFiles/simple.dir/build

CMakeFiles/simple.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/simple.dir/cmake_clean.cmake
.PHONY : CMakeFiles/simple.dir/clean

CMakeFiles/simple.dir/depend:
	cd /ILAng/ila_8051_soc/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /ILAng/ila_8051_soc /ILAng/ila_8051_soc /ILAng/ila_8051_soc/build /ILAng/ila_8051_soc/build /ILAng/ila_8051_soc/build/CMakeFiles/simple.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/simple.dir/depend
