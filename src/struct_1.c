// llvm-mctoll binary-lifting-testcases/bin/struct_1 -I /usr/include/stdio.h -I /usr/include/stdlib.h -I /usr/include/string.h

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct TreeNode
{
    char data[32];
    struct TreeNode *left;
    struct TreeNode *right;
} TreeNode;

int main()
{
    TreeNode *node1 = (TreeNode *)malloc(sizeof(TreeNode));
    TreeNode *node2 = (TreeNode *)malloc(sizeof(TreeNode));
    TreeNode *node3 = (TreeNode *)malloc(sizeof(TreeNode));

    strcpy(node1->data, "World!\n");
    strcpy(node2->data, "Hello, ");
    strcpy(node3->data, "This is a tree!\n");

    node1->left = node2;
    node1->right = node3;

    printf("%s", node1->left->data);
    printf("%s", node1->data);
    printf("%s", node1->right->data);

    free(node1);
    free(node2);
    free(node3);

    return 0;
}
