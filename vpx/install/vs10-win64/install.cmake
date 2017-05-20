set(ROOT ../..)
set(LIB x64)

# install cmake files and headers
include(../install.cmake)

# install libraries
file(COPY
	${LIB}/Debug/vpxmdd.lib
	${LIB}/Release/vpxmd.lib
	DESTINATION ${CMAKE_INSTALL_PREFIX}/lib
)
