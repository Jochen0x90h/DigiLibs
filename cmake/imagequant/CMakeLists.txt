cmake_minimum_required(VERSION 3.1)

# set project
project(imagequant)


set(HEADERS
	libimagequant.h
)
	
set(FILES
	blur.h
	blur.c
	libimagequant.c
	mediancut.c
	mediancut.h
	mempool.c
	mempool.h
	nearest.c
	nearest.h
	pam.c
	pam.h
	viter.c
	viter.h
)

if(MSVC_VERSION LESS 1900) # up to VS2012
	add_definitions("-Disnan(x)=false")
endif()

# add static lib target
add_library(imagequant STATIC ${FILES} ${HEADERS})

# set public headers
set_target_properties(imagequant PROPERTIES PUBLIC_HEADER "${HEADERS}")

# install settings
install(TARGETS imagequant
	EXPORT imagequant
	PUBLIC_HEADER DESTINATION include/imagequant
	ARCHIVE DESTINATION lib
)


# installation directory is given by -DCMAKE_INSTALL_PREFIX=<path> on the command line

# install file that imports this library into other projects via find_package(<library>)
install(FILES imagequantConfig.cmake DESTINATION cmake)

# install an auto-generated description of the targets
install(EXPORT imagequant DESTINATION cmake/imagequant)
