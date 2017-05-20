# this file gets loaded by find_package(llvm) and defines the following:
#
# LLVM_FOUND - library was found 
# LLVM_INCLUDE_DIR - include directory
# LLVM_DEFINITIONS - preprocessor definitions and compiler switches
# LLVM_LIBRARIES - list of llvm libraries
# CLANG_LIBRARIES - list of clang libraries


set(LLVM_FOUND 1)

# find and include auto-generated description file
find_file(LLVM_CMAKE_FILE llvm.cmake PATH_SUFFIXES cmake/llvm)
include(${LLVM_CMAKE_FILE})

# find include directory
find_path(LLVM_INCLUDE_DIR llvm/LLVMContext.h)

# set preprocessor definitions and compiler switches
set(LLVM_DEFINITIONS -D__STDC_LIMIT_MACROS -D__STDC_CONSTANT_MACROS)
if(WIN32)
	set(LLVM_DEFINITIONS ${LLVM_DEFINITIONS} -wd4996 -wd4146 -wd4800 -wd4244 -wd4355)
endif(WIN32)

# set list of libraries
set(LLVM_LIBRARIES
	LLVMAnalysis
	LLVMArchive
	LLVMAsmParser
	LLVMAsmPrinter
	LLVMBitReader
	LLVMBitWriter
	LLVMCodeGen
	LLVMCore
	LLVMExecutionEngine
	LLVMInstCombine
	LLVMInstrumentation
	LLVMInterpreter
	LLVMipa
	LLVMipo
	LLVMJIT
	LLVMLinker
	LLVMMC
	LLVMMCDisassembler
	LLVMMCJIT
	LLVMMCParser
	LLVMObject
	LLVMScalarOpts
	LLVMSelectionDAG
	LLVMSupport
	LLVMTarget
	LLVMTransformUtils
	LLVMX86AsmParser
	LLVMX86AsmPrinter
	LLVMX86CodeGen
	LLVMX86Disassembler
	LLVMX86Info
	LLVMX86Utils
)

# set list of libraries
set(CLANG_LIBRARIES
	clangAnalysis
	clangAST
	clangBasic
	clangCodeGen
	clangDriver
	clangFrontend
	#clangFrontendTool
	clangIndex
	clangLex
	clangParse
	clangRewrite
	clangSema
	clangSerialization
)
