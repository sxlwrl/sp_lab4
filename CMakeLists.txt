cmake_minimum_required(VERSION 3.10)
project(Calculator)

set(CMAKE_GENERATOR "Ninja")
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ./bin)

add_library(calculator SHARED src/calculator.cpp)
add_executable(calculator_lab4 src/main.cpp)

target_link_libraries(calculator_lab4 calculator)
