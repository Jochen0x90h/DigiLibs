cmake_minimum_required(VERSION 3.1)

project(LLVM)

# set default postfixes (can be overridden on the command line)
set(CMAKE_DEBUG_POSTFIX "d" CACHE STRING "Postfix for output library name in Debug build")
set(CMAKE_RELWITHDEBINFO_POSTFIX "r" CACHE STRING "Postfix for output library name in RelWithDebInfo build")

# set preprocessor definitions and compiler switches
if(MSVC)
else()
	add_definitions(-fvisibility=hidden)
endif()


add_subdirectory(llvm)


# installation directory is given by -DCMAKE_INSTALL_PREFIX=<path> on the command line

# install file that imports this library into other projects via find_package(<library>)
install(FILES llvmConfig.cmake DESTINATION cmake)

# install an auto-generated description of the targets
install(EXPORT llvm DESTINATION cmake/llvm)
