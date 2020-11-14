#include <gtest/gtest.h>
#include "lowestAncestor.h"
	
TEST(LowestAncestorcpp , testInsert1){
	struct Node *root = NULL; 
    root = insert(root,5); 
    insert(root,8);
    insert(root,3);
    insert(root,1);
    insert(root,4);
	EXPECT_EQ(3, root->left->key);
	EXPECT_EQ(8, root->right->key);
	EXPECT_EQ(1, root->left->left->key);
	EXPECT_EQ(4, root->left->right->key);
}
TEST(LowestAncestorcpp , testLCA){
	struct Node *root = NULL; 
    root = insert(root,5); 
    insert(root,8);
    insert(root,3);
    insert(root,1);
    insert(root,10);
    insert(root,12);
    insert(root,9);
    insert(root,4);
    struct Node *test1 = lca(root,1,4);
    struct Node *test2 = lca(root,8,3);
    struct Node *test3 = lca(root,9,12);

	EXPECT_EQ(test1->key,3);
	EXPECT_EQ(test2->key,5);
	EXPECT_EQ(test3->key,10);
}
TEST(Nodecpp , testConstructor){
	struct Node *root = newNode(10);
	EXPECT_EQ(NULL,root->left);
	EXPECT_EQ(NULL,root->right);
	EXPECT_EQ(10,root->key);
}

//int main(int argc, char **argv) {
    //testing::InitGoogleTest(&argc, argv);
    //return RUN_ALL_TESTS();
//}
