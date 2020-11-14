#include "graph.h"
#include <list>
using namespace std; 

struct Graph * newGraph(int v) 
{ 
	//cout<<"\nCreating node with value "<<k <<"\n";
	Graph *temp = new Graph; 
	temp->totalVertices = v;
	temp->totalEdges = 0;
	temp->visited = new bool[v];
	for (int i=0; i<v; i++){
		temp->visited[i] = false;
	}
	temp->indegree = new int[v];
	temp->cycle = new bool[v];
    temp->graph = new list<int>[v]; 
    temp->cycleExists = false;
	
	return temp; 
} 



