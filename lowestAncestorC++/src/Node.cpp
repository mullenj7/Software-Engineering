#include "Node.h"

using namespace std; 

struct Node * newNode(int k) 
{ 
	//cout<<"\nCreating node with value "<<k <<"\n";
	Node *temp = new Node; 
	temp->key = k; 
	temp->left = temp->right = NULL; 
	return temp; 
} 
