# this file gets loaded by find_package(antlr3c) and defines the following:
#
# ANTLR3C_FOUND - library was found
# ANTLR3C_INCLUDE_DIRS - include directories
# ANTLR3C_DEFINITIONS - preprocessor definitions and compiler switches
# ANTLR3C_LIBRARIES - list of libraries

set(ANTLR3C_FOUND 1)

# find and include auto-generated description file
find_file(ANTLR3C_CMAKE_FILE antlr3c.cmake PATH_SUFFIXES cmake/antlr3c)
include(${ANTLR3C_CMAKE_FILE})

# find include directory
find_path(ANTLR3C_INCLUDE_DIRS antlr3.h PATH_SUFFIXES include/antlr3c)

# set preprocessor definitions and compiler switches
set(ANTLR3C_DEFINITIONS )

# set list of libraries
set(ANTLR3C_LIBRARIES antlr3c)
