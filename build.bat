rem Prepare
mkdir stage
mkdir target
copy src\yeti\main\*.yeti stage
copy src\yeti\test\*.yeti stage


copy setup.yeti stage

rem Compile:
java -jar lib\yeti.jar -d build stage\*.yeti

rem Package
jar cvfm target\mono.jar manifest -C build mono

rem distribute
mkdir mono-distro
mkdir mono-distro\lib
copy lib\yeti.jar mono-distro\lib\yeti.jar
copy target\mono.jar mono-distro
copy mono.properties mono-distro
copy run-monojar.bat mono-distro


