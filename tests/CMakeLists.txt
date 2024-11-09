# 查找 GTest 库
find_package(GTest REQUIRED)

# 包含 GTest 目录
include_directories(${GTEST_INCLUDE_DIRS})

# 添加测试可执行文件
add_executable(test_command_parser test_command_parser.cpp)
target_link_libraries(test_command_parser PRIVATE GTest::GTest GTest::Main pthread asio::asio spdlog::spdlog)
add_test(NAME CommandParserTest COMMAND test_command_parser)

add_executable(test_database test_database.cpp)
target_link_libraries(test_database PRIVATE GTest::GTest GTest::Main pthread asio::asio spdlog::spdlog)
add_test(NAME DatabaseTest COMMAND test_database)

add_executable(test_connection test_connection.cpp)
target_link_libraries(test_connection PRIVATE GTest::GTest GTest::Main pthread asio::asio spdlog::spdlog)
add_test(NAME ConnectionTest COMMAND test_connection)
