call bootstrap.bat
b2.exe toolset=msvc-10.0 address-model=64 variant=debug link=static threading=multi runtime-link=shared --prefix="%CMAKE_INSTALL_PATH%\win64_vs10" --layout=tagged install
b2.exe toolset=msvc-10.0 address-model=64 variant=release link=static threading=multi runtime-link=shared --prefix="%CMAKE_INSTALL_PATH%\win64_vs10" --layout=tagged install
