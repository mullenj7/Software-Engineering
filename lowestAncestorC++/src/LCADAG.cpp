#include "LCADAG.h"

using namespace std; 


string newEdge(Graph *graph, int node1, int node2){
	
	if (isValidVertex(graph, node1) && isValidVertex(graph, node2)) {
			graph->totalEdges++;
			(graph->graph[node1]).push_back(node2);
			(graph->indegree[node2])++;
			return "Edge Added";
		} else {
			cout<<"invalid vertex entered";
			return "Invalid vertex entered";
		}
	
}

bool isValidVertex(Graph *graph, int v){
	if (v < 0 || v >= graph->totalVertices) {
			return false;
		} else {
			return true;
		}
	
	 
}

bool checkCycle(Graph *graph, int v) {
		graph->visited[v] = true;
		graph->cycle[v] = true;
		for (int i : graph->graph[v]) {
			if (!graph->visited[i]) {
				checkCycle(graph,i);
				
			} else if (graph->cycle[i]) {
				graph->cycleExists=true;

				return true;
			}
		}
		graph->cycle[v] = false;
		return false;
	}
	
int findLCA(Graph *graph, int v, int w) {
		checkCycle(graph,0);
		if (graph->cycleExists) 
		{
			return -1;
		} else if (!isValidVertex(graph,v) || !isValidVertex(graph,w)) {
			
			return -1;
		}
		bool found = false;
		Graph *reversed = reverse(graph);
		list<int> a1 = bfs(reversed, v);
		list<int> a2 = bfs(reversed, w);
		list<int> commonAncestors;
	    list<int>::iterator a1it,a2it,cait; 
		
		
		for (int i = 0; i<a1.size(); i++) {
			a1it = a1.begin();
			advance(a1it, i);
			for (int j = 0; j<a2.size(); j++) {

				  
				  a2it = a2.begin();
				advance(a2it, j);
		
				if(*a1it==*a2it){
					commonAncestors.push_back(*a1it);
					found = true;
				}
			}
		}

		if (found) {
			cait = commonAncestors.begin();
			return *cait;
		} else {
			return -1; 
		}
}



list<int> bfs(Graph *graph, int s){
	int v = graph->totalVertices;
	
	list<int> queue,order;
	bool *visited = new bool[v]; 
	for (int i=0; i<v; i++){
		visited[i]=false;
	}
   
  
	visited[s] = true;
	queue.push_back(s); 
  
   
    list<int>::iterator i; 
  
    while(!queue.empty()) 
    { 
        s = queue.front(); 
        order.push_back(s);
        queue.pop_front(); 
	
        for (int j=0; j<graph->graph[s].size(); j++)
			 
		
        { 
			i = graph->graph[s].begin();
			advance(i,j);
			
            if (!visited[*i]) 
            { 
				
                visited[*i] = true; 
                queue.push_back(*i); 
            } 
        } 
    }
    return order;
}

Graph *reverse(Graph *graph) {
		Graph *reversed = newGraph(graph->totalVertices);
		for (int v = 0; v < graph->totalVertices; v++) {
			for (int i : graph->graph[v]) {
				newEdge(reversed, i, v);
			}
		}
		return reversed;
}
