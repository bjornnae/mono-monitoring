rem make a distro
rem run after build.bat
mkdir mono-distro
copy mono.properties mono-distro
copy run.bat mono-distro
copy lib mono-distro
copy target\mono.jar mono-distro
rem copy run.yeti mono-distro
rem copy build.bat mono-distro
