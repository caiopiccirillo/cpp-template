cmake_minimum_required(VERSION 3.22.0)
project(cpp-template VERSION 0.1.0)

set(CMAKE_CXX_STANDARD 20)

include(CTest)
enable_testing()

add_executable(cpp-template main.cpp)

include(CPackConfig.cmake)
include(CPack)
