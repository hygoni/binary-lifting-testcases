// llvm-mctoll binary-lifting-testcases/bin/pointer_1 -I /usr/include/stdio.h

#include <stdio.h>

void increment(int *value) {
    (*value)++;
}

int main() {
    int a = 10;
    increment(&a);
    printf("a의 값: %d\n", a);
    return 0;
}
