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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/eliasmann/Desktop/Algorithms/Mann_CS3353_Midterm_SplayTree/Midterm_SplayTree

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/eliasmann/Desktop/Algorithms/Mann_CS3353_Midterm_SplayTree/Midterm_SplayTree/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Midterm_SplayTree.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Midterm_SplayTree.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Midterm_SplayTree.dir/flags.make

CMakeFiles/Midterm_SplayTree.dir/src/main.cpp.o: CMakeFiles/Midterm_SplayTree.dir/flags.make
CMakeFiles/Midterm_SplayTree.dir/src/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/eliasmann/Desktop/Algorithms/Mann_CS3353_Midterm_SplayTree/Midterm_SplayTree/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Midterm_SplayTree.dir/src/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Midterm_SplayTree.dir/src/main.cpp.o -c /Users/eliasmann/Desktop/Algorithms/Mann_CS3353_Midterm_SplayTree/Midterm_SplayTree/src/main.cpp

CMakeFiles/Midterm_SplayTree.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Midterm_SplayTree.dir/src/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/eliasmann/Desktop/Algorithms/Mann_CS3353_Midterm_SplayTree/Midterm_SplayTree/src/main.cpp > CMakeFiles/Midterm_SplayTree.dir/src/main.cpp.i

CMakeFiles/Midterm_SplayTree.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Midterm_SplayTree.dir/src/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/eliasmann/Desktop/Algorithms/Mann_CS3353_Midterm_SplayTree/Midterm_SplayTree/src/main.cpp -o CMakeFiles/Midterm_SplayTree.dir/src/main.cpp.s

CMakeFiles/Midterm_SplayTree.dir/src/SplayTree.cpp.o: CMakeFiles/Midterm_SplayTree.dir/flags.make
CMakeFiles/Midterm_SplayTree.dir/src/SplayTree.cpp.o: ../src/SplayTree.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/eliasmann/Desktop/Algorithms/Mann_CS3353_Midterm_SplayTree/Midterm_SplayTree/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Midterm_SplayTree.dir/src/SplayTree.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Midterm_SplayTree.dir/src/SplayTree.cpp.o -c /Users/eliasmann/Desktop/Algorithms/Mann_CS3353_Midterm_SplayTree/Midterm_SplayTree/src/SplayTree.cpp

CMakeFiles/Midterm_SplayTree.dir/src/SplayTree.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Midterm_SplayTree.dir/src/SplayTree.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/eliasmann/Desktop/Algorithms/Mann_CS3353_Midterm_SplayTree/Midterm_SplayTree/src/SplayTree.cpp > CMakeFiles/Midterm_SplayTree.dir/src/SplayTree.cpp.i

CMakeFiles/Midterm_SplayTree.dir/src/SplayTree.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Midterm_SplayTree.dir/src/SplayTree.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/eliasmann/Desktop/Algorithms/Mann_CS3353_Midterm_SplayTree/Midterm_SplayTree/src/SplayTree.cpp -o CMakeFiles/Midterm_SplayTree.dir/src/SplayTree.cpp.s

# Object files for target Midterm_SplayTree
Midterm_SplayTree_OBJECTS = \
"CMakeFiles/Midterm_SplayTree.dir/src/main.cpp.o" \
"CMakeFiles/Midterm_SplayTree.dir/src/SplayTree.cpp.o"

# External object files for target Midterm_SplayTree
Midterm_SplayTree_EXTERNAL_OBJECTS =

Midterm_SplayTree: CMakeFiles/Midterm_SplayTree.dir/src/main.cpp.o
Midterm_SplayTree: CMakeFiles/Midterm_SplayTree.dir/src/SplayTree.cpp.o
Midterm_SplayTree: CMakeFiles/Midterm_SplayTree.dir/build.make
Midterm_SplayTree: CMakeFiles/Midterm_SplayTree.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/eliasmann/Desktop/Algorithms/Mann_CS3353_Midterm_SplayTree/Midterm_SplayTree/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable Midterm_SplayTree"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Midterm_SplayTree.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Midterm_SplayTree.dir/build: Midterm_SplayTree

.PHONY : CMakeFiles/Midterm_SplayTree.dir/build

CMakeFiles/Midterm_SplayTree.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Midterm_SplayTree.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Midterm_SplayTree.dir/clean

CMakeFiles/Midterm_SplayTree.dir/depend:
	cd /Users/eliasmann/Desktop/Algorithms/Mann_CS3353_Midterm_SplayTree/Midterm_SplayTree/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/eliasmann/Desktop/Algorithms/Mann_CS3353_Midterm_SplayTree/Midterm_SplayTree /Users/eliasmann/Desktop/Algorithms/Mann_CS3353_Midterm_SplayTree/Midterm_SplayTree /Users/eliasmann/Desktop/Algorithms/Mann_CS3353_Midterm_SplayTree/Midterm_SplayTree/cmake-build-debug /Users/eliasmann/Desktop/Algorithms/Mann_CS3353_Midterm_SplayTree/Midterm_SplayTree/cmake-build-debug /Users/eliasmann/Desktop/Algorithms/Mann_CS3353_Midterm_SplayTree/Midterm_SplayTree/cmake-build-debug/CMakeFiles/Midterm_SplayTree.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Midterm_SplayTree.dir/depend

