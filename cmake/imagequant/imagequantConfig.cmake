# this file gets loaded by find_package(imagequant) and defines the following:
#
# IMAGEQUANT_FOUND - library was found
# IMAGEQUANT_INCLUDE_DIRS - include directories
# IMAGEQUANT_DEFINITIONS - preprocessor definitions and compiler switches
# IMAGEQUANT_LIBRARIES - list of libraries

set(IMAGEQUANT_FOUND 1)

# find and include auto-generated description file
find_file(IMAGEQUANT_CMAKE_FILE imagequant.cmake PATH_SUFFIXES cmake/imagequant)
include(${IMAGEQUANT_CMAKE_FILE})

# find include directory
find_path(IMAGEQUANT_INCLUDE_DIRS libimagequant.h PATH_SUFFIXES include/imagequant)

# set preprocessor definitions and compiler switches
set(IMAGEQUANT_DEFINITIONS)

# set list of libraries
set(IMAGEQUANT_LIBRARIES imagequant)
