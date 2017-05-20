# this file gets loaded by find_package(FreeImage) and defines the following:
#
# FREEIMAGE_INCLUDE_DIRS - include directory
# FREEIMAGE_DEFINITIONS - preprocessor definitions and compiler switches
# FREEIMAGE_LIBRARIES - list of libraries


# find dependencies
find_package(png NO_MODULE)
find_package(jpeg NO_MODULE)
find_package(tiff NO_MODULE)

# find and include auto-generated description file
find_file(FREEIMAGE_CMAKE_FILE FreeImage.cmake PATH_SUFFIXES cmake/FreeImage)
include(${FREEIMAGE_CMAKE_FILE})

# find include directory
find_path(FREEIMAGE_INCLUDE_DIRS FreeImage.h PATH_SUFFIXES include/FreeImage)
list(APPEND FREEIMAGE_INCLUDE_DIRS
	${PNG_INCLUDE_DIRS}
	${JPEG_INCLUDE_DIRS}
	${TIFF_INCLUDE_DIRS})

# set preprocessor definitions and compiler switches
set(FREEIMAGE_DEFINITIONS
	${PNG_DEFINITIONS}
	${JPEG_DEFINITIONS}
	${TIFF_DEFINITIONS}
	-DFREEIMAGE_LIB)

# set list of libraries
set(FREEIMAGE_LIBRARIES
	${PNG_LIBRARIES}
	${JPEG_LIBRARIES}
	${TIFF_LIBRARIES}
	FreeImage
	LibOpenJPEG
	LibRAW
	OpenEXR)
