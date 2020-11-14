#define GRAPH_H
#include <iostream> 
#include <vector> 
#include <cstdlib>
#include <string>
#include <list> 

using namespace std; 

struct Graph 
{ 
	int totalVertices, totalEdges;
	 int *indegree;
	 bool *visited, *cycle, cycleExists;
	 list<int> *graph;
	 

}; 

struct Graph * newGraph(int v);

