#!/bin/sh
rm -rf Prepare
mkdir stage
mkdir target
cp src/yeti/main/*.yeti stage
cp src/yeti/test/*.yeti stage

cp setup.yeti stage

#Compile:
java -jar lib/yeti.jar -d build stage/*.yeti

#Package
jar cfm target/mono.jar manifest -C build mono
