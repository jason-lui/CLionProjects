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
CMAKE_SOURCE_DIR = "/cygdrive/c/Users/Jason Lui/CLionProjects/Week1Primes"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/cygdrive/c/Users/Jason Lui/CLionProjects/Week1Primes/cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/Week1Primes.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Week1Primes.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Week1Primes.dir/flags.make

CMakeFiles/Week1Primes.dir/main.c.o: CMakeFiles/Week1Primes.dir/flags.make
CMakeFiles/Week1Primes.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/cygdrive/c/Users/Jason Lui/CLionProjects/Week1Primes/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/Week1Primes.dir/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Week1Primes.dir/main.c.o   -c "/cygdrive/c/Users/Jason Lui/CLionProjects/Week1Primes/main.c"

CMakeFiles/Week1Primes.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Week1Primes.dir/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/cygdrive/c/Users/Jason Lui/CLionProjects/Week1Primes/main.c" > CMakeFiles/Week1Primes.dir/main.c.i

CMakeFiles/Week1Primes.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Week1Primes.dir/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/cygdrive/c/Users/Jason Lui/CLionProjects/Week1Primes/main.c" -o CMakeFiles/Week1Primes.dir/main.c.s

# Object files for target Week1Primes
Week1Primes_OBJECTS = \
"CMakeFiles/Week1Primes.dir/main.c.o"

# External object files for target Week1Primes
Week1Primes_EXTERNAL_OBJECTS =

Week1Primes.exe: CMakeFiles/Week1Primes.dir/main.c.o
Week1Primes.exe: CMakeFiles/Week1Primes.dir/build.make
Week1Primes.exe: CMakeFiles/Week1Primes.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/cygdrive/c/Users/Jason Lui/CLionProjects/Week1Primes/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable Week1Primes.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Week1Primes.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Week1Primes.dir/build: Week1Primes.exe

.PHONY : CMakeFiles/Week1Primes.dir/build

CMakeFiles/Week1Primes.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Week1Primes.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Week1Primes.dir/clean

CMakeFiles/Week1Primes.dir/depend:
	cd "/cygdrive/c/Users/Jason Lui/CLionProjects/Week1Primes/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/cygdrive/c/Users/Jason Lui/CLionProjects/Week1Primes" "/cygdrive/c/Users/Jason Lui/CLionProjects/Week1Primes" "/cygdrive/c/Users/Jason Lui/CLionProjects/Week1Primes/cmake-build-debug" "/cygdrive/c/Users/Jason Lui/CLionProjects/Week1Primes/cmake-build-debug" "/cygdrive/c/Users/Jason Lui/CLionProjects/Week1Primes/cmake-build-debug/CMakeFiles/Week1Primes.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/Week1Primes.dir/depend

