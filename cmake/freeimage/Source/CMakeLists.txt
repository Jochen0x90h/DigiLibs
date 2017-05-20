# set include directories
include_directories("." ZLib OpenEXR OpenEXR/Half OpenEXR/Iex OpenEXR/IlmImf OpenEXR/Imath)

# set compiler specific definitions
if(MSVC)
	add_definitions(-D_CRT_SECURE_NO_WARNINGS -wd4996)
endif(MSVC)

# add subdirectories
add_subdirectory(LibJPEG)
add_subdirectory(LibOpenJPEG)
add_subdirectory(LibPNG)
add_subdirectory(LibRawLite)
add_subdirectory(LibTIFF4)
add_subdirectory(LibWebP)
add_subdirectory(OpenEXR)
add_subdirectory(ZLib)


ADD_FREEIMAGE_LIBRARY(FreeImage
	HEADERS
		FreeImage.h
	FILES
		# FreeImage
		FreeImage/BitmapAccess.cpp
		FreeImage/ColorLookup.cpp
		FreeImage/FreeImage.cpp
		FreeImage/FreeImageIO.cpp
		FreeImage/GetType.cpp
		FreeImage/MemoryIO.cpp
		FreeImage/PixelAccess.cpp

		# Conversion
		FreeImage/Conversion.cpp
		FreeImage/Conversion16_555.cpp
		FreeImage/Conversion16_565.cpp
		FreeImage/Conversion24.cpp
		FreeImage/Conversion32.cpp
		FreeImage/Conversion4.cpp
		FreeImage/Conversion8.cpp
		FreeImage/ConversionRGB16.cpp
		FreeImage/ConversionRGBF.cpp
		FreeImage/ConversionType.cpp
		FreeImage/Halftoning.cpp
		FreeImage/tmoColorConvert.cpp
		FreeImage/tmoDrago03.cpp
		FreeImage/tmoFattal02.cpp
		FreeImage/tmoReinhard05.cpp
		FreeImage/ToneMapping.cpp

		# Quantizers
		FreeImage/NNQuantizer.cpp
		FreeImage/WuQuantizer.cpp

		# Plugins
		FreeImage/J2KHelper.cpp
		FreeImage/MNGHelper.cpp
		FreeImage/Plugin.cpp
		FreeImage/PluginBMP.cpp
		FreeImage/PluginCUT.cpp
		FreeImage/PluginDDS.cpp
		FreeImage/PluginEXR.cpp
		FreeImage/PluginG3.cpp
		FreeImage/PluginGIF.cpp
		FreeImage/PluginHDR.cpp
		FreeImage/PluginICO.cpp
		FreeImage/PluginIFF.cpp
		FreeImage/PluginJ2K.cpp
		FreeImage/PluginJNG.cpp
		FreeImage/PluginJP2.cpp
		FreeImage/PluginJPEG.cpp
		FreeImage/PluginKOALA.cpp
		FreeImage/PluginMNG.cpp
		FreeImage/PluginPCD.cpp
		FreeImage/PluginPCX.cpp
		FreeImage/PluginPFM.cpp
		FreeImage/PluginPICT.cpp
		FreeImage/PluginPNG.cpp
		FreeImage/PluginPNM.cpp
		FreeImage/PluginPSD.cpp
		FreeImage/PluginRAS.cpp
		FreeImage/PluginRAW.cpp
		FreeImage/PluginSGI.cpp
		FreeImage/PluginTARGA.cpp
		FreeImage/PluginTIFF.cpp
		FreeImage/PluginWBMP.cpp
		FreeImage/PluginXBM.cpp
		FreeImage/PluginXPM.cpp
		FreeImage/PSDParser.cpp
		FreeImage/TIFFLogLuv.cpp

		# MultiPaging
		FreeImage/CacheFile.cpp
		FreeImage/MultiPage.cpp
		FreeImage/ZLibInterface.cpp
		
		# Toolkit
		FreeImageToolkit/Background.cpp
		FreeImageToolkit/BSplineRotate.cpp
		FreeImageToolkit/Channels.cpp
		FreeImageToolkit/ClassicRotate.cpp
		FreeImageToolkit/Colors.cpp
		FreeImageToolkit/CopyPaste.cpp
		FreeImageToolkit/Display.cpp
		FreeImageToolkit/Flip.cpp
		FreeImageToolkit/JPEGTransform.cpp
		FreeImageToolkit/MultigridPoissonSolver.cpp
		FreeImageToolkit/Rescale.cpp
		FreeImageToolkit/Resize.cpp	

		# Metadata
		Metadata/Exif.cpp
		Metadata/FIRational.cpp
		Metadata/FIRational.h
		Metadata/FreeImageTag.cpp
		Metadata/FreeImageTag.h
		Metadata/IPTC.cpp
		Metadata/TagConversion.cpp
		Metadata/TagLib.cpp
		Metadata/XTIFF.cpp

		# DeprecationManager
		DeprecationManager/Deprecated.cpp
		DeprecationManager/DeprecationMgr.cpp	
	EXPORT
		FreeImage
)
 
# set preprocessor definitions
add_definitions(-DFREEIMAGE_LIB -DLIBRAW_NODLL -DOPJ_STATIC)
