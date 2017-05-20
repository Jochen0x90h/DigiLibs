cmake_minimum_required(VERSION 2.8)

# set project
project(antlr3c)

# check for #includes
include(CheckIncludeFile)
CHECK_INCLUDE_FILE(stdint.h HAVE_STDINT_H)
CHECK_INCLUDE_FILE(sys/types.h HAVE_SYS_TYPES_H)
CHECK_INCLUDE_FILE(sys/stat.h HAVE_SYS_STAT_H)
CHECK_INCLUDE_FILE(stddef.h HAVE_STDDEF_H)
CHECK_INCLUDE_FILE(stdlib.h HAVE_STDLIB_H)
CHECK_INCLUDE_FILE(stdarg.h HAVE_STDARG_H)
CHECK_INCLUDE_FILE(memory.h HAVE_MEMORY_H)
CHECK_INCLUDE_FILE(string.h HAVE_STRING_H)
CHECK_INCLUDE_FILE(strings.h HAVE_STRINGS_H)
CHECK_INCLUDE_FILE(unistd.h HAVE_UNISTD_H)
CHECK_INCLUDE_FILE(netinet/in.h HAVE_NETINET_IN_H)
CHECK_INCLUDE_FILE(socket.h HAVE_SOCKET_H)
CHECK_INCLUDE_FILE(sys/socket.h HAVE_SYS_SOCKET_H)
CHECK_INCLUDE_FILE(netinet/tcp.h HAVE_NETINET_TCP_H)
CHECK_INCLUDE_FILE(arpa/nameser.h HAVE_ARPA_NAMESER_H)
CHECK_INCLUDE_FILE(netdb.h HAVE_NETDB_H)
CHECK_INCLUDE_FILE(sys/resolv.h HAVE_SYS_RESOLVE_H)
CHECK_INCLUDE_FILE(resolv.h HAVE_RESOLVE_H)
CHECK_INCLUDE_FILE(malloc.h HAVE_MALLOC_H)
CHECK_INCLUDE_FILE(sys/malloc.h HAVE_SYS_MALLOC_H)
CHECK_INCLUDE_FILE(ctype.h HAVE_CTYPE_H)

# create Config.h
configure_file(include/antlr3config.h.cmake ${CMAKE_CURRENT_SOURCE_DIR}/include/antlr3config.h)


set(HEADERS
	include/antlr3.h
	include/antlr3baserecognizer.h
	include/antlr3basetree.h
	include/antlr3basetreeadaptor.h
	include/antlr3bitset.h
	include/antlr3collections.h
	include/antlr3commontoken.h
	include/antlr3commontree.h
	include/antlr3commontreeadaptor.h
	include/antlr3commontreenodestream.h
	include/antlr3config.h
	include/antlr3convertutf.h
	include/antlr3cyclicdfa.h
	include/antlr3debugeventlistener.h
	include/antlr3defs.h
	include/antlr3encodings.h
	include/antlr3errors.h
	include/antlr3exception.h
	include/antlr3filestream.h
	include/antlr3input.h
	include/antlr3interfaces.h
	include/antlr3intstream.h
	include/antlr3lexer.h
	include/antlr3memory.h
	include/antlr3parser.h
	include/antlr3parsetree.h
	include/antlr3recognizersharedstate.h
	include/antlr3rewritestreams.h
	include/antlr3string.h
	include/antlr3tokenstream.h
	include/antlr3treeparser.h
)
	
set(FILES
	src/antlr3baserecognizer.c
	src/antlr3basetree.c
	src/antlr3basetreeadaptor.c
	src/antlr3bitset.c
	src/antlr3collections.c
	src/antlr3commontoken.c
	src/antlr3commontree.c
	src/antlr3commontreeadaptor.c
	src/antlr3commontreenodestream.c
	src/antlr3convertutf.c
	src/antlr3cyclicdfa.c
	src/antlr3debughandlers.c
	src/antlr3encodings.c
	src/antlr3exception.c
	src/antlr3filestream.c
	src/antlr3inputstream.c
	src/antlr3intstream.c
	src/antlr3lexer.c
	src/antlr3parser.c
	src/antlr3rewritestreams.c
	src/antlr3string.c
	src/antlr3tokenstream.c
	src/antlr3treeparser.c
)

# set include directories
include_directories(include)

# add static lib target
add_library(antlr3c STATIC ${FILES} ${HEADERS})

# set public headers
set_target_properties(antlr3c PROPERTIES PUBLIC_HEADER "${HEADERS}")

# install settings
install(TARGETS antlr3c
	EXPORT antlr3c
	PUBLIC_HEADER DESTINATION include/antlr3c
	ARCHIVE DESTINATION lib
)


# installation directory is given by -DCMAKE_INSTALL_PREFIX=<path> on the command line

# install file that imports this library into other projects via find_package(<library>)
install(FILES antlr3cConfig.cmake DESTINATION cmake)

# install an auto-generated description of the targets
install(EXPORT antlr3c DESTINATION cmake/antlr3c)
