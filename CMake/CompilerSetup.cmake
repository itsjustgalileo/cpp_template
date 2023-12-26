# Compiler setup
set(CMAKE_C_STANDARD 11)
set(CMAKE_C_STANDARD_REQUIRED ON)
set(CMAKE_C_EXTENSIONS OFF)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

# Find Clang compiler
find_program(CLANG_EXECUTABLE NAMES clang)
find_program(CLANGPP_EXECUTABLE NAMES clang++)

if(CLANG_EXECUTABLE)
    message(STATUS "Clang found: ${CLANG_EXECUTABLE}")

    # Set C and C++ compilers
    set(CMAKE_C_COMPILER ${CLANG_EXECUTABLE})
    set(CMAKE_CXX_COMPILER ${CLANGPP_EXECUTABLE})
else()
    message(WARNING "Clang not found. Using default system compilers.")
endif()
