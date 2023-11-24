CXX = g++
CXXFLAGS = -g -Wall -Wextra -Wpedantic

.PHONY : all
all : program

program :  romandigitconverter.cpp numberconversion.o
	$(CXX) $(CXXFLAGS) -o $@ $^

numberconversion.o : numberconversion.cpp numberconversion.h
	$(CXX) $(CXXFLAGS) -c $<

.PHONY : clean
clean :
	rm *.o
	rm *~
	rm program