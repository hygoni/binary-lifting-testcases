//
// This file was generated by the Retargetable Decompiler
// Website: https://retdec.com
//

#include <stdint.h>
#include <stdio.h>

// ------------------------ Functions -------------------------

// From module:   /home/hyeyoo/lifting/binary-lifting-testcases/src/pointer_arithmetic.c
// Address range: 0x401136 - 0x401249
// Line range:    3 - 21
int main() {
    int32_t v1 = 1; // bp-56, 0x40113e
    int64_t v2 = 6; // bp-88, 0x401161
    puts("Elements of the arrays using pointer arithmetic:");
    int64_t v3 = 0;
    int64_t v4 = 4 * v3; // 0x4011af
    int32_t * v5 = (int32_t *)(v4 + (int64_t)&v2); // 0x4011be
    uint32_t v6 = *v5; // 0x4011be
    int32_t * v7 = (int32_t *)(v4 + (int64_t)&v1); // 0x4011d4
    uint32_t v8 = *v7; // 0x4011d4
    v3++;
    printf("Element %d: %d (from arr1), %d (from arr2)\n", v3, (int64_t)v8, (int64_t)v6);
    printf("Sum of corresponding elements: %d\n", (int64_t)(*v5 + *v7));
    while (v3 != 5) {
        // 0x4011aa
        v4 = 4 * v3;
        v5 = (int32_t *)(v4 + (int64_t)&v2);
        v6 = *v5;
        v7 = (int32_t *)(v4 + (int64_t)&v1);
        v8 = *v7;
        v3++;
        printf("Element %d: %d (from arr1), %d (from arr2)\n", v3, (int64_t)v8, (int64_t)v6);
        printf("Sum of corresponding elements: %d\n", (int64_t)(*v5 + *v7));
    }
    // 0x401242
    return 0;
}

// --------------------- Meta-Information ---------------------

// Detected compiler/packer: gcc (11.4.1)
// Detected functions: 1

