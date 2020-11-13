import java.util.*;

class NewNode {
	int V, value;

	public NewNode(int val, int v) {
		V = v;
		value = val;
	}
}

public class LCADAG {

	 int totalVertices, totalEdges;
	 int[] indegree, outdegree;
	 boolean[] visited, cycle;
	 LinkedList<Integer> graph[];

	public LCADAG(int v) {
		totalVertices = v;
		totalEdges = 0;
		graph = new LinkedList[v];
		for(int i = 0; i < v; i++)
		{
			graph[i] = new LinkedList<Integer>();
		}
		indegree = new int[v];
		outdegree = new int[v];
		visited = new boolean[v];
		cycle = new boolean[v];
	}


	public String addEdge(int node1, int node2) {// add edge from node1 to node2
		if (isValidVertex(node1) && isValidVertex(node2)) {
			this.totalEdges++;
			this.graph[node1].add(node2);
			this.indegree[node2]++;
			return "Edge Added";
		} else {
			System.out.println("invalid vertex entered");
			return "Invalid vertex entered";
		}
	}

	public boolean isValidVertex(int v) {
		if (v < 0 || v >= this.totalVertices) {
			return false;
		} else {
			return true;
		}
	}

	public boolean checkCycle(int v) {
		this.visited[v] = true;
		this.cycle[v] = true;
		for (int i : this.graph[v]) {
			if (this.visited[i]) {
				checkCycle(i);

			} else if (this.cycle[i]) {

				return true;
			}
		}
		this.cycle[v] = false;
		return false;
	}

	public int findLCA(int v, int w) {

		if (!checkCycle(0)) 
		{
			return -1;
		} else if (!isValidVertex(v)) {
			
			return -1;
		}
		boolean found = false;
		LCADAG reversed = reverse();
		ArrayList<Integer> a1 = reversed.BFS(v);
		ArrayList<Integer> a2 = reversed.BFS(w);
		ArrayList<Integer> commonAncestors = new ArrayList<Integer>();


		for (int i = 0; i < a1.size(); i++) {
			for (int j = 0; j < a2.size(); j++) {
				if (a1.get(i) == a2.get(j)) {
					commonAncestors.add(a1.get(i));
					found = true;
				}
			}
		}

		if (found) {
			
			return commonAncestors.get(0);
		} else {
			return -1; 
		}
	}

	
	public ArrayList<Integer> BFS(int s) {
		LinkedList<Integer> queue = new LinkedList<Integer>();
		boolean visited[] = new boolean[this.totalVertices]; 
		ArrayList<Integer> order = new ArrayList<Integer>();
		
														
		

		visited[s] = true;
		queue.add(s);

		while (queue.size() != 0) {
			s = queue.poll(); 
			order.add(s);

			
			Iterator<Integer> i = this.graph[s].listIterator();

			while (i.hasNext()) {
				int n = i.next();
				if (!visited[n]) {
					visited[n] = true;
					queue.add(n);
				}
			}
		}
		return order;
	}

	
	public LCADAG reverse() {
		LCADAG reversed = new LCADAG(totalVertices);
		for (int v = 0; v < this.totalVertices; v++) {
			for (int i : this.graph[v]) {
				reversed.addEdge(i, v);
			}
		}
		return reversed;
	}
}
