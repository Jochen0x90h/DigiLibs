# add static lib target
ADD_FREEIMAGE_LIBRARY(LibRAW
	FILES
		internal/dcraw_common.cpp
		internal/dcraw_fileio.cpp
		internal/demosaic_packs.cpp
		src/libraw_c_api.cpp
		src/libraw_cxx.cpp
		src/libraw_datastream.cpp
	HEADERS
		libraw/libraw.h
		libraw/libraw_alloc.h
		libraw/libraw_const.h
		libraw/libraw_datastream.h
		libraw/libraw_internal.h
		libraw/libraw_types.h
		libraw/libraw_version.h
	EXPORT
		FreeImage
)

# set include directories
include_directories(".")

# set preprocessor definitions
add_definitions(-DLIBRAW_NODLL)
