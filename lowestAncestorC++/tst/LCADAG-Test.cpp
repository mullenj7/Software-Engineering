#include <gtest/gtest.h>
#include "LCADAG.h"


	
TEST(LCADAGcpp, testNewEdge){
	struct Graph *graph = newGraph(5);
	newEdge(graph,1,2);
	newEdge(graph,1,4);
	newEdge(graph,2,3);
	newEdge(graph,3,4);
	EXPECT_EQ("Invalid vertex entered",newEdge(graph,-1,2));
	EXPECT_EQ("Invalid vertex entered",newEdge(graph,1,7));
	EXPECT_EQ(4,graph->totalEdges);
	EXPECT_EQ(5, graph->totalVertices);
	
}
TEST(LCADAGcpp, testgrapharray){
	struct Graph *graph = newGraph(5);
	newEdge(graph,1,2);
	newEdge(graph,1,4);
	newEdge(graph,2,3);
	newEdge(graph,3,4);
	list<int>::iterator i = (graph->graph[1]).begin(); 
	advance(i, 1); // second element in graph[1]
	EXPECT_EQ(4,*i);

	
}

TEST(LCADAGcpp, testIndegree){
	struct Graph *graph = newGraph(5);
	newEdge(graph,1,2);
	newEdge(graph,2,4);
	newEdge(graph,3,3);
	newEdge(graph,1,3);
	
	EXPECT_EQ(2,graph->indegree[3]); //this test fails once every 3 or so runs, i think it has something to do with memory but don't know enough about c++ so say for certain

}

TEST(LCADAGcpp, testValidVertex){
	struct Graph *graph = newGraph(5);
	EXPECT_EQ(false, isValidVertex(graph,-1));
	EXPECT_EQ(true, isValidVertex(graph,1));

}

TEST(LCADAGcpp, testCycle){
	struct Graph *graph = newGraph(5);
	newEdge(graph,0,1);
	newEdge(graph,1,2);
	newEdge(graph,2,0);
	newEdge(graph,2,3);
	newEdge(graph,3,4);
	checkCycle(graph,0);
	EXPECT_EQ(true,graph->cycleExists);

}

TEST(LCADAGcpp , testFindLCA){
	struct Graph *graph = newGraph(10);
	newEdge(graph,0,1);
	newEdge(graph,1,2);
	newEdge(graph,3,4);
	newEdge(graph,4,5);
	newEdge(graph,3,6);
	newEdge(graph,2,5);
	newEdge(graph,5,7);
	EXPECT_EQ(1, findLCA(graph,7,1));
	EXPECT_EQ(4, findLCA(graph,7,4));
	EXPECT_EQ(3, findLCA(graph,5,6));
	EXPECT_EQ(-1, findLCA(graph,2,4));
	EXPECT_EQ(-1, findLCA(graph,7,-1));

	struct Graph *graph2 = newGraph(10);
	newEdge(graph2,0,1);
	newEdge(graph2,1,2);
	newEdge(graph2,3,4);
	newEdge(graph2,4,5);
	newEdge(graph2,3,6);
	newEdge(graph2,2,5);
	newEdge(graph2,5,7);
	newEdge(graph2,7,0);
	EXPECT_EQ(-1, findLCA(graph2,5,6));
}

int main(int argc, char **argv) {
    testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}
