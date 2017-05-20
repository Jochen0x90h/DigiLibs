set(INCLUDE ../../Include)

file(COPY
	../../PVRTexLibConfig.cmake
	DESTINATION ${CMAKE_INSTALL_PREFIX}/cmake
)

file(COPY
	${INCLUDE}/PVRTArray.h
	${INCLUDE}/PVRTDecompress.h
	${INCLUDE}/PVRTError.h
	${INCLUDE}/PVRTexture.h
	${INCLUDE}/PVRTextureDefines.h
	${INCLUDE}/PVRTextureFormat.h
	${INCLUDE}/PVRTextureHeader.h
	${INCLUDE}/PVRTextureUtilities.h
	${INCLUDE}/PVRTextureVersion.h
	${INCLUDE}/PVRTGlobal.h
	${INCLUDE}/PVRTMap.h
	${INCLUDE}/PVRTString.h
	${INCLUDE}/PVRTTexture.h
	DESTINATION ${CMAKE_INSTALL_PREFIX}/include/PVRTexLib
)
