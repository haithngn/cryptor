# Files to build

set(md5_files
  core/md5/MD5EncryptorImpl.cpp
)

set(core_files
  ${md5_files}
)

# Includes for build

set(core_includes
        "${CMAKE_CURRENT_SOURCE_DIR}/core"
        "${CMAKE_CURRENT_SOURCE_DIR}/core/abstract"
        "${CMAKE_CURRENT_SOURCE_DIR}/core/md5"
)
