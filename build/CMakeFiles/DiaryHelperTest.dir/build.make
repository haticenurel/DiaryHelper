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
include CMakeFiles/DiaryHelperTest.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/DiaryHelperTest.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/DiaryHelperTest.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/DiaryHelperTest.dir/flags.make

CMakeFiles/DiaryHelperTest.dir/tests/DiaryHelperTest.cpp.o: CMakeFiles/DiaryHelperTest.dir/flags.make
CMakeFiles/DiaryHelperTest.dir/tests/DiaryHelperTest.cpp.o: /Users/haticenurel/cppworkspace/tests/DiaryHelperTest.cpp
CMakeFiles/DiaryHelperTest.dir/tests/DiaryHelperTest.cpp.o: CMakeFiles/DiaryHelperTest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/haticenurel/cppworkspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/DiaryHelperTest.dir/tests/DiaryHelperTest.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/DiaryHelperTest.dir/tests/DiaryHelperTest.cpp.o -MF CMakeFiles/DiaryHelperTest.dir/tests/DiaryHelperTest.cpp.o.d -o CMakeFiles/DiaryHelperTest.dir/tests/DiaryHelperTest.cpp.o -c /Users/haticenurel/cppworkspace/tests/DiaryHelperTest.cpp

CMakeFiles/DiaryHelperTest.dir/tests/DiaryHelperTest.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/DiaryHelperTest.dir/tests/DiaryHelperTest.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/haticenurel/cppworkspace/tests/DiaryHelperTest.cpp > CMakeFiles/DiaryHelperTest.dir/tests/DiaryHelperTest.cpp.i

CMakeFiles/DiaryHelperTest.dir/tests/DiaryHelperTest.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/DiaryHelperTest.dir/tests/DiaryHelperTest.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/haticenurel/cppworkspace/tests/DiaryHelperTest.cpp -o CMakeFiles/DiaryHelperTest.dir/tests/DiaryHelperTest.cpp.s

# Object files for target DiaryHelperTest
DiaryHelperTest_OBJECTS = \
"CMakeFiles/DiaryHelperTest.dir/tests/DiaryHelperTest.cpp.o"

# External object files for target DiaryHelperTest
DiaryHelperTest_EXTERNAL_OBJECTS = \
"/Users/haticenurel/cppworkspace/build/CMakeFiles/DiaryHelper.dir/src/DiaryHelper.cpp.o"

DiaryHelperTest: CMakeFiles/DiaryHelperTest.dir/tests/DiaryHelperTest.cpp.o
DiaryHelperTest: CMakeFiles/DiaryHelper.dir/src/DiaryHelper.cpp.o
DiaryHelperTest: CMakeFiles/DiaryHelperTest.dir/build.make
DiaryHelperTest: /usr/local/lib/libgtest.a
DiaryHelperTest: /usr/local/lib/libgtest_main.a
DiaryHelperTest: CMakeFiles/DiaryHelperTest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/haticenurel/cppworkspace/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable DiaryHelperTest"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/DiaryHelperTest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/DiaryHelperTest.dir/build: DiaryHelperTest
.PHONY : CMakeFiles/DiaryHelperTest.dir/build

CMakeFiles/DiaryHelperTest.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/DiaryHelperTest.dir/cmake_clean.cmake
.PHONY : CMakeFiles/DiaryHelperTest.dir/clean

CMakeFiles/DiaryHelperTest.dir/depend:
	cd /Users/haticenurel/cppworkspace/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/haticenurel/cppworkspace /Users/haticenurel/cppworkspace /Users/haticenurel/cppworkspace/build /Users/haticenurel/cppworkspace/build /Users/haticenurel/cppworkspace/build/CMakeFiles/DiaryHelperTest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/DiaryHelperTest.dir/depend
