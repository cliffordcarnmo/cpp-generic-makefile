.ONESHELL:
.RECIPEPREFIX = >

SOURCEPATH=src
SOURCES=$(wildcard $(SOURCEPATH)/*.cpp)
OBJECTS=$(SOURCES:.cpp=.o)
TARGET=out

CXX=g++
CXXFLAGS=-std=c++20
CXXFLAGS+=-static
CXXFLAGS+=-g0
CXXFLAGS+=-Ofast
CXXFLAGS+=-mtune=native
CXXFLAGS+=-m64
CXXFLAGS+=-pipe
CXXFLAGS+=-ffreestanding
CXXFLAGS+=-fno-ident
CXXFLAGS+=-Wl,--build-id=none
CXXFLAGS+=-Wall
CXXFLAGS+=-Wextra
CXXFLAGS+=-Werror
CXXFLAGS+=-Wpedantic
CXXFLAGS+=-pedantic
CXXFLAGS+=-pedantic-errors

all: $(TARGET)

$(TARGET): $(OBJECTS)
> $(LINK.cpp) $^ -o $@

run:
> ./$(TARGET)

clean:
> rm -f $(TARGET) $(OBJECTS)
