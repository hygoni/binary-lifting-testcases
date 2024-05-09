// llvm-mctoll binary-lifting-testcases/bin/array_1 -I /usr/include/stdio.h

#include <stdio.h>

int main() {
    int arr[] = {1, 2, 3, 4, 5};
    int *ptr = arr + sizeof(arr)/sizeof(arr[0]) - 1;
    for (int i = 0; i < sizeof(arr)/sizeof(arr[0]); i++) {
        printf("%d ", *ptr--);
    }
    printf("\n");
    return 0;
}
