cmake_minimum_required(VERSION 3.10)
project(MyRedis)

# 设置 C++ 标准
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# 包含 CMake 自定义模块目录
list(APPEND CMAKE_MODULE_PATH ${CMAKE_SOURCE_DIR}/cmake)

# 查找项目依赖
find_package(Asio REQUIRED)
find_package(spdlog REQUIRED)
find_package(PkgConfig REQUIRED)

# 添加 include 目录
include_directories(${PROJECT_SOURCE_DIR}/include)

# 添加 src 目录
add_subdirectory(src)

# 添加测试目录
enable_testing()
add_subdirectory(tests)
