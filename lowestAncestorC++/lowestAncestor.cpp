//C++ program run by entering "lowestAncestor <firstNode> <secondNode> <thirdNode> ...
//It then builds binary tree based on input and asks for 2 nodes to calulate LCA of.
//When they are entered it prints the result, and then loops back again and repeats infinitely.
#include <iostream> 
#include <vector> 
#include <cstdlib>

using namespace std; 

// A Binary Tree node 
struct Node 
{ 
	int key; 
	struct Node *left, *right; 
}; 

struct Node * newNode(int k) 
{ 
	cout<<"\nCreating node with value "<<k;
	Node *temp = new Node; 
	temp->key = k; 
	temp->left = temp->right = NULL; 
	return temp; 
} 
struct Node* insert(struct Node* node, int key) 
{ 
    if (node == NULL) return newNode(key); 
  
    if (key < node->key) 
        node->left  = insert(node->left, key); 
    else if (key > node->key) 
        node->right = insert(node->right, key);    
  
    return node; 
} 

struct Node *lca(Node* root, int n1, int n2)  
{  
    if (root == NULL) return NULL;  
  
    
    if (root->key > n1 && root->key > n2)  
        return lca(root->left, n1, n2);  
  
    
    if (root->key < n1 && root->key < n2)  
        return lca(root->right, n1, n2);  
  
    return root;  
}  

int main(int argc, char** argv) 
{ 

	struct Node *root = NULL; 
    root = insert(root,atoi(argv[1])); 

	for (int i =2; i<argc; i++){
		
			int tval = atoi(argv[i]);
			
			insert(root,tval);
	}
	
	int node1=0;
	int node2=0;
	bool finished=false;
	while(!finished){
	cout << "\nEnter 2 nodes you want to calculate lowest common ancestor of (seperated by spaces)\n";
	cin >> node1 >> node2;
	
	cout << "\nLCA("<<node1 <<","<<node2<<") is "<<lca(root, node1, node2)->key; 
}
	return 0; 
} 
