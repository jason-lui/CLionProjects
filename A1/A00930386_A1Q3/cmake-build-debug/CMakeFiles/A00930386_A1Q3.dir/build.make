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
CMAKE_SOURCE_DIR = "/cygdrive/c/Users/Jason Lui/CLionProjects/A00930386_A1Q3"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/cygdrive/c/Users/Jason Lui/CLionProjects/A00930386_A1Q3/cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/A00930386_A1Q3.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/A00930386_A1Q3.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/A00930386_A1Q3.dir/flags.make

CMakeFiles/A00930386_A1Q3.dir/A00930386_A1Q3.c.o: CMakeFiles/A00930386_A1Q3.dir/flags.make
CMakeFiles/A00930386_A1Q3.dir/A00930386_A1Q3.c.o: ../A00930386_A1Q3.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/cygdrive/c/Users/Jason Lui/CLionProjects/A00930386_A1Q3/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/A00930386_A1Q3.dir/A00930386_A1Q3.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/A00930386_A1Q3.dir/A00930386_A1Q3.c.o   -c "/cygdrive/c/Users/Jason Lui/CLionProjects/A00930386_A1Q3/A00930386_A1Q3.c"

CMakeFiles/A00930386_A1Q3.dir/A00930386_A1Q3.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/A00930386_A1Q3.dir/A00930386_A1Q3.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/cygdrive/c/Users/Jason Lui/CLionProjects/A00930386_A1Q3/A00930386_A1Q3.c" > CMakeFiles/A00930386_A1Q3.dir/A00930386_A1Q3.c.i

CMakeFiles/A00930386_A1Q3.dir/A00930386_A1Q3.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/A00930386_A1Q3.dir/A00930386_A1Q3.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/cygdrive/c/Users/Jason Lui/CLionProjects/A00930386_A1Q3/A00930386_A1Q3.c" -o CMakeFiles/A00930386_A1Q3.dir/A00930386_A1Q3.c.s

# Object files for target A00930386_A1Q3
A00930386_A1Q3_OBJECTS = \
"CMakeFiles/A00930386_A1Q3.dir/A00930386_A1Q3.c.o"

# External object files for target A00930386_A1Q3
A00930386_A1Q3_EXTERNAL_OBJECTS =

A00930386_A1Q3.exe: CMakeFiles/A00930386_A1Q3.dir/A00930386_A1Q3.c.o
A00930386_A1Q3.exe: CMakeFiles/A00930386_A1Q3.dir/build.make
A00930386_A1Q3.exe: CMakeFiles/A00930386_A1Q3.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/cygdrive/c/Users/Jason Lui/CLionProjects/A00930386_A1Q3/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable A00930386_A1Q3.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/A00930386_A1Q3.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/A00930386_A1Q3.dir/build: A00930386_A1Q3.exe

.PHONY : CMakeFiles/A00930386_A1Q3.dir/build

CMakeFiles/A00930386_A1Q3.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/A00930386_A1Q3.dir/cmake_clean.cmake
.PHONY : CMakeFiles/A00930386_A1Q3.dir/clean

CMakeFiles/A00930386_A1Q3.dir/depend:
	cd "/cygdrive/c/Users/Jason Lui/CLionProjects/A00930386_A1Q3/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/cygdrive/c/Users/Jason Lui/CLionProjects/A00930386_A1Q3" "/cygdrive/c/Users/Jason Lui/CLionProjects/A00930386_A1Q3" "/cygdrive/c/Users/Jason Lui/CLionProjects/A00930386_A1Q3/cmake-build-debug" "/cygdrive/c/Users/Jason Lui/CLionProjects/A00930386_A1Q3/cmake-build-debug" "/cygdrive/c/Users/Jason Lui/CLionProjects/A00930386_A1Q3/cmake-build-debug/CMakeFiles/A00930386_A1Q3.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/A00930386_A1Q3.dir/depend

