# this file gets loaded by find_package(freetype) and defines the following:
#
# FREETYPE_FOUND - library was found
# FREETYPE_INCLUDE_DIRS - include directory
# FREETYPE_DEFINITIONS - preprocessor definitions and compiler switches
# FREETYPE_LIBRARIES - list of libraries

set(FREETYPE_FOUND 1)

# find and include auto-generated description file
find_file(FREETYPE_CMAKE_FILE freetype.cmake PATH_SUFFIXES cmake/freetype)
include(${FREETYPE_CMAKE_FILE})

# find include directory
find_path(FREETYPE_INCLUDE_DIRS ft2build.h PATH_SUFFIXES include/freetype)

# set preprocessor definitions and compiler switches
set(FREETYPE_DEFINITIONS)

# set list of libraries
set(FREETYPE_LIBRARIES freetype)
