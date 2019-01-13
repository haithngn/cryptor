# Files to build

set(abstract_files
  #core/abstract/MCAbstractMessage.cpp
)

IF(APPLE)
  set(basetypes_files_apple
    #core/basetypes/MCAutoreleasePoolMac.mm
          )

ENDIF()

IF(${CMAKE_SYSTEM_NAME} MATCHES "Linux")
  set(basetypes_files_linux
    #core/basetypes/MCMainThreadGTK.cpp
  )
ENDIF()


set(basetypes_files
  ${basetypes_files_apple}
  ${basetypes_files_linux}
)

IF(APPLE)
  set(icu_ucsdet_files
    #core/basetypes/icu-ucsdet/cmemory.c
  )
ENDIF()

set(md5_files
  core/md5/CryptorMD5Generator.cpp
)

set(core_files
  ${md5_files}
)

# Includes for build

set(core_includes
  "${CMAKE_CURRENT_SOURCE_DIR}/core"
  ${core_includes_apple}
)
