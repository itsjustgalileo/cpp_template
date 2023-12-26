# Application using the library

get_filename_component(PROJECT ${CMAKE_CURRENT_LIST_DIR} NAME)
project(${PROJECT}
		LANGUAGES C CXX
		VERSION 0.0.0.0
		)

# Project files
file(GLOB_RECURSE PROJECT_SRC *.c *.cpp)

set(${PROJECT}_SOURCE
	${PROJECT_SRC}
	)

# Binary setup
add_executable(${PROJECT} ${${PROJECT}_SOURCE})
target_include_directories(${PROJECT} PUBLIC ${CMAKE_SOURCE_DIR}/Lib)
target_link_libraries(${PROJECT} PUBLIC Lib)
