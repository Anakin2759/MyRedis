#ifndef MYREDIS_UTILS_H
#define MYREDIS_UTILS_H

#include <string>
#include <vector>
#include <optional>
#include <iostream>
#include <stdexcept>

namespace myredis
{

// 字符串分割函数
std::vector<std::string> split(const std::string &str, char delimiter);

// 判断一个字符串是否是数字
bool is_number(const std::string &str);

// 从文件读取内容
std::optional<std::string> read_file(const std::string &filepath);

// 自定义的日志函数
void log_info(const std::string &message);

} // namespace myredis

#endif // MYREDIS_UTILS_H
