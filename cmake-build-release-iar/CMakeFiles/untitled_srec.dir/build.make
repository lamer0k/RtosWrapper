# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.16

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion201607320\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion201607320\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\GitHub\RtosWrapper

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\GitHub\RtosWrapper\cmake-build-release-iar

# Utility rule file for untitled_srec.

# Include the progress variables for this target.
include CMakeFiles/untitled_srec.dir/progress.make

CMakeFiles/untitled_srec:
	"C:\Program Files (x86)\IAR Systems\Embedded Workbench 8.3\arm\bin\ielftool.exe" --srec untitled.out untitled.srec

untitled_srec: CMakeFiles/untitled_srec
untitled_srec: CMakeFiles/untitled_srec.dir/build.make

.PHONY : untitled_srec

# Rule to build all files generated by this target.
CMakeFiles/untitled_srec.dir/build: untitled_srec

.PHONY : CMakeFiles/untitled_srec.dir/build

CMakeFiles/untitled_srec.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\untitled_srec.dir\cmake_clean.cmake
.PHONY : CMakeFiles/untitled_srec.dir/clean

CMakeFiles/untitled_srec.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\GitHub\RtosWrapper C:\GitHub\RtosWrapper C:\GitHub\RtosWrapper\cmake-build-release-iar C:\GitHub\RtosWrapper\cmake-build-release-iar C:\GitHub\RtosWrapper\cmake-build-release-iar\CMakeFiles\untitled_srec.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/untitled_srec.dir/depend

