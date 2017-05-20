md build-vs10-win64 || exit /b
cd build-vs10-win64
cmake -DCMAKE_INSTALL_PREFIX:PATH="%CMAKE_INSTALL_PATH%\vs10-win64" -G "Visual Studio 10 Win64" ..\
