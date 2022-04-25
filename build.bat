rem Prepare
mkdir stage
mkdir target
copy src\yeti\main\*.yeti stage
copy setup.yeti stage

rem Compile:
java -jar lib\yeti.jar -d build stage\*.yeti

rem Package
jar cfm target\mono.jar manifest -C build mono
