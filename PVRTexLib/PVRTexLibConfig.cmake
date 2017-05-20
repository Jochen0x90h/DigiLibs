# this file gets loaded by find_package(PVRTexLib) and defines the following:
#
# PVRTEXLIB_FOUND - library was found
# PVRTEXLIB_INCLUDE_DIRS - include directory
# PVRTEXLIB_DEFINITIONS - preprocessor definitions and compiler switches
# PVRTEXLIB_LIBRARIES - list of libraries

set(PVRTEXLIB_FOUND 1)

# find and include auto-generated description file
find_file(PVRTEXLIB_CMAKE_FILE PVRTexLib.cmake PATH_SUFFIXES cmake/PVRTexLib)
include(${PVRTEXLIB_CMAKE_FILE})

# find include directory
find_path(PVRTEXLIB_INCLUDE_DIRS PVRTexture.h PATH_SUFFIXES include/PVRTexLib)

# set preprocessor definitions and compiler switches
set(PVRTEXLIB_DEFINITIONS)

# set list of libraries
set(PVRTEXLIB_LIBRARIES PVRTexLib)
