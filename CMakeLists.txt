cmake_minimum_required(VERSION 3.13)
project(cryptor)

set(CMAKE_CXX_STANDARD 11)

IF(APPLE)
    set(CMAKE_CXX__FLAGS "-std=c++11 -stdlib=libc++")
    set(CMAKE_EXE_LINKER_FLAGS "-lc++ -stdlib=libc++")

    execute_process(COMMAND xcrun --sdk macosx --show-sdk-path OUTPUT_VARIABLE sdkpath)
    string(STRIP "${sdkpath}" sdkpath)

    set(mac_libraries iconv)

ELSEIF(${CMAKE_SYSTEM_NAME} MATCHES "Linux")
    set(CMAKE_CXX_FLAGS "-std=gnu++0x")

ENDIF()

add_executable(cryptor main.cpp src/Cryptor.h src/core/CryptorCore.h src/core/abstract/MD5Encryptor.h src/core/md5/MD5EncryptorImpl.h src/core/md5/MD5EncryptorImpl.cpp)

target_link_libraries(cryptor Cryptor)

add_subdirectory (src)