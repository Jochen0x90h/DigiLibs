call bootstrap.bat
b2.exe toolset=msvc-10.0 address-model=32 variant=debug link=static threading=multi runtime-link=shared --prefix="%CMAKE_INSTALL_PATH%\win32_vs10" --layout=tagged install
b2.exe toolset=msvc-10.0 address-model=32 variant=release link=static threading=multi runtime-link=shared --prefix="%CMAKE_INSTALL_PATH%\win32_vs10" --layout=tagged install
