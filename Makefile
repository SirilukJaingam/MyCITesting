CXX=g++              # The C++ compiler
CXXFLAGS=-g          # C++ complilation flags
NATIVE=on            # compiles code targeted to current hardware
TUNE=generic         # performance-tuning switch

all:
	g++ -std=c++17 hello.cpp -o hello
	g++ -std=c++17 helloTest.cpp -lcppunit -o helloTest

test:
	chmod +x hello
	./helloTest

clean:
	$(RM) hello helloTest
