// llvm-mctoll binary-lifting-testcases/bin/func_pointer_2 -I /usr/include/stdio.h -I /usr/include/stdlib.h

#include <stdio.h>
#include <stdlib.h>

int compareAscending(const void *a, const void *b) {
    return (*(int*)a - *(int*)b);
}

int compareDescending(const void *a, const void *b) {
    return (*(int*)b - *(int*)a);
}

void sort(int *array, int n, int (*compare)(const void*, const void*)) {
    qsort(array, n, sizeof(int), compare);
}

int main() {
    int arr[] = {5, 2, 9, 1, 5, 6};
    sort(arr, 6, compareAscending);
    printf("Ascending: ");
    for (int i = 0; i < 6; i++) {
        printf("%d ", arr[i]);
    }
    printf("\n");

    sort(arr, 6, compareDescending);
    printf("Descending: ");
    for (int i = 0; i < 6; i++) {
        printf("%d ", arr[i]);
    }
    printf("\n");
    return 0;
}
