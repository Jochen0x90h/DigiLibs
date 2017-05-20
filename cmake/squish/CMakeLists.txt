cmake_minimum_required(VERSION 3.1)

# set project
project(squish)


# add subdirectories
set(HEADERS
	alpha.h
	clusterfit.h
	colourblock.h
	colourfit.h
	colourset.h
	config.h
	maths.h
	rangefit.h
	simd.h
	simd_float.h
	simd_sse.h
	simd_ve.h
	singlecolourfit.h
	singlecolourlookup.inl
	squish.h
)
	
set(FILES
	alpha.cpp
	clusterfit.cpp
	colourblock.cpp
	colourfit.cpp
	colourset.cpp
	maths.cpp
	rangefit.cpp
	singlecolourfit.cpp
	squish.cpp
)

# set include directories
include_directories(".")

# add static lib target
add_library(squish STATIC ${FILES} ${HEADERS})

# set public headers
set_target_properties(squish PROPERTIES PUBLIC_HEADER "${HEADERS}")

# install settings
install(TARGETS squish
	EXPORT squish
	PUBLIC_HEADER DESTINATION include/squish
	ARCHIVE DESTINATION lib
)


# installation directory is given by -DCMAKE_INSTALL_PREFIX=<path> on the command line

# install file that imports this library into other projects via find_package(squish)
install(FILES squishConfig.cmake DESTINATION cmake)

# install an auto-generated description of the targets
install(EXPORT squish DESTINATION cmake/squish)
