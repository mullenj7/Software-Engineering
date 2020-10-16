import static org.junit.Assert.*;

import org.junit.Test;

public class lowestAncestorTest {

	@Test
	public void testTreeBuild() {
		lowestAncestor low = new lowestAncestor();
		low.insert(low.root, 7);
		low.insert(low.root, 8);
		low.insert(low.root, 3);
		low.insert(low.root, 1);
		low.insert(low.root, 2);
		low.insert(low.root, 6);
		low.insert(low.root, 4);
		low.insert(low.root, 5);
		String result = "-7\n" + " |-3\n" + " | |-1\n" + " | | |-null\n" + " | |  -2\n" + " | |   |-null\n"
				+ " | |    -null\n" + " |  -6\n" + " |   |-4\n" + " |   | |-null\n" + " |   |  -5\n"
				+ " |   |   |-null\n" + " |   |    -null\n" + " |    -null\n" + "  -8\n" + "   |-null\n"
				+ "    -null\n";
		assertEquals("Binary tree was not constructed properly", result, low.prettyPrint(low.root, ""));

	}

	@Test
	public void testlows1() {
		lowestAncestor low = new lowestAncestor();
		low.insert(low.root, 7);
		low.insert(low.root, 8);
		low.insert(low.root, 3);
		low.insert(low.root, 1);
		low.insert(low.root, 2);
		low.insert(low.root, 6);
		low.insert(low.root, 4);
		low.insert(low.root, 5);

		assertEquals("Returned incorrect result for LCA of Nodes 4 and 2",
				low.findCommonAncestor(low.root, 2, 4), 3);
		assertEquals("Returned incorrect result for LCA of Nodes 8 and 3",
				low.findCommonAncestor(low.root, 8, 3), 7);

	}

	@Test
	public void testlows2() {
		lowestAncestor low = new lowestAncestor();
		low.insert(low.root, 5);
		low.insert(low.root, 8);
		low.insert(low.root, 3);
		low.insert(low.root, 1);
		low.insert(low.root, 10);
		low.insert(low.root, 12);
		low.insert(low.root, 9);
		low.insert(low.root, 4);
		assertEquals("Returned incorrect result for LCA of Nodes 4 and 1",
				low.findCommonAncestor(low.root, 1, 4), 3);
		assertEquals("Returned incorrect result for LCA of Nodes 8 and 3",
				low.findCommonAncestor(low.root, 8, 3), 5);
		assertEquals("Returned incorrect result for LCA of Nodes 9 and 12",
				low.findCommonAncestor(low.root, 9, 12), 10);

	}
}
