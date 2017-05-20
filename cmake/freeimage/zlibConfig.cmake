# this file gets loaded by find_package(zlib) and defines the following:
#
# ZLIB_FOUND - 1 if found
# ZLIB_INCLUDE_DIRS - include directory
# ZLIB_DEFINITIONS - preprocessor definitions and compiler switches
# ZLIB_LIBRARIES - list of libraries

if(NOT ZLIB_FOUND)

	set(ZLIB_FOUND 1)

	# find and include auto-generated description file
	find_file(ZLIB_CMAKE_FILE zlib.cmake PATH_SUFFIXES cmake/FreeImage)
	include(${ZLIB_CMAKE_FILE})

	# find include directory
	find_path(ZLIB_INCLUDE_DIRS zlib.h PATH_SUFFIXES include/FreeImage)

	# set preprocessor definitions and compiler switches
	set(ZLIB_DEFINITIONS )

	# set list of libraries
	set(ZLIB_LIBRARIES
		zlib)

endif()
