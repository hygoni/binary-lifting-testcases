#include <stdio.h>

int main() {
    // Define two arrays
    int arr1[] = {1, 2, 3, 4, 5};
    int arr2[] = {6, 7, 8, 9, 10};

    // Define pointers to the first elements of the arrays
    int *ptr1 = arr1;
    int *ptr2 = arr2;

    printf("Elements of the arrays using pointer arithmetic:\n");
    for (int i = 0; i < 5; i++) {
        printf("Element %d: %d (from arr1), %d (from arr2)\n", i + 1, *(ptr1 + i), *(ptr2 + i));
        // Perform some operation on the elements, for example, add them
        int sum = *(ptr1 + i) + *(ptr2 + i);
        printf("Sum of corresponding elements: %d\n", sum);
    }

    return 0;
}

