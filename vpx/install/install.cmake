# install library definition for other cmake projects that include vpx
file(COPY
	${ROOT}/vpxConfig.cmake
	DESTINATION ${CMAKE_INSTALL_PREFIX}/cmake
)
file(COPY
	vpx.cmake
	DESTINATION ${CMAKE_INSTALL_PREFIX}/cmake/vpx
)

# install headers
file(COPY
	${ROOT}/vpx/vp8.h
	${ROOT}/vpx/vp8cx.h
	${ROOT}/vpx/vp8dx.h
	${ROOT}/vpx/vpx_codec.h
	${ROOT}/vpx/vpx_decoder.h
	${ROOT}/vpx/vpx_encoder.h
	${ROOT}/vpx/vpx_frame_buffer.h
	${ROOT}/vpx/vpx_image.h
	${ROOT}/vpx/vpx_integer.h
	DESTINATION ${CMAKE_INSTALL_PREFIX}/include/vpx
)
