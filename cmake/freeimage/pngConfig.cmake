# this file gets loaded by find_package(png) and defines the following:
#
# PNG_FOUND - 1 if found
# PNG_INCLUDE_DIRS - include directory
# PNG_DEFINITIONS - preprocessor definitions and compiler switches
# PNG_LIBRARIES - list of libraries

if(NOT PNG_FOUND)

	set(PNG_FOUND 1)

	# find dependencies
	find_package(zlib NO_MODULE)

	# find and include auto-generated description file
	find_file(PNG_CMAKE_FILE png.cmake PATH_SUFFIXES cmake/FreeImage)
	include(${PNG_CMAKE_FILE})

	# find include directory
	find_path(PNG_INCLUDE_DIRS png.h PATH_SUFFIXES include/FreeImage)
	list(APPEND PNG_INCLUDE_DIRS ${ZLIB_INCLUDE_DIRS})

	# set preprocessor definitions and compiler switches
	set(PNG_DEFINITIONS ${ZLIB_DEFINITIONS})

	# set list of libraries
	set(PNG_LIBRARIES
		${ZLIB_LIBRARIES}
		png)

endif()
