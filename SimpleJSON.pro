# Change to whatever your C++ compiler is
CC=g++

# Compile settings
CFLAGS=-c -Wall
LFLAGS=-lm

# Source files
#SOURCES=src/JSON.cpp src/JSONValue.cpp src/demo/nix-main.cpp src/demo/example.cpp src/demo/testcases.cpp
#HEADERS=src/JSON.h src/JSONValue.h

# Output
TARGET=JSONDemo

DISTFILES += \
    test/cases/test1.json \
    test/cases/test10.json \
    test/cases/test11.json \
    test/cases/test12.json \
    test/cases/test13.json \
    test/cases/test2.json \
    test/cases/test3.json \
    test/cases/test4.json \
    test/cases/test5.json \
    test/cases/test6.json \
    test/cases/test7.json \
    test/cases/test8.json \
    test/cases/test9.json

HEADERS += \
    JSON.h

SOURCES += \
    examples/array_example.cpp \
    examples/init_example.cpp \
    examples/iter_example.cpp \
    examples/json_example.cpp \
    examples/load_example.cpp \
    examples/prim_example.cpp \
    test/tester.cpp

