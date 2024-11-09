# FindAsio.cmake
# 使用 pkg-config 查找 Asio 库
include(FindPkgConfig)

# 使用 pkg-config 查找 Asio
pkg_check_modules(ASIO REQUIRED asio)

# 设置 include 目录和库
set(ASIO_INCLUDE_DIRS ${ASIO_INCLUDE_DIRS} ${ASIO_INCLUDE_DIRS})
set(ASIO_LIBRARIES ${ASIO_LIBRARIES})

# 创建 Asio 导出目标以供其他目标使用
if(NOT TARGET asio::asio)
    add_library(asio::asio INTERFACE IMPORTED)
    set_target_properties(asio::asio PROPERTIES
        INTERFACE_INCLUDE_DIRECTORIES "${ASIO_INCLUDE_DIRS}"
        INTERFACE_LINK_LIBRARIES "${ASIO_LIBRARIES}"
    )
endif()
