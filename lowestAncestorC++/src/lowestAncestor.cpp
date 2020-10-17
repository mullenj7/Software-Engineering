//C++ program run by entering "lowestAncestor <firstNode> <secondNode> <thirdNode> ...
//It then builds binary tree based on input and asks for 2 nodes to calulate LCA of.
//When they are entered it prints the result, and then loops back again and repeats infinitely.
#include "lowestAncestor.h"


using namespace std; 
// A Binary Tree node 


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
void Print (Node * x, int & id)
{
    if (!x) return;

    Print (x->left,id);

    id++;
    
    cout << "Node "<< id<<":" << ' ' << x->key << endl;

    Print (x->right,id);
}


