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
CMAKE_COMMAND = "/cygdrive/c/Users/Jason Lui/.CLion2019.3/system/cygwin_cmake/bin/cmake.exe"

# The command to remove a file.
RM = "/cygdrive/c/Users/Jason Lui/.CLion2019.3/system/cygwin_cmake/bin/cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/cygdrive/c/Users/Jason Lui/CLionProjects/recursiveSubsets"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/cygdrive/c/Users/Jason Lui/CLionProjects/recursiveSubsets/cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/recursiveSubsets.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/recursiveSubsets.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/recursiveSubsets.dir/flags.make

CMakeFiles/recursiveSubsets.dir/main.c.o: CMakeFiles/recursiveSubsets.dir/flags.make
CMakeFiles/recursiveSubsets.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/cygdrive/c/Users/Jason Lui/CLionProjects/recursiveSubsets/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/recursiveSubsets.dir/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/recursiveSubsets.dir/main.c.o   -c "/cygdrive/c/Users/Jason Lui/CLionProjects/recursiveSubsets/main.c"

CMakeFiles/recursiveSubsets.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/recursiveSubsets.dir/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/cygdrive/c/Users/Jason Lui/CLionProjects/recursiveSubsets/main.c" > CMakeFiles/recursiveSubsets.dir/main.c.i

CMakeFiles/recursiveSubsets.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/recursiveSubsets.dir/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/cygdrive/c/Users/Jason Lui/CLionProjects/recursiveSubsets/main.c" -o CMakeFiles/recursiveSubsets.dir/main.c.s

# Object files for target recursiveSubsets
recursiveSubsets_OBJECTS = \
"CMakeFiles/recursiveSubsets.dir/main.c.o"

# External object files for target recursiveSubsets
recursiveSubsets_EXTERNAL_OBJECTS =

recursiveSubsets.exe: CMakeFiles/recursiveSubsets.dir/main.c.o
recursiveSubsets.exe: CMakeFiles/recursiveSubsets.dir/build.make
recursiveSubsets.exe: CMakeFiles/recursiveSubsets.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/cygdrive/c/Users/Jason Lui/CLionProjects/recursiveSubsets/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable recursiveSubsets.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/recursiveSubsets.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/recursiveSubsets.dir/build: recursiveSubsets.exe

.PHONY : CMakeFiles/recursiveSubsets.dir/build

CMakeFiles/recursiveSubsets.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/recursiveSubsets.dir/cmake_clean.cmake
.PHONY : CMakeFiles/recursiveSubsets.dir/clean

CMakeFiles/recursiveSubsets.dir/depend:
	cd "/cygdrive/c/Users/Jason Lui/CLionProjects/recursiveSubsets/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/cygdrive/c/Users/Jason Lui/CLionProjects/recursiveSubsets" "/cygdrive/c/Users/Jason Lui/CLionProjects/recursiveSubsets" "/cygdrive/c/Users/Jason Lui/CLionProjects/recursiveSubsets/cmake-build-debug" "/cygdrive/c/Users/Jason Lui/CLionProjects/recursiveSubsets/cmake-build-debug" "/cygdrive/c/Users/Jason Lui/CLionProjects/recursiveSubsets/cmake-build-debug/CMakeFiles/recursiveSubsets.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/recursiveSubsets.dir/depend

