# C/CPP PROJECT TEMPLATE

---

## PRESENTATION

This serves as a starting point for C/C++ projects that have the following format:

* A library that serves as a framework, containing all the functions, classes and utilities frequently used.
* An application (or applications) that use the framework's tools.

---

## PREREQUISITES

* C11/C++17 compiler (Clang recommended but not mandatory)
* CMake 3.25 or higher
* CMake generator (Ninja if using other than MSVC on Windows)

---

## HOW TO USE

* Change the "App" & "Lib" folders' names.
* Go to App's CMakeLists.txt and change "Lib" with your library's folder name in the following:
```cmake
target_include_directories(${PROJECT} PUBLIC ${CMAKE_SOURCE_DIR}/Lib)
target_link_libraries(${PROJECT} PUBLIC Lib)
```
* Change the names of App & Lib in the root CMakeLists.txt to the chosen names.

If you are not a cmake first-time user, you can change the project files as you like.
