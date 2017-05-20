cmake_minimum_required(VERSION 3.1)

# set project (visual stuido: solution)
project(FreeImage)

# set default postfixes (can be overridden on the command line)
set(CMAKE_DEBUG_POSTFIX "d" CACHE STRING "Postfix for output library name in Debug build")
set(CMAKE_RELWITHDEBINFO_POSTFIX "r" CACHE STRING "Postfix for output library name in RelWithDebInfo build") 

# macro for FreeImage library ADD_FREEIMAGE_LIBRARY(HEADERS ... FILES ... EXPORT ...)
# HEADERS list of public headers
# FILES list of source files
# EXPORT library name as used in EXPORT parameter of install()
macro(ADD_FREEIMAGE_LIBRARY _name)
	# process arguments (passed in ${ARGN})		
	set(_nowhere)
	set(_curdest _nowhere)
	set(_val_args
		HEADERS
		FILES
		EXPORT)
	
	foreach(_arg ${_val_args})
		set(${_arg})
	endforeach()
	
	# iterate over function arguments
	foreach(_element ${ARGN})
		list(FIND _val_args "${_element}" _val_arg_find)
		if("${_val_arg_find}" GREATER "-1")
			# this is an argument with following list of values (HEADERS, FILES or EXPORT)
			set(_curdest "${_element}")
		else()
			# append to list of current argument
			list(APPEND ${_curdest} "${_element}")
		endif()
	endforeach()

	if(_nowhere)
		message(FATAL_ERROR "Syntax error in argument list of ADD_FREEIMAGE_LIBRARY(${_name})!")
	endif()

	#message("HEADERS: ${HEADERS}")
	#message("FILES: ${FILES}")
	#message("EXPORT: ${EXPORT}")

	# add static lib target
	add_library(${_name} STATIC ${FILES} ${HEADERS})

	# set public headers
	set_target_properties(${_name} PROPERTIES PUBLIC_HEADER "${HEADERS}")

	# install settings
	install(TARGETS ${_name}
		EXPORT ${EXPORT}
		PUBLIC_HEADER DESTINATION include/FreeImage
		ARCHIVE DESTINATION lib
	)
endmacro(ADD_FREEIMAGE_LIBRARY)

# add subdirectories
add_subdirectory(Source)


# installation directory is given by -DCMAKE_INSTALL_PREFIX=<path> on the command line

# install file that imports this library into other projects via find_package(<library>)
install(FILES zlibConfig.cmake DESTINATION cmake)
install(FILES pngConfig.cmake DESTINATION cmake)
install(FILES jpegConfig.cmake DESTINATION cmake)
install(FILES tiffConfig.cmake DESTINATION cmake)
install(FILES webpConfig.cmake DESTINATION cmake)
install(FILES FreeImageConfig.cmake DESTINATION cmake)

# install an auto-generated description of the targets
install(EXPORT zlib DESTINATION cmake/FreeImage)
install(EXPORT png DESTINATION cmake/FreeImage)
install(EXPORT jpeg DESTINATION cmake/FreeImage)
install(EXPORT tiff DESTINATION cmake/FreeImage)
install(EXPORT webp DESTINATION cmake/FreeImage)
install(EXPORT FreeImage DESTINATION cmake/FreeImage)
