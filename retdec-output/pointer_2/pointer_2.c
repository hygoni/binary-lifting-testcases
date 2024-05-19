//
// This file was generated by the Retargetable Decompiler
// Website: https://retdec.com
//

#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

// ------------------- Function Prototypes --------------------

int32_t ** createMatrix(uint32_t rows, uint32_t cols);
void freeMatrix(int32_t ** matrix, uint32_t rows);

// ------------------------ Functions -------------------------

// From module:   /home/hyeyoo/lifting/binary-lifting-testcases/src/pointer_2.c
// Address range: 0x401156 - 0x40120b
// Line range:    6 - 15
int32_t ** createMatrix(uint32_t rows, uint32_t cols) {
    int64_t * mem = malloc(8 * rows); // 0x401171
    if (rows <= 0) {
        // 0x401201
        return (int32_t **)mem;
    }
    int64_t v1 = 0;
    int64_t * mem2 = malloc(4 * cols); // 0x4011a5
    int64_t * v2 = (int64_t *)(8 * v1 + (int64_t)mem); // 0x4011aa
    *v2 = (int64_t)mem2;
    int64_t v3; // 0x401156
    int64_t v4; // 0x401156
    int64_t v5; // 0x401156
    int32_t v6; // 0x4011b9
    if (cols > 0) {
        // 0x4011b6
        v6 = (int32_t)v1 * cols;
        *(int32_t *)mem2 = v6;
        if (cols != 1) {
            v5 = 1;
            v3 = *v2;
            *(int32_t *)(4 * v5 + v3) = v6 + (int32_t)v5;
            v4 = v5 + 1;
            while (v4 != (int64_t)cols) {
                // 0x4011b6
                v5 = v4;
                v3 = *v2;
                *(int32_t *)(4 * v5 + v3) = v6 + (int32_t)v5;
                v4 = v5 + 1;
            }
        }
    }
    int64_t v7 = v1 + 1;
    while (v7 != (int64_t)rows) {
        // 0x401183
        v1 = v7;
        mem2 = malloc(4 * cols);
        v2 = (int64_t *)(8 * v1 + (int64_t)mem);
        *v2 = (int64_t)mem2;
        if (cols > 0) {
            // 0x4011b6
            v6 = (int32_t)v1 * cols;
            *(int32_t *)mem2 = v6;
            if (cols != 1) {
                v5 = 1;
                v3 = *v2;
                *(int32_t *)(4 * v5 + v3) = v6 + (int32_t)v5;
                v4 = v5 + 1;
                while (v4 != (int64_t)cols) {
                    // 0x4011b6
                    v5 = v4;
                    v3 = *v2;
                    *(int32_t *)(4 * v5 + v3) = v6 + (int32_t)v5;
                    v4 = v5 + 1;
                }
            }
        }
        // 0x4011f5
        v7 = v1 + 1;
    }
    // 0x401201
    return (int32_t **)mem;
}

// From module:   /home/hyeyoo/lifting/binary-lifting-testcases/src/pointer_2.c
// Address range: 0x40120b - 0x40125d
// Line range:    17 - 22
void freeMatrix(int32_t ** matrix, uint32_t rows) {
    if (rows <= 0) {
        // 0x40124e
        free((int64_t *)matrix);
        return;
    }
    int64_t v1 = 0;
    free((int64_t *)*(int64_t *)(8 * v1 + (int64_t)matrix));
    v1++;
    while (v1 != (int64_t)rows) {
        // 0x401223
        free((int64_t *)*(int64_t *)(8 * v1 + (int64_t)matrix));
        v1++;
    }
    // 0x40124e
    free((int64_t *)matrix);
}

// From module:   /home/hyeyoo/lifting/binary-lifting-testcases/src/pointer_2.c
// Address range: 0x40125d - 0x401308
// Line range:    24 - 35
int main() {
    int64_t v1 = 0x100000000 * (int64_t)createMatrix(3, 4) >> 32;
    for (int64_t i = 0; i < 3; i++) {
        for (int64_t j = 0; j < 4; j++) {
            int64_t v2 = *(int64_t *)(8 * i + v1); // 0x4012ac
            printf("%d ", (int64_t)*(int32_t *)(v2 + 4 * j));
        }
        // 0x4012da
        putchar(10);
    }
    // 0x4012f0
    freeMatrix((int32_t **)v1, 3);
    return 0;
}

// --------------------- Meta-Information ---------------------

// Detected compiler/packer: gcc (11.4.1)
// Detected functions: 3

