set(HEADERS
	include/vorbis/codec.h
	include/vorbis/vorbisenc.h
	include/vorbis/vorbisfile.h
)

set(FILES
	lib/analysis.c
	lib/bitrate.c
	lib/block.c
	lib/codebook.c
	lib/envelope.c
	lib/floor0.c
	lib/floor1.c
	lib/info.c
	lib/lookup.c
	lib/lpc.c
	lib/lsp.c
	lib/mapping0.c
	lib/mdct.c
	lib/psy.c
	lib/registry.c
	lib/res0.c
	lib/sharedbook.c
	lib/smallft.c
	lib/synthesis.c
	lib/vorbisenc.c
	lib/vorbisfile.c
	lib/window.c
)

# add static lib target
add_library(vorbis STATIC ${FILES} ${HEADERS})

# set public headers
set_target_properties(vorbis PROPERTIES PUBLIC_HEADER "${HEADERS}")

# install settings
install(TARGETS vorbis
	EXPORT ogg
	PUBLIC_HEADER DESTINATION include/vorbis
	ARCHIVE DESTINATION lib
)
	

# set include directories
include_directories(include lib ../libogg/include)
 
# set preprocessor definitions
#add_definitions(-D )
