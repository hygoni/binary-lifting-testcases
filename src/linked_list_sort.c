#include <stdio.h>
#include <stdlib.h>

// Node structure for doubly linked list
struct Node {
    int data;
    struct Node* prev;
    struct Node* next;
};

// Function to create a new node
struct Node* createNode(int data) {
    struct Node* newNode = (struct Node*)malloc(sizeof(struct Node));
    newNode->data = data;
    newNode->prev = NULL;
    newNode->next = NULL;
    return newNode;
}

// Function to merge two sorted linked lists
struct Node* merge(struct Node* left, struct Node* right) {
    if (left == NULL)
        return right;
    if (right == NULL)
        return left;

    struct Node* result = NULL;
    if (left->data <= right->data) {
        result = left;
        result->next = merge(left->next, right);
        result->next->prev = result;
    } else {
        result = right;
        result->next = merge(left, right->next);
        result->next->prev = result;
    }
    return result;
}

// Function to perform merge sort on doubly linked list
struct Node* mergeSort(struct Node* head) {
    if (head == NULL || head->next == NULL)
        return head;

    struct Node* slow = head;
    struct Node* fast = head->next;

    while (fast != NULL && fast->next != NULL) {
        slow = slow->next;
        fast = fast->next->next;
    }

    struct Node* mid = slow;
    struct Node* midNext = mid->next;
    mid->next = NULL;
    midNext->prev = NULL;

    struct Node* left = mergeSort(head);
    struct Node* right = mergeSort(midNext);

    return merge(left, right);
}

// Function to print the doubly linked list
void printList(struct Node* head) {
    struct Node* current = head;
    while (current != NULL) {
        printf("%d ", current->data);
        current = current->next;
    }
    printf("\n");
}

// Function to free memory allocated for doubly linked list
void freeList(struct Node* head) {
    struct Node* temp;
    while (head != NULL) {
        temp = head;
        head = head->next;
        free(temp);
    }
}

int main() {
    struct Node* head = createNode(5);
    head->next = createNode(3);
    head->next->prev = head;
    head->next->next = createNode(9);
    head->next->next->prev = head->next;
    head->next->next->next = createNode(1);
    head->next->next->next->prev = head->next->next;

    printf("Original List: ");
    printList(head);

    head = mergeSort(head);

    printf("Sorted List: ");
    printList(head);

    // Free memory allocated for the list
    freeList(head);

    return 0;
}

