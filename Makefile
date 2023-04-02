# Makefile for HelloWorld

# Define variables
JAVAC = javac
JAVAFLAGS =

# Define targets
all: build run jarbuild

build:
	$(JAVAC) $(JAVAFLAGS) -d classes src/*.java

run:
	java -cp classes com.example.HelloWorld

clean:
	rm -rf classes/*
	rm -rf jarclasses/*


jarbuild:
	$(JAVAC) $(JAVAFLAGS) -d jarclasses jarsrc/*.java
	cd jarclasses && jar cvf  mylib.jar .
	cd jarclasses && java -cp mylib.jar Main

