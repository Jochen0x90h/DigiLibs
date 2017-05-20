set(LIB ../../OSX_x86/Static)

include(../install.cmake)

file(COPY
	PVRTexLib.cmake
	DESTINATION ${CMAKE_INSTALL_PREFIX}/cmake/PVRTexLib
)

file(COPY
	${LIB}/libPVRTexLib.a
	DESTINATION ${CMAKE_INSTALL_PREFIX}/lib
)
