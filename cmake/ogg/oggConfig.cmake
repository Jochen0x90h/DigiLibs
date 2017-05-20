# this file gets loaded by find_package(ogg) and defines the following:
#
# OGG_FOUND - library was found
# OGG_INCLUDE_DIRS - include directory
# OGG_DEFINITIONS - preprocessor definitions and compiler switches
# OGG_LIBRARIES - list of libraries

set(OGG_FOUND 1)

# find and include auto-generated description file
find_file(OGG_CMAKE_FILE ogg.cmake PATH_SUFFIXES cmake/ogg)
include(${OGG_CMAKE_FILE})

# find include directory
find_path(OGG_INCLUDE_DIRS ogg/ogg.h)

# set preprocessor definitions and compiler switches
set(OGG_DEFINITIONS )

# set list of libraries
set(OGG_LIBRARIES
	ogg
	vorbis
)
