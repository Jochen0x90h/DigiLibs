# this file gets loaded by find_package(vpx) and defines the following:
#
# VPX_FOUND - library was found
# VPX_INCLUDE_DIRS - include directory
# VPX_DEFINITIONS - preprocessor definitions and compiler switches
# VPX_LIBRARIES - list of libraries

set(VPX_FOUND 1)

# find and include auto-generated description file
find_file(VPX_CMAKE_FILE vpx.cmake PATH_SUFFIXES cmake/vpx)
include(${VPX_CMAKE_FILE})

# find include directory
find_path(VPX_INCLUDE_DIRS vp8.h PATH_SUFFIXES include/vpx)

# set preprocessor definitions and compiler switches
set(VPX_DEFINITIONS )

# set list of libraries
set(VPX_LIBRARIES vpx)
