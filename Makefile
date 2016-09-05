ifeq (,$(filter _%,$(notdir $(CURDIR))))
include target.mk
else


VPATH = $(SRCDIR)

CXX      = g++
CXXFLAGS = -g
RM       = rm -f

%.o : %.cc
	$(CXX) -c $(CXXFLAGS) $(CPPFLAGS) $< -o $@

default: all

all: hello

hello: hello.o
	$(CXX) $(CXXFLAGS) -o hello hello.o

clean:
	$(RM) hello


endif
