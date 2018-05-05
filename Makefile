CXX=g++
INCLUDES=-I./include -I/usr/include/boost
CXXFLAGS=-std=c++17 -Wall -Wextra -Wpedantic -Werror
LDFLAGS=-lboost_system -lboost_filesystem -lboost_iostreams -lpthread

all: prime friends

prime: examples/prime/prime.cpp
	$(CXX) $(CXXFLAGS) $(INCLUDES) $^ -o $@ $(LDFLAGS)

friends: examples/friends/friends.cpp
	$(CXX) $(CXXFLAGS) $(INCLUDES) $^ -o $@ $(LDFLAGS)

clean:
	rm -f prime friends