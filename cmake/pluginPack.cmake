set(CPACK_PACKAGE_NAME ${PROJECT_NAME})

set(CPACK_PACKAGE_DESCRIPTION_SUMMARY ${PROJECT_NAME})
set(CPACK_PACKAGE_DESCRIPTION ${PROJECT_NAME})

set(CPACK_PACKAGE_VENDOR "http://www.inria.fr/")
set(CPACK_PACKAGE_DESCRIPTION_FILE ${CMAKE_CURRENT_SOURCE_DIR}/README.txt)

set(CPACK_PACKAGE_VERSION_MAJOR ${${PROJECT_NAME}_VERSION_MAJOR})
set(CPACK_PACKAGE_VERSION_MINOR ${${PROJECT_NAME}_VERSION_MINOR})
set(CPACK_PACKAGE_VERSION_PATCH ${${PROJECT_NAME}_VERSION_BUILD})

if (NOT APPLE)
  set(CPACK_PACKAGING_INSTALL_PREFIX ${CMAKE_INSTALL_PREFIX})
else()
  set(CPACK_PACKAGING_INSTALL_PREFIX "Library/Application Support/inria/medInria")
endif()

set(CPACK_SOURCE_TBZ2 OFF)
set(CPACK_SOURCE_TGZ OFF)
set(CPACK_SOURCE_TZ OFF)
set(CPACK_SOURCE_ZIP OFF)

set(CPACK_BINARY_STGZ OFF)
set(CPACK_BINARY_TBZ2 OFF)
set(CPACK_BINARY_TGZ OFF)
set(CPACK_BINARY_TZ OFF)

if (APPLE)
  set(CPACK_BINARY_PACKAGEMAKER ON)
endif()

include(CPack)
