#---
# File: FindGEOS.cmake
#
# Find the native GEOS(Geometry Engine - Open Source) includes and libraries.
#
# This module defines:
#
# GEOS_INCLUDE_DIR, where to find geos.h, etc.
# GEOS_LIBRARY, libraries to link against to use GEOS.  Currently there are
# two looked for, geos and geos_c libraries.
# GEOS_FOUND, True if found, false if one of the above are not found.
# GEOS_VERSION, version of GEOS
#
#---

set(INCLUDE_SEARCH
  ${CMAKE_INSTALL_PREFIX}/include
  $ENV{GEOS_DIR}/include
  ${GEOS_DIR}/include
  /usr/include
  /usr/local/include
  /usr/local/ossim/include
  c:/msys//usr/include
  c:/msys/local/include
  $ENV{LIB_DIR}/include
)
set(LIBRARY_SEARCH
  ${CMAKE_INSTALL_PREFIX}/lib
  ${CMAKE_INSTALL_PREFIX}/lib64
  $ENV{GEOS_DIR}/lib
  $ENV{GEOS_DIR}/lib64
  ${GEOS_DIR}/lib
  ${GEOS_DIR}/lib64
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

if(UNIX) 
  if(APPLE)
    set(GEOS_MAC_PATH /Library/Frameworks/GEOS.framework/unix/bin)
  endif()
  # Find geos-config
  set(GEOS_CONFIG_PREFER_PATH "$ENV{GEOS_HOME}/bin" CACHE STRING "preferred path to GEOS (geos-config)")
  find_program(GEOS_CONFIG geos-config
               PATHS
               ${GEOS_CONFIG_PREFER_PATH}
               ${GEOS_MAC_PATH}
               /usr/local/bin/
               /usr/local/bin64/
               /usr/local/ossim/bin
               /usr/local/ossim/bin64
               /usr/bin/
               /usr/bin64/)
  if(GEOS_CONFIG)
    exec_program(${GEOS_CONFIG} ARGS --version OUTPUT_VARIABLE GEOS_VERSION)
    string(REGEX REPLACE "([0-9]+)\\.([0-9]+)\\.([0-9]+)" "\\1" GEOS_VERSION_MAJOR "${GEOS_VERSION}")
    string(REGEX REPLACE "([0-9]+)\\.([0-9]+)\\.([0-9]+)" "\\2" GEOS_VERSION_MINOR "${GEOS_VERSION}")
    exec_program(${GEOS_CONFIG} ARGS --prefix OUTPUT_VARIABLE GEOS_PREFIX)
    # Find GEOS include:
    find_path(GEOS_INCLUDE_DIR geos_c.h PATHS ${GEOS_PREFIX}/include ${INCLUDE_SEARCH})
    
    # Find GEOS C library:
    exec_program(${GEOS_CONFIG} ARGS --libs OUTPUT_VARIABLE GEOS_CONFIG_LIBS)
    string(REGEX MATCHALL "[-][L]([^ ;])+" GEOS_LINK_DIRECTORIES_WITH_PREFIX "${GEOS_CONFIG_LIBS}")
    if(GEOS_LINK_DIRECTORIES_WITH_PREFIX)
      string(REGEX REPLACE "[-][L]" "" GEOS_LINK_DIRECTORIES ${GEOS_LINK_DIRECTORIES_WITH_PREFIX})
    endif()
    set(GEOS_LIB_NAME_WITH_PREFIX -lgeos_c CACHE STRING INTERNAL)
    if(GEOS_LIB_NAME_WITH_PREFIX)
      string(REGEX REPLACE "[-][l]" "" GEOS_LIB_NAME ${GEOS_LIB_NAME_WITH_PREFIX})
    endif()
    if(APPLE)
      set(GEOS_LIBRARY ${GEOS_LINK_DIRECTORIES}/lib${GEOS_LIB_NAME}.dylib CACHE STRING INTERNAL)
    else()
      set(GEOS_LIBRARY ${GEOS_LINK_DIRECTORIES}/lib${GEOS_LIB_NAME}.so CACHE STRING INTERNAL)
    endif()
  else()
    # Find GEOS include:
    find_path(GEOS_INCLUDE_DIR geos_c.h PATHS ${INCLUDE_SEARCH})
  
    # Find GEOS library:
    find_library(GEOS_LIB NAMES geos geos_i PATHS ${LIBRARY_SEARCH})
  
    # Find GEOS C library:
    find_library(GEOS_C_LIB NAMES geos_c geos_c_i PATHS ${LIBRARY_SEARCH})
  
    if(GEOS_LIB AND GEOS_C_LIB)
      set(GEOS_LIBRARY ${GEOS_LIB} ${GEOS_C_LIB} CACHE STRING INTERNAL)
    endif()
  endif()
else()
  # Find GEOS include:
  find_path(GEOS_INCLUDE_DIR geos_c.h PATHS ${INCLUDE_SEARCH})
  
  # Find GEOS library:
  find_library(GEOS_LIB NAMES geos geos_i PATHS ${LIBRARY_SEARCH})
  
  # Find GEOS C library:
  find_library(GEOS_C_LIB NAMES geos_c geos_c_i PATHS ${LIBRARY_SEARCH})
  
  if(GEOS_LIB AND GEOS_C_LIB)
    set(GEOS_LIBRARY ${GEOS_LIB} ${GEOS_C_LIB} CACHE STRING INTERNAL)
  endif()
endif()

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(GEOS DEFAULT_MSG
                                  GEOS_LIBRARY
                                  GEOS_INCLUDE_DIR)

add_library(GEOS::GEOS INTERFACE IMPORTED)
if(GEOS_FOUND)
  find_file(GEOS_VERSION_HEADER NAMES geos_c.h version.h geos/version.h PATHS ${GEOS_INCLUDE_DIR} ${INCLUDE_SEARCH})
  if(GEOS_VERSION_HEADER)
    # Read GEOS version
    file(READ ${GEOS_VERSION_HEADER} GEOS_VERSION_HEADER)
    string(REGEX MATCH "GEOS_VERSION \"([0-9.]+)\"" GEOS_VERSION ${GEOS_VERSION_HEADER})
    set(GEOS_VERSION ${CMAKE_MATCH_1} )
  endif()
endif()
