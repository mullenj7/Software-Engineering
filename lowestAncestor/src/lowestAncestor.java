import java.util.*;

class Node {
	int value;
	Node right, left;

	public Node(int val) {
		value = val;
		right = null;
		left = null;
	}

}

public class lowestAncestor {
	Node root;
	public static String toPrint = "";

	public static void main(String[] Args) {
		try {
			lowestAncestor lowest = new lowestAncestor();
			System.out.println("Enter Node values you would like to add (seperated by spaces)");
			Scanner sc = new Scanner(System.in);
			String values = sc.nextLine();
			String[] split = values.split(" ");
			lowest.root = new Node(Integer.valueOf(split[0]));

			for (int i = 1; i < split.length; i++) {

				insert(lowest.root, Integer.valueOf(split[i]));
			}
			System.out.println("Your tree is;");
			System.out.println(prettyPrint(lowest.root, ""));

			System.out.println("");
			System.out.println("Enter the two nodes you want to find the common ancestor of (seperated by spaces)");
			String anNode = sc.nextLine();
			String[] splitter = anNode.split(" ");
			int firstNode = Integer.valueOf(splitter[0]);
			int secondNode = Integer.valueOf(splitter[1]);
			int ancestor = findCommonAncestor(lowest.root, firstNode, secondNode);

			System.out.println("Common ancestor of " + firstNode + " and " + secondNode + " is " + ancestor);

		}

		catch (Exception e) {
			System.out.print("you inputted something incorrectly, please try again");
		}
	}

	public static void insert(Node node, int value) {
		if (value < node.value) {
			if (node.left != null) {
				insert(node.left, value);
			} else {
				node.left = new Node(value);
			}
		} else if (value > node.value) {
			if (node.right != null) {
				insert(node.right, value);
			} else {

				node.right = new Node(value);
			}
		}
	}

	public static String prettyPrint(Node node, String prefix) {

		if (node == null) {
			toPrint = toPrint + prefix + "-null\n";
			return toPrint;
		}
		toPrint = toPrint + prefix + "-" + node.value + "\n";

		prefix = prefix + " |";
		prettyPrint(node.left, prefix);
		StringBuilder sb = new StringBuilder(prefix);
		prefix = prefix.substring(0, prefix.length() - 1);
		prefix = prefix + " ";
		prettyPrint(node.right, prefix);

		return toPrint;
	}

	public static int findCommonAncestor(Node root, int n1, int n2) {

		if (root == null)
			return 0;
		if (root.value > n1 && root.value > n2)
			return findCommonAncestor(root.left, n1, n2);

		if (root.value < n1 && root.value < n2)
			return findCommonAncestor(root.right, n1, n2);

		return root.value;
	}
}
