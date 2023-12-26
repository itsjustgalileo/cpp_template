# Root CMake
cmake_minimum_required(VERSION 3.25)

# Some C/C++ and compiler setup
include(CMake/CompilerSetup.cmake)

# Project setup
get_filename_component(PROJECT ${CMAKE_CURRENT_LIST_DIR} NAME)
project(${PROJECT}
		LANGUAGES C CXX
		VERSION 0.0.0.0
		)

# Subprojects
add_subdirectory(Lib)
add_subdirectory(App)
