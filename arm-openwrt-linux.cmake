set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_CROSSCOMPILING TRUE)

# Specify the cross compiler.
set(CMAKE_C_COMPILER arm-openwrt-linux-gcc CACHE FILEPATH "C compiler")
set(CMAKE_CXX_COMPILER arm-openwrt-linux-g++ CACHE FILEPATH "C++ compiler")
set(CMAKE_ASM_COMPILER arm-openwrt-linux-as CACHE FILEPATH "ASM compiler")

# Search libraries only under *target* paths.
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)
