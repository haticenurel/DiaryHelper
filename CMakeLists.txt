cmake_minimum_required(VERSION 3.10)
project(DiaryHelperTest)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED True)

# Enable code coverage flags
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -fprofile-arcs -ftest-coverage")


include_directories(
    /usr/local/include
)

add_library(
    DiaryHelper OBJECT
    ../src/DiaryHelper.cpp
)

link_libraries(
    /usr/local/lib/libgtest.a
    /usr/local/lib/libgtest_main.a
)

add_executable(
    DiaryHelperTest
    ../tests/DiaryHelperTest.cpp
    $<TARGET_OBJECTS:DiaryHelper>
)

target_link_libraries(DiaryHelperTest
    pthread
)

add_executable(
    Example
    ../examples/example.cpp
    $<TARGET_OBJECTS:DiaryHelper>
)