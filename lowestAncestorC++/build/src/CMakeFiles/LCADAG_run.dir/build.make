# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.19

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
CMAKE_COMMAND = "C:/Program Files/CMake/bin/cmake.exe"

# The command to remove a file.
RM = "C:/Program Files/CMake/bin/cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:/Users/jason/workspace/Software-Engineering/lowestAncestorC++

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:/Users/jason/workspace/Software-Engineering/lowestAncestorC++/build

# Include any dependencies generated for this target.
include src/CMakeFiles/LCADAG_run.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/LCADAG_run.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/LCADAG_run.dir/flags.make

src/CMakeFiles/LCADAG_run.dir/LCADAG.cpp.obj: src/CMakeFiles/LCADAG_run.dir/flags.make
src/CMakeFiles/LCADAG_run.dir/LCADAG.cpp.obj: src/CMakeFiles/LCADAG_run.dir/includes_CXX.rsp
src/CMakeFiles/LCADAG_run.dir/LCADAG.cpp.obj: ../src/LCADAG.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:/Users/jason/workspace/Software-Engineering/lowestAncestorC++/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/LCADAG_run.dir/LCADAG.cpp.obj"
	cd C:/Users/jason/workspace/Software-Engineering/lowestAncestorC++/build/src && C:/MinGW/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/LCADAG_run.dir/LCADAG.cpp.obj -c C:/Users/jason/workspace/Software-Engineering/lowestAncestorC++/src/LCADAG.cpp

src/CMakeFiles/LCADAG_run.dir/LCADAG.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LCADAG_run.dir/LCADAG.cpp.i"
	cd C:/Users/jason/workspace/Software-Engineering/lowestAncestorC++/build/src && C:/MinGW/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:/Users/jason/workspace/Software-Engineering/lowestAncestorC++/src/LCADAG.cpp > CMakeFiles/LCADAG_run.dir/LCADAG.cpp.i

src/CMakeFiles/LCADAG_run.dir/LCADAG.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LCADAG_run.dir/LCADAG.cpp.s"
	cd C:/Users/jason/workspace/Software-Engineering/lowestAncestorC++/build/src && C:/MinGW/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:/Users/jason/workspace/Software-Engineering/lowestAncestorC++/src/LCADAG.cpp -o CMakeFiles/LCADAG_run.dir/LCADAG.cpp.s

src/CMakeFiles/LCADAG_run.dir/Node.cpp.obj: src/CMakeFiles/LCADAG_run.dir/flags.make
src/CMakeFiles/LCADAG_run.dir/Node.cpp.obj: src/CMakeFiles/LCADAG_run.dir/includes_CXX.rsp
src/CMakeFiles/LCADAG_run.dir/Node.cpp.obj: ../src/Node.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:/Users/jason/workspace/Software-Engineering/lowestAncestorC++/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/CMakeFiles/LCADAG_run.dir/Node.cpp.obj"
	cd C:/Users/jason/workspace/Software-Engineering/lowestAncestorC++/build/src && C:/MinGW/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/LCADAG_run.dir/Node.cpp.obj -c C:/Users/jason/workspace/Software-Engineering/lowestAncestorC++/src/Node.cpp

src/CMakeFiles/LCADAG_run.dir/Node.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LCADAG_run.dir/Node.cpp.i"
	cd C:/Users/jason/workspace/Software-Engineering/lowestAncestorC++/build/src && C:/MinGW/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:/Users/jason/workspace/Software-Engineering/lowestAncestorC++/src/Node.cpp > CMakeFiles/LCADAG_run.dir/Node.cpp.i

src/CMakeFiles/LCADAG_run.dir/Node.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LCADAG_run.dir/Node.cpp.s"
	cd C:/Users/jason/workspace/Software-Engineering/lowestAncestorC++/build/src && C:/MinGW/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:/Users/jason/workspace/Software-Engineering/lowestAncestorC++/src/Node.cpp -o CMakeFiles/LCADAG_run.dir/Node.cpp.s

src/CMakeFiles/LCADAG_run.dir/graph.cpp.obj: src/CMakeFiles/LCADAG_run.dir/flags.make
src/CMakeFiles/LCADAG_run.dir/graph.cpp.obj: src/CMakeFiles/LCADAG_run.dir/includes_CXX.rsp
src/CMakeFiles/LCADAG_run.dir/graph.cpp.obj: ../src/graph.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:/Users/jason/workspace/Software-Engineering/lowestAncestorC++/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/CMakeFiles/LCADAG_run.dir/graph.cpp.obj"
	cd C:/Users/jason/workspace/Software-Engineering/lowestAncestorC++/build/src && C:/MinGW/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/LCADAG_run.dir/graph.cpp.obj -c C:/Users/jason/workspace/Software-Engineering/lowestAncestorC++/src/graph.cpp

src/CMakeFiles/LCADAG_run.dir/graph.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LCADAG_run.dir/graph.cpp.i"
	cd C:/Users/jason/workspace/Software-Engineering/lowestAncestorC++/build/src && C:/MinGW/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:/Users/jason/workspace/Software-Engineering/lowestAncestorC++/src/graph.cpp > CMakeFiles/LCADAG_run.dir/graph.cpp.i

src/CMakeFiles/LCADAG_run.dir/graph.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LCADAG_run.dir/graph.cpp.s"
	cd C:/Users/jason/workspace/Software-Engineering/lowestAncestorC++/build/src && C:/MinGW/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:/Users/jason/workspace/Software-Engineering/lowestAncestorC++/src/graph.cpp -o CMakeFiles/LCADAG_run.dir/graph.cpp.s

src/CMakeFiles/LCADAG_run.dir/lowestAncestor.cpp.obj: src/CMakeFiles/LCADAG_run.dir/flags.make
src/CMakeFiles/LCADAG_run.dir/lowestAncestor.cpp.obj: src/CMakeFiles/LCADAG_run.dir/includes_CXX.rsp
src/CMakeFiles/LCADAG_run.dir/lowestAncestor.cpp.obj: ../src/lowestAncestor.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:/Users/jason/workspace/Software-Engineering/lowestAncestorC++/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object src/CMakeFiles/LCADAG_run.dir/lowestAncestor.cpp.obj"
	cd C:/Users/jason/workspace/Software-Engineering/lowestAncestorC++/build/src && C:/MinGW/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/LCADAG_run.dir/lowestAncestor.cpp.obj -c C:/Users/jason/workspace/Software-Engineering/lowestAncestorC++/src/lowestAncestor.cpp

src/CMakeFiles/LCADAG_run.dir/lowestAncestor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LCADAG_run.dir/lowestAncestor.cpp.i"
	cd C:/Users/jason/workspace/Software-Engineering/lowestAncestorC++/build/src && C:/MinGW/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:/Users/jason/workspace/Software-Engineering/lowestAncestorC++/src/lowestAncestor.cpp > CMakeFiles/LCADAG_run.dir/lowestAncestor.cpp.i

src/CMakeFiles/LCADAG_run.dir/lowestAncestor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LCADAG_run.dir/lowestAncestor.cpp.s"
	cd C:/Users/jason/workspace/Software-Engineering/lowestAncestorC++/build/src && C:/MinGW/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:/Users/jason/workspace/Software-Engineering/lowestAncestorC++/src/lowestAncestor.cpp -o CMakeFiles/LCADAG_run.dir/lowestAncestor.cpp.s

src/CMakeFiles/LCADAG_run.dir/main.cpp.obj: src/CMakeFiles/LCADAG_run.dir/flags.make
src/CMakeFiles/LCADAG_run.dir/main.cpp.obj: src/CMakeFiles/LCADAG_run.dir/includes_CXX.rsp
src/CMakeFiles/LCADAG_run.dir/main.cpp.obj: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:/Users/jason/workspace/Software-Engineering/lowestAncestorC++/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object src/CMakeFiles/LCADAG_run.dir/main.cpp.obj"
	cd C:/Users/jason/workspace/Software-Engineering/lowestAncestorC++/build/src && C:/MinGW/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/LCADAG_run.dir/main.cpp.obj -c C:/Users/jason/workspace/Software-Engineering/lowestAncestorC++/src/main.cpp

src/CMakeFiles/LCADAG_run.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LCADAG_run.dir/main.cpp.i"
	cd C:/Users/jason/workspace/Software-Engineering/lowestAncestorC++/build/src && C:/MinGW/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:/Users/jason/workspace/Software-Engineering/lowestAncestorC++/src/main.cpp > CMakeFiles/LCADAG_run.dir/main.cpp.i

src/CMakeFiles/LCADAG_run.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LCADAG_run.dir/main.cpp.s"
	cd C:/Users/jason/workspace/Software-Engineering/lowestAncestorC++/build/src && C:/MinGW/bin/c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:/Users/jason/workspace/Software-Engineering/lowestAncestorC++/src/main.cpp -o CMakeFiles/LCADAG_run.dir/main.cpp.s

# Object files for target LCADAG_run
LCADAG_run_OBJECTS = \
"CMakeFiles/LCADAG_run.dir/LCADAG.cpp.obj" \
"CMakeFiles/LCADAG_run.dir/Node.cpp.obj" \
"CMakeFiles/LCADAG_run.dir/graph.cpp.obj" \
"CMakeFiles/LCADAG_run.dir/lowestAncestor.cpp.obj" \
"CMakeFiles/LCADAG_run.dir/main.cpp.obj"

# External object files for target LCADAG_run
LCADAG_run_EXTERNAL_OBJECTS =

src/LCADAG_run.exe: src/CMakeFiles/LCADAG_run.dir/LCADAG.cpp.obj
src/LCADAG_run.exe: src/CMakeFiles/LCADAG_run.dir/Node.cpp.obj
src/LCADAG_run.exe: src/CMakeFiles/LCADAG_run.dir/graph.cpp.obj
src/LCADAG_run.exe: src/CMakeFiles/LCADAG_run.dir/lowestAncestor.cpp.obj
src/LCADAG_run.exe: src/CMakeFiles/LCADAG_run.dir/main.cpp.obj
src/LCADAG_run.exe: src/CMakeFiles/LCADAG_run.dir/build.make
src/LCADAG_run.exe: src/CMakeFiles/LCADAG_run.dir/linklibs.rsp
src/LCADAG_run.exe: src/CMakeFiles/LCADAG_run.dir/objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:/Users/jason/workspace/Software-Engineering/lowestAncestorC++/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable LCADAG_run.exe"
	cd C:/Users/jason/workspace/Software-Engineering/lowestAncestorC++/build/src && "C:/Program Files/CMake/bin/cmake.exe" -E rm -f CMakeFiles/LCADAG_run.dir/objects.a
	cd C:/Users/jason/workspace/Software-Engineering/lowestAncestorC++/build/src && C:/MinGW/bin/ar.exe cr CMakeFiles/LCADAG_run.dir/objects.a @CMakeFiles/LCADAG_run.dir/objects1.rsp
	cd C:/Users/jason/workspace/Software-Engineering/lowestAncestorC++/build/src && C:/MinGW/bin/c++.exe -g -Wl,--whole-archive CMakeFiles/LCADAG_run.dir/objects.a -Wl,--no-whole-archive -o LCADAG_run.exe -Wl,--out-implib,libLCADAG_run.dll.a -Wl,--major-image-version,0,--minor-image-version,0 @CMakeFiles/LCADAG_run.dir/linklibs.rsp

# Rule to build all files generated by this target.
src/CMakeFiles/LCADAG_run.dir/build: src/LCADAG_run.exe

.PHONY : src/CMakeFiles/LCADAG_run.dir/build

src/CMakeFiles/LCADAG_run.dir/clean:
	cd C:/Users/jason/workspace/Software-Engineering/lowestAncestorC++/build/src && $(CMAKE_COMMAND) -P CMakeFiles/LCADAG_run.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/LCADAG_run.dir/clean

src/CMakeFiles/LCADAG_run.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" C:/Users/jason/workspace/Software-Engineering/lowestAncestorC++ C:/Users/jason/workspace/Software-Engineering/lowestAncestorC++/src C:/Users/jason/workspace/Software-Engineering/lowestAncestorC++/build C:/Users/jason/workspace/Software-Engineering/lowestAncestorC++/build/src C:/Users/jason/workspace/Software-Engineering/lowestAncestorC++/build/src/CMakeFiles/LCADAG_run.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/LCADAG_run.dir/depend

