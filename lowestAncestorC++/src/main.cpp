
#include "lowestAncestor.h"

using namespace std; 

int main(int argc, char** argv) 
{ 

	struct Node *root = NULL; 
    root = insert(root,atoi(argv[1])); 

	for (int i=2; i<argc; i++){
		
			int tval = atoi(argv[i]);
			
			insert(root,tval);
	}
	int id =0;
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
