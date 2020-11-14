#include "graph.h"

using namespace std; 

string newEdge(Graph *graph, int node1, int node2);

bool isValidVertex(Graph *graph, int v);

bool checkCycle(Graph *graph, int v);

int findLCA(Graph *graph, int v, int w);

list<int> bfs(Graph *graph, int s);

Graph *reverse(Graph *graph);


