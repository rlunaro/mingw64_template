#
#
#


CXX = gcc
DEBUG = -g
LIBS=-lstdc++ 
# -Wall 
LIBS_WINDOWS = -s -Wl,--subsystem,windows 
CXXFLAGS_WINDOWS = -mwindows 
CXXFLAGS = -Werror -Wextra -pedantic $(DEBUG)
SRCDIR = src
SOURCES = $(wildcard $(SRCDIR)/*.cpp)
OBJECTS = $(subst .cpp,.o,$(SOURCES))

all: $(OBJECTS)
	$(CXX) $(CXXFLAGS) $(OBJECTS) $(LIBS) -o example.exe

clean:
	rm -f $(OBJECTS)
	rm -f example.exe

test: 
	echo $(SOURCES)
	echo "----"
	echo $(OBJECTS)

%.o: %.cpp
	$(CXX) $(CXXFLAGS) $< -c -o $@


.PHONY: all clean test


