CXX=g++
CFLAGS=-O3 -D_BIN_TRANSLATION_ -D__RCDAEMON__
CXXFLAGS=-g3 -Wall -Wextra -std=c++0x

all: scan_func

scan_func: src/scan_func.cpp src/scan_func.hpp src/i0_mem_layout.h
	$(CXX) $(CXXFLAGS) -c -o bin/scan_func.o src/scan_func.cpp 

clean:
	rm bin/scan_func.o
