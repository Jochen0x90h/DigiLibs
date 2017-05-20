# this file gets loaded by find_package(squish) and defines the following:
#
# SQUISH_FOUND - library was found
# SQUISH_INCLUDE_DIRS - include directory
# SQUISH_DEFINITIONS - preprocessor definitions and compiler switches
# SQUISH_LIBRARIES - list of libraries

set(SQUISH_FOUND 1)

# find and include auto-generated description file
find_file(SQUISH_CMAKE_FILE squish.cmake PATH_SUFFIXES cmake/squish)
include(${SQUISH_CMAKE_FILE})

# find include directory
find_path(SQUISH_INCLUDE_DIRS squish.h PATH_SUFFIXES include/squish)

# set preprocessor definitions and compiler switches
set(SQUISH_DEFINITIONS )

# set list of libraries
set(SQUISH_LIBRARIES squish)
