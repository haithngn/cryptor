set(CMAKE_INCLUDE_CURRENT_DIR ON)

set(CMAKE_MODULE_PATH "${CMAKE_CURRENT_SOURCE_DIR}/cmake")

include(public-headers)
include(core)
include(objc)
include(LibFindMacros)

IF(APPLE)
    execute_process(COMMAND "${CMAKE_CURRENT_SOURCE_DIR}/../scripts/get-mac.sh"
            WORKING_DIRECTORY "${CMAKE_CURRENT_SOURCE_DIR}/../scripts")
ENDIF()

file(GLOB_RECURSE
        source_files
        *.h
        *.m
        *.c
        *.cpp
        )

SET_SOURCE_FILES_PROPERTIES(
        ${source_files}
        PROPERTIES LANGUAGE C
)

file(COPY ${public_headers} DESTINATION "${CMAKE_CURRENT_BINARY_DIR}/include/Cryptor")

include_directories("${CMAKE_CURRENT_BINARY_DIR}/include" ${core_includes})

add_library(Cryptor ${core_files})