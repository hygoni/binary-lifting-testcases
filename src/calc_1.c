// llvm-mctoll binary-lifting-testcases/bin/calc_1 -I /usr/include/stdio.h

#include <stdio.h>

int main() {
    int a = 1;
    char b = 2;
    int c = a + (int) b;
    printf("%d\n", c);
    return 0;
}
