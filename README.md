# DigiLibs

Helps compiling c/c++ libraries. There are two types of libraries
* Libraries with own build system, e.g. boost
* Libraries where CMakeLists.txt is provided by DigiLibs

Libraries with own build system are in the root directory of DigiLibs. Libraries where CMake
build scripts are provided by DigiLibs are below cmake/ folder and can be built in one run.

## Compilers

Windows
* Visual Studio 2008: Install service pack 1
* Visual Studio 2010: Install service pack 1

OS X
* XCode 5-8


## Environment variables

* CMAKE_INSTALL_PATH - a path where you want to install include/, lib/, bin/ etc. (windows only, is ~/.local on OSX)
* PATH - if CMAKE_INSTALL_PATH/bin is added to the PATH, tools can be executed from the command line
* MAYA_PATH - path to current 32 bit maya installation
* MAYA_X64_PATH - path to current 64 bit maya installation
* MAYA_USER_PATH - path to maya user files

Windows

* EN: System Control -> System -> Extended -> Environment Variables
* DE: Systemsteuerung -> System -> Erweitert -> Umgebungsvariablen
* CMAKE_INSTALL_PATH <a path where you want cmake to install to>
* 32 bit windows:
	* PATH: append win32_vs10\bin subdirectory of CMAKE_INSTALL_PATH as full path
	* MAYA_PATH c:\Programme\Autodesk\Maya
	* MAYA_USER_PATH Documents\Maya
* 64 bit windows:
	* PATH: append win64_vs10\bin subdirectory of CMAKE_INSTALL_PATH as full path
	* MAYA_PATH c:\Programme (x86)\Autodesk\Maya
	* MAYA_X64_PATH c:\Programme\Autodesk\Maya
	* MAYA_USER_PATH Documents\Maya
* show env-variables in console: set

OS X
	
* in ~/, to add environment variables, add this to .bash_profile
		* export MAYA_PATH=/Applications/Autodesk/maya
* in /etc/paths.d/, to add bin directory to PATH, add this to InstallBin (use sudo)
		* /Users/.../.local/bin
* restart computer, show env-variables in console: env


## Required tools

### msys (unix style environment for windows)

Required for compiling vpx video codec

* Install MinGW: http://www.mingw.org/wiki/Getting_Started
* Install MSYS: C:\MinGW\bin>mingw-get.exe install msys
* Run C:\MinGW\msys\1.0\msys.bat (opens unix style shell)
* mingw-get install msys-perl
	

### yasm (assembler)

Required for compiling vpx video codec

Windows
	
* download Win64 .exe from http://yasm.tortall.net/ (NOT the visual studio version!)
* copy/rename yasm-x.x.x-win64.exe into Program Files (x86)/Microsoft Visual Studio XX/VC/bin as yasm.exe (next to cl.exe)
	
OS X
	
* download source from http://yasm.tortall.net/
* unpack to DigiLibs/yasm
* in a terminal, go to DigiLibs/yasm
	* ./configure
	* make
	* sudo make install



## Libraries with own build system

### boost

Windows/OSX manual install

* remove old boost includes from install directory (CMAKE_INSTALL_PATH/include)
* download source from http://www.boost.org/users/download
* copy to DigiLibs/boost
* open console in DigiLibs/boost
* run appropriate batch/shell script (e.g. visual studio 2010 64 bit: vs10-win64.bat)

OSX with Homebrew

* brew install boost


### llvm and clang (compiler)

* create directory llvm in DigiLibs/llvm/ (result: DigiLibs/llvm/llvm/) and cd to it
* get llvm: svn checkout http://llvm.org/svn/llvm-project/llvm/branches/release_30 .
* patch llvm: patch -p0 < ../llvm.patch

* create directory clang in DigiLibs/llvm/llvm/tools/ and cd to it
* get clang: svn checkout http://llvm.org/svn/llvm-project/cfe/branches/release_30 .
* patch clang: patch -p0 < ../../../clang.patch

* select and run appropriate build script in llvm/

attention: llvm includes a modified version of gtest. therefore install gtest (e.g. from cmake/gtest) after
llvm to overwrite it with the unmodified version to prevent linker errors when using gtest


### pvrtexlib (texture compression for povervr gpu)

* Download PowerVR Insider SDK v3.3 from http://www.imgtec.com/powervr/insider/powervr-insider.asp
* Install PVRTexTool
* OSX: copy /Applications/Imagination/PowerVR/GraphicsSDK/PVRTexTool/Library/OSX_x86 to DigiLibs/PVRTexLib
* execute install script in DigiLibs/PVRTexLib/install


### vpx (video codec)

install yasm (see above)

Windows
* download libvpx-v1.6.0.tar.bz2 from http://downloads.webmproject.org/releases/webm/index.html
* unpack to your msys home (C:\MinGW\msys\1.0\home\<user>)
* copy contents of DigiLibs/vpx into unpacked directory
* in a msys shell, go to libvpx/build/<platform> (platform is e.g. win64_vs9)
	* ./generate
* compile debug and release using generated visual studio projects in corresponting visual studio version
* if compile errors occur, check if you installed the generic windows version of yasm, not the VS version
* on a cmd prompt, go to C:\MinGW\msys\1.0\home\libvpx\install\<platform>
	* ./install
	
OS X

* download libvpx-v1.6.0.tar.bz2 from http://downloads.webmproject.org/releases/webm/index.html
* copy contents of libvpx/ to DigiLibs/vpx/
* in a terminal, go to DigiLibs/vpx/build/darwin
	* ./build


## Libraries with CMake build system provided by DigiLibs

All libraries can be built with the appropriate build script (e.g. xcode or vs10-win64.bat) in
DigiLibs/cmake/ in one project. Presence of libraries is auto-detected, therefore
not all libraries need to be downloaded and coped into their directories.

### antlr3c (c runtime for antlr 3)

* last working antlr3works is 1.3 because of token sorting
* download libantlr3c-3.4.tar.gz from http://www.antlr3.org/download/C
* copy src/ from archive to DigiLibs/antlr3c (result: DigiLibs/antlr3c/src)
* copy include/ from archive to DigiLibs/antlr3c over existing include dir


### freeimage (image library including png with zlib, jpeg, tiff, webp, OpenEXR)

* download FreeImage3170.zip (Source Distribution) from http://freeimage.sourceforge.net/download.html
* copy contents of Source/ from archive into DigiLibs/freeimage/Source/
    
OSX

* in Source/LibTIFF4/tif_config.h, replace #define HAVE_IO_H 1 by #undef HAVE_IO_H


### freetype (font rendering)

* download freetype-2.7 from http://download.savannah.gnu.org/releases/freetype
* copy contents of freetype/ from archive into DigiLibs/freetype/, don't overwrite include/freetype/config/ftmodule.h


### googletest

* download release-1.8.0 from https://github.com/google/googletest/releases
* copy contents of googletest-release/googletest/ from archive into DigiLibs/gtest/, don't overwrite CMakeLists.txt


### pngquant/imagequant (png image quantizer)

* download pngquant 2.6.0 from https://github.com/pornel/pngquant/releases
* copy contents of lib/ from archive into DigiLibs/imagequant/

Windows: imagequant needs a C99 compiler. If your Visual Studio is too old, do the following:
* download Windows installer from http://llvm.org/builds/ and install
* change platform toolset to LLVM-vs2010 for imagequant


### ogg vorbis (audio compression)

* download libogg-1.3.2 from http://downloads.xiph.org/releases/ogg/	
* download libvorbis-1.3.5 from http://downloads.xiph.org/releases/vorbis/
* copy contents of libogg/libogg-x.x.x from archive into DigiLibs/ogg/libogg
* copy contents of libvorbis/libvorbis-x.x.x from archive into DigiLibs/ogg/libvorbis


### libsquish (s3 texture compression, DXT)

* download zip of libsquish from https://github.com/svn2github/libsquish
* copy contents of libsquish from archive to DigiLibs/squish/libsquish, don't overwrite CMakeLists.txt
