# Files to build

set(objc_abstract_files
  #objc/abstract/MCOAbstractMessage.mm
)

IF(APPLE)
set(objc_files
  ${objc_abstract_files}
)
ENDIF()

# Includes for build

set(objc_includes
  "${CMAKE_CURRENT_SOURCE_DIR}/objc"
)
