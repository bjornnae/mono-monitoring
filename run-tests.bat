copy src\yeti\test\*.yeti stage 

rem testall
java -jar lib/yeti.jar stage/testlogging.yeti 
java -jar lib/yeti.jar stage/testmonoparse.yeti
java -jar lib/yeti.jar stage/testmonoevents.yeti
java -jar lib/yeti.jar stage/testmostack.yeti 
java -jar lib/yeti.jar stage/testEventsInSequence.yeti 


