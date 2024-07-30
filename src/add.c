#include <stdio.h>

int add(int *a, char b) {
    return *a + (int)b;
}

int main(){
    int a = 1;
    char b = 2;
    int c = add(&a, b);
    int* d = &a;
    int e = add(d, b);
    printf("%d\n", c);
    return 0;
}