md build-vs10-win64 || exit /b
cd build-vs10-win64
cmake -DLLVM_TARGETS_TO_BUILD:STRING="X86" -DLLVM_BUILD_TOOLS:BOOL=OFF -DCMAKE_INSTALL_PREFIX:PATH="%CMAKE_INSTALL_PATH%\vs10-win64" -G "Visual Studio 10 Win64" ..\
