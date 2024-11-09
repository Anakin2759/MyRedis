# src/CMakeLists.txt

# 添加源文件并生成可执行文件
add_executable(${PROJECT_NAME} main.cpp
                utils.cpp command_parser.cpp database.cpp connection.cpp)

# 链接库
target_link_libraries(${PROJECT_NAME} PRIVATE asio::asio spdlog::spdlog)
