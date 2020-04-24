#---
# File: FindIconv.cmake
#
# Find the native iconv includes and libraries.
#
# This module defines:
#
# ICONV_INCLUDE_DIR, where to find geos.h, etc.
# ICONV_LIBRARY, libraries to link against to use iconv.
# ICONV_FOUND, True if found, false if one of the above are not found.
#
#---

find_path(ICONV_INCLUDE_DIR iconv.h PATHS
          ${CMAKE_INSTALL_PREFIX}/include
          $ENV{ICONV_DIR}/include
          ${ICONV_DIR}/include
          /usr/include
          /usr/local/include
          /usr/local/ossim/include
          c:/msys//usr/include
          c:/msys/local/include
          $ENV{LIB_DIR}/include
)

find_library(ICONV_LIBRARY NAMES iconv libiconv PATHS
             ${CMAKE_INSTALL_PREFIX}/lib
             ${CMAKE_INSTALL_PREFIX}/lib64
             $ENV{ICONV_DIR}/lib
             $ENV{ICONV_DIR}/lib64
             ${ICONV_DIR}/lib
             ${ICONV_DIR}/lib64
             /usr/lib
             /usr/lib64
             /usr/local/lib
             /usr/local/lib64
             /usr/local/ossim/lib
             /usr/local/ossim/lib64
             c:/msys/usr/lib
             c:/msys/usr/lib64
             c:/msys/local/lib
             c:/msys/local/lib64
             $ENV{LIB_DIR}/lib
)

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(ICONV DEFAULT_MSG
                                  ICONV_LIBRARY
                                  ICONV_INCLUDE_DIR)

add_library(ICONV::ICONV INTERFACE IMPORTED)
