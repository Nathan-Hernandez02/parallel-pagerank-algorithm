CXX = g++
CXXFLAGS = -std=c++11 -Wall -fopenmp
SRC = pagerank.cpp
OUT = pagerank

all: $(OUT)

$(OUT): $(SRC)
	$(CXX) $(CXXFLAGS) -o $(OUT) $(SRC)

.PHONY: clean

clean:
	rm -f $(OUT)

rmat:
	./pagerank rmat15.dimacs rmat.txt

road:
	./pagerank road-NY.dimacs road.txt
