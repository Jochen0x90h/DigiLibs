#cmakedefine HAVE_STDINT_H ${HAVE_STDINT_H}
#cmakedefine HAVE_SYS_TYPES_H ${HAVE_SYS_TYPES_H}
#cmakedefine HAVE_SYS_STAT_H ${HAVE_SYS_STAT_H}
#cmakedefine HAVE_STDLIB_H ${HAVE_STDLIB_H}
#cmakedefine HAVE_STDDEF_H ${HAVE_STDDEF_H}
#cmakedefine HAVE_STDARG_H ${HAVE_STDARG_H}
#cmakedefine HAVE_MEMORY_H ${HAVE_MEMORY_H}
#cmakedefine HAVE_STRING_H ${HAVE_STRING_H}
#cmakedefine HAVE_STRINGS_H ${HAVE_STRINGS_H}
#cmakedefine HAVE_INTTYPES_H ${HAVE_INTTYPES_H}
#cmakedefine HAVE_UNISTD_H ${HAVE_UNISTD_H}
#cmakedefine HAVE_NETINET_IN_H ${HAVE_NETINET_IN_H}
#cmakedefine HAVE_SOCKET_H ${HAVE_SOCKET_H}
#cmakedefine HAVE_SYS_SOCKET_H ${HAVE_SYS_SOCKET_H}
#cmakedefine HAVE_NETINET_TCP_H ${HAVE_NETINET_TCP_H}
#cmakedefine HAVE_ARPA_NAMESER_H ${HAVE_ARPA_NAMESER_H}
#cmakedefine HAVE_NETDB_H ${HAVE_NETDB_H}
#cmakedefine HAVE_SYS_RESOLVE_H ${HAVE_SYS_RESOLVE_H}
#cmakedefine HAVE_RESOLVE_H ${HAVE_RESOLVE_H}
#cmakedefine HAVE_MALLOC_H ${HAVE_MALLOC_H}
#cmakedefine HAVE_SYS_MALLOC_H ${HAVE_SYS_MALLOC_H}
#cmakedefine HAVE_CTYPE_H ${HAVE_CTYPE_H}

#if defined(HAVE_STDLIB_H) && defined(HAVE_STDDEF_H) && defined(HAVE_STDARG_H)
	#define STDC_HEADERS 1
#endif

#if defined(_M_X64) || defined(_LP64)
	#define ANTLR3_USE_64BIT
#endif
