# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.26

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.26.4/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.26.4/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/haticenurel/cppworkspace

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/haticenurel/cppworkspace/build

# Include any dependencies generated for this target.
include CMakeFiles/Example.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Example.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Example.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Example.dir/flags.make

CMakeFiles/Example.dir/examples/example.cpp.o: CMakeFiles/Example.dir/flags.make
CMakeFiles/Example.dir/examples/example.cpp.o: /Users/haticenurel/cppworkspace/examples/example.cpp
CMakeFiles/Example.dir/examples/example.cpp.o: CMakeFiles/Example.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/haticenurel/cppworkspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Example.dir/examples/example.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Example.dir/examples/example.cpp.o -MF CMakeFiles/Example.dir/examples/example.cpp.o.d -o CMakeFiles/Example.dir/examples/example.cpp.o -c /Users/haticenurel/cppworkspace/examples/example.cpp

CMakeFiles/Example.dir/examples/example.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Example.dir/examples/example.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/haticenurel/cppworkspace/examples/example.cpp > CMakeFiles/Example.dir/examples/example.cpp.i

CMakeFiles/Example.dir/examples/example.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Example.dir/examples/example.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/haticenurel/cppworkspace/examples/example.cpp -o CMakeFiles/Example.dir/examples/example.cpp.s

# Object files for target Example
Example_OBJECTS = \
"CMakeFiles/Example.dir/examples/example.cpp.o"

# External object files for target Example
Example_EXTERNAL_OBJECTS = \
"/Users/haticenurel/cppworkspace/build/CMakeFiles/DiaryHelper.dir/src/DiaryHelper.cpp.o"

Example: CMakeFiles/Example.dir/examples/example.cpp.o
Example: CMakeFiles/DiaryHelper.dir/src/DiaryHelper.cpp.o
Example: CMakeFiles/Example.dir/build.make
Example: /usr/local/lib/libgtest.a
Example: /usr/local/lib/libgtest_main.a
Example: CMakeFiles/Example.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/haticenurel/cppworkspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Example"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Example.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Example.dir/build: Example
.PHONY : CMakeFiles/Example.dir/build

CMakeFiles/Example.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Example.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Example.dir/clean

CMakeFiles/Example.dir/depend:
	cd /Users/haticenurel/cppworkspace/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/haticenurel/cppworkspace /Users/haticenurel/cppworkspace /Users/haticenurel/cppworkspace/build /Users/haticenurel/cppworkspace/build /Users/haticenurel/cppworkspace/build/CMakeFiles/Example.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Example.dir/depend
