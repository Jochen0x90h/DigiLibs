# this file gets loaded by find_package(jpeg) and defines the following:
#
# JPEG_FOUND - 1 if found
# JPEG_INCLUDE_DIRS - include directory
# JPEG_DEFINITIONS - preprocessor definitions and compiler switches
# JPEG_LIBRARIES - list of libraries

if(NOT JPEG_FOUND)

	set(JPEG_FOUND 1)

	# find and include auto-generated description file
	find_file(JPEG_CMAKE_FILE jpeg.cmake PATH_SUFFIXES cmake/FreeImage)
	include(${JPEG_CMAKE_FILE})

	# find include directory
	find_path(JPEG_INCLUDE_DIRS jpeglib.h PATH_SUFFIXES include/FreeImage)

	# set preprocessor definitions and compiler switches
	set(JPEG_DEFINITIONS )

	# set list of libraries
	set(JPEG_LIBRARIES jpeg)

endif()
