```
myredis/
├── CMakeLists.txt                # 顶层 CMake 配置文件
├── README.md                     # 项目简介和使用说明
├── LICENSE                       # 许可证文件
├── include/                      # 公共头文件
│   └── myredis/                  # 项目命名空间目录
│       ├── myredis.h             # 主头文件，导出 myredis API
│       ├── utils.h               # 公用的实用工具函数
│       ├── command_parser.h      # 命令解析头文件
│       ├── database.h            # 数据库核心逻辑接口
│       └── connection.h          # 连接管理
├── src/                          # 源文件
│   ├── CMakeLists.txt            # 子目录的 CMake 配置文件
│   ├── main.cpp                  # 主入口文件
│   ├── utils.cpp                 # 实用工具函数实现
│   ├── command_parser.cpp        # 命令解析实现
│   ├── database.cpp              # 数据库核心逻辑实现
│   └── connection.cpp            # 连接管理实现
├── tests/                        # 测试代码
│   ├── CMakeLists.txt            # 测试目录的 CMake 配置文件
│   ├── test_main.cpp             # 测试入口文件
│   ├── test_command_parser.cpp   # 命令解析模块测试
│   ├── test_database.cpp         # 数据库模块测试
│   └── test_connection.cpp       # 连接模块测试
├── third_party/                  # 第三方依赖库
│   └── googletest/               # 测试框架
└── cmake/                        # 自定义的 CMake 模块
    └── FindAsio.cmake            # 查找 Asio 的自定义 CMake 模块
```