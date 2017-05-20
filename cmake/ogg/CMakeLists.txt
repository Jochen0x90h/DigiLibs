cmake_minimum_required(VERSION 3.1)

# set project (visual studio: solution)
project(OGG)


# add subdirectories
add_subdirectory(libogg)
add_subdirectory(libvorbis)


# installation directory is given by -DCMAKE_INSTALL_PREFIX=<path> on the command line

# install file that imports this library into other projects via find_package(<library>)
install(FILES oggConfig.cmake DESTINATION cmake)

# install an auto-generated description of the targets
install(EXPORT ogg DESTINATION cmake/ogg)
