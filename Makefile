# Makefile for HelloWorld

# Define variables
JAVAC = javac
JAVAFLAGS =

# Define targets
all: build run

build:
	$(JAVAC) $(JAVAFLAGS) -d classes src/*.java

run:
	java -cp classes com.example.HelloWorld

clean:
	rm -rf classes/*
