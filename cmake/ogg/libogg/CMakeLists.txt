set(FILES
	src/bitwise.c
	src/framing.c
)

set(HEADERS
	include/ogg/ogg.h
	include/ogg/os_types.h
)

# add static lib target
add_library(ogg STATIC ${FILES} ${HEADERS})

# set public headers
set_target_properties(ogg PROPERTIES PUBLIC_HEADER "${HEADERS}")

# install settings
install(TARGETS ogg
	EXPORT ogg
	PUBLIC_HEADER DESTINATION include/ogg
	ARCHIVE DESTINATION lib
)
	

# set include directories
include_directories(include)
 
# set preprocessor definitions
#add_definitions(-D )
