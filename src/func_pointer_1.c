// llvm-mctoll binary-lifting-testcases/bin/func_pointer_1 -I /usr/include/stdio.h

#include <stdio.h>

void greet() {
    printf("Hello, World!\n");
}

int main() {
    void (*func_ptr)() = &greet;
    func_ptr();  // 함수 호출
    return 0;
}
