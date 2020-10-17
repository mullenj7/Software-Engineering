#define NODE_H
#include <iostream> 
#include <vector> 
#include <cstdlib>
#include <string>

struct Node 
{ 
	int key; 
	struct Node *left, *right; 
}; 

struct Node * newNode(int k);
