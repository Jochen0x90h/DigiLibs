set(LIB ../../Windows_x86_32/Lib)

include(../install.cmake)

file(COPY
	PVRTexLib.cmake
	DESTINATION ${CMAKE_INSTALL_PREFIX}/cmake/PVRTexLib
)

file(COPY
	${LIB}/PVRTexLib.lib
	DESTINATION ${CMAKE_INSTALL_PREFIX}/lib
)
