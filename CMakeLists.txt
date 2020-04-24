cmake_minimum_required(VERSION 3.13)
SET(CMAKE_MODULE_PATH ${CMAKE_SOURCE_DIR}/cmake ${CMAKE_MODULE_PATH})

# read version from configure.ac
file(READ configure.ac _tmp_text)
string(REGEX MATCH "AC_INIT(.*)AC_LANG" AC_INIT ${_tmp_text})
string(REGEX MATCH "(.*),(.*),(.*)" AC_INIT ${AC_INIT})
string(SUBSTRING ${CMAKE_MATCH_1} 8 100 PACKAGE_NAME)
string(STRIP ${PACKAGE_NAME} PACKAGE_NAME)
string(STRIP ${CMAKE_MATCH_2} PACKAGE_VERSION)
string(REGEX MATCH "([a-zA-Z0-9@.\-_]+)" PACKAGE_BUGREPORT ${CMAKE_MATCH_3})
string(REGEX MATCH "([0-9]+).([0-9]+).([0-9]+)" AC_INIT ${PACKAGE_VERSION})
set(PACKAGE "${PACKAGE_NAME}")
set(PACKAGE_STRING "${PACKAGE_NAME} ${PACKAGE_VERSION}")
set(VERSION "${PACKAGE_VERSION}")
set(PACKAGE_TARNAME "${PACKAGE_NAME}")
set(PACKAGE_URL "")
set(TARGET_CPU ${CMAKE_HOST_SYSTEM_NAME})

# create project
project(libspatialite VERSION ${AC_INIT} LANGUAGES C)

# search for dependencies
find_package(ZLIB REQUIRED)
find_package(SQLite3 REQUIRED)
find_package(LibXml2)
find_package(PROJ)
find_package(GEOS)
find_package(Iconv)
find_package(Doxygen)
#find_package(FreeXL)
#find_package(RTTOPO)

include(configure)

# Documentation
if(${BUILD_DOCUMENTATION})
  configure_file(${CMAKE_CURRENT_SOURCE_DIR}/Doxyfile.in ${CMAKE_CURRENT_BINARY_DIR}/Doxyfile @ONLY)
  file(READ ${CMAKE_CURRENT_BINARY_DIR}/Doxyfile _tmp_text)
  string(REPLACE "OUTPUT_DIRECTORY       =" "OUTPUT_DIRECTORY       = ${CMAKE_CURRENT_BINARY_DIR}/doc" _tmp_text ${_tmp_text})
  if(EXISTS ${DOXYGEN_DOT_EXECUTABLE})
    string(REPLACE "DOT_PATH               =" "DOT_PATH               = ${DOXYGEN_DOT_EXECUTABLE}" _tmp_text ${_tmp_text})
  else()
    string(REPLACE "HAVE_DOT               = YES" "HAVE_DOT               = NO" _tmp_text ${_tmp_text})
  endif()
  find_package(LATEX QUIET)
  install(DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/doc/html TYPE DOC)
  if(NOT LATEX_FOUND)
    string(REPLACE "GENERATE_LATEX         = YES" "GENERATE_LATEX         = NO" _tmp_text ${_tmp_text})
  else()
    install(DIRECTORY ${CMAKE_CURRENT_BINARY_DIR}/doc/latex TYPE DOC)
  endif()
  file(WRITE ${CMAKE_CURRENT_BINARY_DIR}/Doxyfile ${_tmp_text})
  add_custom_target(doc_doxygen ALL
                    COMMAND ${DOXYGEN_EXECUTABLE} ${CMAKE_CURRENT_BINARY_DIR}/Doxyfile
                    WORKING_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}
                    COMMENT "Generating API documentation with Doxygen"
                    VERBATIM)
endif()

# Library
include_directories(${CMAKE_REQUIRED_INCLUDES})
add_subdirectory(src)

# Examples
if(${BUILD_EXAMPLES})
  add_subdirectory(examples)
endif()

# Tests
if(${BUILD_TESTS})
  add_subdirectory(test)
endif()