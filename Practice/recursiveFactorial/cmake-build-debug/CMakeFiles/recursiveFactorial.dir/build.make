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
CMAKE_SOURCE_DIR = "/cygdrive/c/Users/Jason Lui/CLionProjects/recursiveFactorial"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/cygdrive/c/Users/Jason Lui/CLionProjects/recursiveFactorial/cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/recursiveFactorial.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/recursiveFactorial.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/recursiveFactorial.dir/flags.make

CMakeFiles/recursiveFactorial.dir/main.c.o: CMakeFiles/recursiveFactorial.dir/flags.make
CMakeFiles/recursiveFactorial.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/cygdrive/c/Users/Jason Lui/CLionProjects/recursiveFactorial/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/recursiveFactorial.dir/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/recursiveFactorial.dir/main.c.o   -c "/cygdrive/c/Users/Jason Lui/CLionProjects/recursiveFactorial/main.c"

CMakeFiles/recursiveFactorial.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/recursiveFactorial.dir/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/cygdrive/c/Users/Jason Lui/CLionProjects/recursiveFactorial/main.c" > CMakeFiles/recursiveFactorial.dir/main.c.i

CMakeFiles/recursiveFactorial.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/recursiveFactorial.dir/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/cygdrive/c/Users/Jason Lui/CLionProjects/recursiveFactorial/main.c" -o CMakeFiles/recursiveFactorial.dir/main.c.s

# Object files for target recursiveFactorial
recursiveFactorial_OBJECTS = \
"CMakeFiles/recursiveFactorial.dir/main.c.o"

# External object files for target recursiveFactorial
recursiveFactorial_EXTERNAL_OBJECTS =

recursiveFactorial.exe: CMakeFiles/recursiveFactorial.dir/main.c.o
recursiveFactorial.exe: CMakeFiles/recursiveFactorial.dir/build.make
recursiveFactorial.exe: CMakeFiles/recursiveFactorial.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/cygdrive/c/Users/Jason Lui/CLionProjects/recursiveFactorial/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable recursiveFactorial.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/recursiveFactorial.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/recursiveFactorial.dir/build: recursiveFactorial.exe

.PHONY : CMakeFiles/recursiveFactorial.dir/build

CMakeFiles/recursiveFactorial.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/recursiveFactorial.dir/cmake_clean.cmake
.PHONY : CMakeFiles/recursiveFactorial.dir/clean

CMakeFiles/recursiveFactorial.dir/depend:
	cd "/cygdrive/c/Users/Jason Lui/CLionProjects/recursiveFactorial/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/cygdrive/c/Users/Jason Lui/CLionProjects/recursiveFactorial" "/cygdrive/c/Users/Jason Lui/CLionProjects/recursiveFactorial" "/cygdrive/c/Users/Jason Lui/CLionProjects/recursiveFactorial/cmake-build-debug" "/cygdrive/c/Users/Jason Lui/CLionProjects/recursiveFactorial/cmake-build-debug" "/cygdrive/c/Users/Jason Lui/CLionProjects/recursiveFactorial/cmake-build-debug/CMakeFiles/recursiveFactorial.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/recursiveFactorial.dir/depend

