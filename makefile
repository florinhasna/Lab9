CXX = g++
CXXFLAGS = -g -Wall -Wextra -Wpedantic

.PHONY : all
all : program

program : numberconversion.cpp numberconversion.h
	$(CXX) $(CXXFLAGS) -o programme numberconversion.cpp

.PHONY : clean
clean :
	rm *.o
	rm program
