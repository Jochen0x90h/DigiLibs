# this toplevel CMakeLists.txt file adds all libraries as subdirectories where the source code is detected

cmake_minimum_required(VERSION 3.1)

# set project
project(DigiLibs)

# set default postfixes (can be overridden on the command line)
set(CMAKE_DEBUG_POSTFIX "d" CACHE STRING "Postfix for output library name in Debug build")
set(CMAKE_RELWITHDEBINFO_POSTFIX "r" CACHE STRING "Postfix for output library name in RelWithDebInfo build")

# set preprocessor definitions and compiler switches
if(MSVC)
	add_definitions(-D_CRT_SECURE_NO_WARNINGS -wd4996)
else()
	add_definitions(-fvisibility=hidden)
endif()


# list of libraries to compile
if(NOT LIBS)
	set(LIBS
		antlr3c
		freeimage
		freetype
		googletest
		imagequant
		squish
		ogg
	)
endif()

# for each libray a file that is used to detect if the library is present
set(antlr3c    include/antlr3.h)
set(freeimage  Source/FreeImage.h)
set(freetype   include/freetype/freetype.h)
set(googletest include/gtest/gtest.h)
set(imagequant libimagequant.h)
set(squish     squish.h)
set(ogg        libvorbis/include/vorbis/vorbisenc.h)

# add libraries that are detected
foreach(LIB ${LIBS})
	# detect library
	if(EXISTS ${CMAKE_CURRENT_SOURCE_DIR}/${LIB}/${${LIB}})
		message("found ${LIB}")
		add_subdirectory(${LIB})
	else()
		message("missing ${LIB}")
	endif()
endforeach() 


# install cmake find module scripts
install(FILES
	${CMAKE_CURRENT_SOURCE_DIR}/FindJavaExtended.cmake
	DESTINATION modules
)
