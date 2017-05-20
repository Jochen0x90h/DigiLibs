cmake_minimum_required(VERSION 3.1)

# set project
project(freetype)


set(HEADERS
	include/ft2build.h
)
	
set(FILES
	src/base/ftbase.c
	src/base/ftbbox.c
	src/base/ftbitmap.c
	src/base/ftdebug.c
	src/base/ftglyph.c
	src/base/ftinit.c
	src/base/ftsystem.c
	
	# scalable font
	src/sfnt/sfnt.c

	# true type
	src/truetype/truetype.c
	
	# open type
	src/cff/cff.c
		
	# needed for open type
	src/psnames/psnames.c
	src/pshinter/pshinter.c

	# renderers
	src/raster/raster.c
	src/smooth/smooth.c
)

# set include directories
include_directories(include)

# add definitions
add_definitions(-DFT2_BUILD_LIBRARY)

# add static lib target
add_library(freetype STATIC ${FILES} ${CONFIG_HEADERS} ${HEADERS})

# set public headers
set_target_properties(freetype PROPERTIES PUBLIC_HEADER "${HEADERS}")

# installation directory is given by -DCMAKE_INSTALL_PREFIX=<path> on the command line

# install headers and lib
install(TARGETS freetype
	EXPORT freetype
	PUBLIC_HEADER DESTINATION include/freetype
	ARCHIVE DESTINATION lib
)

# install header subdirectory
install(DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/include/freetype DESTINATION include/freetype)

# install file that imports this library into other projects via find_package(freetype)
install(FILES freetypeConfig.cmake DESTINATION cmake)

# install an auto-generated description of the targets
install(EXPORT freetype DESTINATION cmake/freetype)
