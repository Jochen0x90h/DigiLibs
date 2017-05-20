# this file gets loaded by find_package(tiff) and defines the following:
#
# TIFF_FOUND - 1 if found
# TIFF_INCLUDE_DIRS - include directory
# TIFF_DEFINITIONS - preprocessor definitions and compiler switches
# TIFF_LIBRARIES - list of libraries

if(NOT TIFF_FOUND)

	set(TIFF_FOUND 1)

	# find and include auto-generated description file
	find_file(TIFF_CMAKE_FILE tiff.cmake PATH_SUFFIXES cmake/FreeImage)
	include(${TIFF_CMAKE_FILE})

	# find include directory
	find_path(TIFF_INCLUDE_DIRS tiff.h PATH_SUFFIXES include/FreeImage)

	# set preprocessor definitions and compiler switches
	set(TIFF_DEFINITIONS)

	# set list of libraries
	set(TIFF_LIBRARIES tiff)

endif()
