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
CMAKE_SOURCE_DIR = "/cygdrive/c/Users/Jason Lui/CLionProjects/recursiveSumToTarget"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/cygdrive/c/Users/Jason Lui/CLionProjects/recursiveSumToTarget/cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/recursiveSumToTarget.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/recursiveSumToTarget.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/recursiveSumToTarget.dir/flags.make

CMakeFiles/recursiveSumToTarget.dir/main.c.o: CMakeFiles/recursiveSumToTarget.dir/flags.make
CMakeFiles/recursiveSumToTarget.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/cygdrive/c/Users/Jason Lui/CLionProjects/recursiveSumToTarget/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/recursiveSumToTarget.dir/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/recursiveSumToTarget.dir/main.c.o   -c "/cygdrive/c/Users/Jason Lui/CLionProjects/recursiveSumToTarget/main.c"

CMakeFiles/recursiveSumToTarget.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/recursiveSumToTarget.dir/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/cygdrive/c/Users/Jason Lui/CLionProjects/recursiveSumToTarget/main.c" > CMakeFiles/recursiveSumToTarget.dir/main.c.i

CMakeFiles/recursiveSumToTarget.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/recursiveSumToTarget.dir/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/cygdrive/c/Users/Jason Lui/CLionProjects/recursiveSumToTarget/main.c" -o CMakeFiles/recursiveSumToTarget.dir/main.c.s

# Object files for target recursiveSumToTarget
recursiveSumToTarget_OBJECTS = \
"CMakeFiles/recursiveSumToTarget.dir/main.c.o"

# External object files for target recursiveSumToTarget
recursiveSumToTarget_EXTERNAL_OBJECTS =

recursiveSumToTarget.exe: CMakeFiles/recursiveSumToTarget.dir/main.c.o
recursiveSumToTarget.exe: CMakeFiles/recursiveSumToTarget.dir/build.make
recursiveSumToTarget.exe: CMakeFiles/recursiveSumToTarget.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/cygdrive/c/Users/Jason Lui/CLionProjects/recursiveSumToTarget/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable recursiveSumToTarget.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/recursiveSumToTarget.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/recursiveSumToTarget.dir/build: recursiveSumToTarget.exe

.PHONY : CMakeFiles/recursiveSumToTarget.dir/build

CMakeFiles/recursiveSumToTarget.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/recursiveSumToTarget.dir/cmake_clean.cmake
.PHONY : CMakeFiles/recursiveSumToTarget.dir/clean

CMakeFiles/recursiveSumToTarget.dir/depend:
	cd "/cygdrive/c/Users/Jason Lui/CLionProjects/recursiveSumToTarget/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/cygdrive/c/Users/Jason Lui/CLionProjects/recursiveSumToTarget" "/cygdrive/c/Users/Jason Lui/CLionProjects/recursiveSumToTarget" "/cygdrive/c/Users/Jason Lui/CLionProjects/recursiveSumToTarget/cmake-build-debug" "/cygdrive/c/Users/Jason Lui/CLionProjects/recursiveSumToTarget/cmake-build-debug" "/cygdrive/c/Users/Jason Lui/CLionProjects/recursiveSumToTarget/cmake-build-debug/CMakeFiles/recursiveSumToTarget.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/recursiveSumToTarget.dir/depend
