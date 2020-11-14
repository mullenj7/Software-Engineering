import static org.junit.Assert.*;

import org.junit.Test;

public class LCADAGTest {

	@Test 
	public void testAddEdge(){
		LCADAG graph = new LCADAG(5);
		graph.addEdge(1, 2);
		graph.addEdge(1, 4);
		graph.addEdge(2, 3);
		graph.addEdge(3, 4);
		assertEquals("Invalid vertex entered", graph.addEdge(-1,2)); // can't add negative node
		assertEquals("Invalid vertex entered", graph.addEdge(1,7)); // 7 outside range
		assertEquals(4,graph.totalEdges);
		assertEquals(5,graph.totalVertices);
	}
	@Test 
	public void testisValidVertex(){
		LCADAG graph = new LCADAG(5);
		
		assertEquals(false, graph.isValidVertex(-1)); 
		assertEquals(true, graph.isValidVertex(1)); 
		
	}
	@Test 
	public void testcheckCycle(){
		LCADAG graph = new LCADAG(10);
		
		graph.addEdge(0, 1);
		graph.addEdge(1, 2);
		graph.addEdge(2, 0);
		graph.addEdge(2, 3);
		graph.addEdge(3, 4);
		graph.checkCycle(0);
		assertEquals(true, graph.cycleExists);
	}
	@Test
	public void testIndegree()
	{
		LCADAG graph = new LCADAG(5);
		
		graph.addEdge(1, 2);
		graph.addEdge(2, 4);
		graph.addEdge(3, 3);
		assertEquals(1, graph.indegree[3]);
	}
	
	@Test
	public void testfindLCA()
	{
		LCADAG graph = new LCADAG(10);
		graph.addEdge(0, 1);
		graph.addEdge(1, 2);
		graph.addEdge(3, 4);
		graph.addEdge(4, 5);
		graph.addEdge(3, 6);
		graph.addEdge(2, 5);
		graph.addEdge(5, 7);
		assertEquals(1, graph.findLCA(7,1));
		assertEquals(4, graph.findLCA(7,4));
		assertEquals(3, graph.findLCA(5,6));
		assertEquals(-1, graph.findLCA(2,4));
		assertEquals(-1, graph.findLCA(7,-1));
		
		LCADAG graph2 = new LCADAG(10);
		graph2.addEdge(0, 1);
		graph2.addEdge(1, 2);
		graph2.addEdge(3, 4);
		graph2.addEdge(4, 5);
		graph2.addEdge(3, 6);
		graph2.addEdge(2, 5);
		graph2.addEdge(5, 7);
		graph2.addEdge(7, 0);//making it cycle
		assertEquals(-1, graph2.findLCA(5,6));//returns -1 because cycle exists

	}
	
	
}