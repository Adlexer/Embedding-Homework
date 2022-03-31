cmake_minimum_required(VERSION 3.0)

project(cmake-test)

add_library(test-lib STATIC src/test-header.cpp) 
add_executable(test test.cpp)
target_link_libraries(test test-lib)
include_directories(include)
