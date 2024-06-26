//
// This file was generated by the Retargetable Decompiler
// Website: https://retdec.com
//

#include <stdint.h>
#include <stdio.h>

// ------------------- Function Prototypes --------------------

void matrixMultiply(uint32_t rowsA, int32_t colsA, int32_t rowsB, int32_t colsB, int32_t (*A)[1], int32_t (*B)[1], int32_t (*C)[1]);

// --------------------- Global Variables ---------------------

char * g1 = "\xed\x96\x89\xeb\xa0\xac\xec\x9d\x84 \xea\xb3\xb1\xed\x95\xa0 \xec\x88\x98 \xec\x97\x86\xec\x8a\xb5\xeb\x8b\x88\xeb\x8b\xa4."; // 0x402010

// ------------------------ Functions -------------------------

// From module:   /home/hyeyoo/lifting/binary-lifting-testcases/src/array_2.c
// Address range: 0x401146 - 0x4012fa
// Line range:    5 - 18
void matrixMultiply(uint32_t rowsA, int32_t colsA, int32_t rowsB, int32_t colsB, int32_t (*A)[1], int32_t (*B)[1], int32_t (*C)[1]) {
    if (colsA != rowsB) {
        // 0x4011c0
        puts((char *)&g1);
        // 0x4012ec
        return;
    }
    if (rowsA <= 0) {
        // 0x4012ec
        return;
    }
    int64_t v1 = 4 * (int64_t)colsB;
    int64_t v2 = 0;
    int64_t v3; // 0x401146
    int64_t v4; // 0x401146
    int32_t v5; // 0x401263
    int32_t v6; // 0x4012af
    int64_t v7; // 0x401146
    int64_t v8; // 0x401209
    int32_t * v9; // 0x401209
    if (colsB > 0) {
        // 0x4011e7
        v7 = v2 * (int64_t)colsA;
        v4 = 0;
        v8 = 4 * v4;
        v9 = (int32_t *)(v2 * v1 + (int64_t)C + v8);
        *v9 = 0;
        if (colsA > 0) {
            // 0x40121c
            v6 = 0;
            v3 = 0;
            v5 = *(int32_t *)(v8 + (int64_t)B + v3 * v1);
            v6 += v5 * *(int32_t *)(4 * (v3 + v7) + (int64_t)A);
            *v9 = v6;
            v3++;
            while (v3 != (int64_t)colsA) {
                // 0x40121c
                v5 = *(int32_t *)(v8 + (int64_t)B + v3 * v1);
                v6 += v5 * *(int32_t *)(4 * (v3 + v7) + (int64_t)A);
                *v9 = v6;
                v3++;
            }
        }
        // 0x4012cc
        v4++;
        while (v4 != (int64_t)colsB) {
            // 0x4011e7
            v8 = 4 * v4;
            v9 = (int32_t *)(v2 * v1 + (int64_t)C + v8);
            *v9 = 0;
            if (colsA > 0) {
                // 0x40121c
                v6 = 0;
                v3 = 0;
                v5 = *(int32_t *)(v8 + (int64_t)B + v3 * v1);
                v6 += v5 * *(int32_t *)(4 * (v3 + v7) + (int64_t)A);
                *v9 = v6;
                v3++;
                while (v3 != (int64_t)colsA) {
                    // 0x40121c
                    v5 = *(int32_t *)(v8 + (int64_t)B + v3 * v1);
                    v6 += v5 * *(int32_t *)(4 * (v3 + v7) + (int64_t)A);
                    *v9 = v6;
                    v3++;
                }
            }
            // 0x4012cc
            v4++;
        }
    }
    int64_t v10 = v2 + 1;
    while (v10 != (int64_t)rowsA) {
        // 0x4012d0
        v2 = v10;
        if (colsB > 0) {
            // 0x4011e7
            v7 = v2 * (int64_t)colsA;
            v4 = 0;
            v8 = 4 * v4;
            v9 = (int32_t *)(v2 * v1 + (int64_t)C + v8);
            *v9 = 0;
            if (colsA > 0) {
                // 0x40121c
                v6 = 0;
                v3 = 0;
                v5 = *(int32_t *)(v8 + (int64_t)B + v3 * v1);
                v6 += v5 * *(int32_t *)(4 * (v3 + v7) + (int64_t)A);
                *v9 = v6;
                v3++;
                while (v3 != (int64_t)colsA) {
                    // 0x40121c
                    v5 = *(int32_t *)(v8 + (int64_t)B + v3 * v1);
                    v6 += v5 * *(int32_t *)(4 * (v3 + v7) + (int64_t)A);
                    *v9 = v6;
                    v3++;
                }
            }
            // 0x4012cc
            v4++;
            while (v4 != (int64_t)colsB) {
                // 0x4011e7
                v8 = 4 * v4;
                v9 = (int32_t *)(v2 * v1 + (int64_t)C + v8);
                *v9 = 0;
                if (colsA > 0) {
                    // 0x40121c
                    v6 = 0;
                    v3 = 0;
                    v5 = *(int32_t *)(v8 + (int64_t)B + v3 * v1);
                    v6 += v5 * *(int32_t *)(4 * (v3 + v7) + (int64_t)A);
                    *v9 = v6;
                    v3++;
                    while (v3 != (int64_t)colsA) {
                        // 0x40121c
                        v5 = *(int32_t *)(v8 + (int64_t)B + v3 * v1);
                        v6 += v5 * *(int32_t *)(4 * (v3 + v7) + (int64_t)A);
                        *v9 = v6;
                        v3++;
                    }
                }
                // 0x4012cc
                v4++;
            }
        }
        // 0x4012dc
        v10 = v2 + 1;
    }
}

// From module:   /home/hyeyoo/lifting/binary-lifting-testcases/src/array_2.c
// Address range: 0x4012fa - 0x4013f7
// Line range:    20 - 32
int main() {
    int32_t v1 = 1; // bp-40, 0x401302
    int32_t v2 = 7; // bp-72, 0x40132c
    int64_t v3 = 0; // bp-88, 0x401356
    matrixMultiply(2, 3, 3, 2, (int32_t (*)[1])&v1, (int32_t (*)[1])&v2, (int32_t (*)[1])&v3);
    int64_t v4; // bp-8, 0x4012fa
    int64_t v5 = (int64_t)&v4 - 80; // 0x4013bd
    for (int64_t i = 0; i < 2; i++) {
        for (int64_t j = 0; j < 2; j++) {
            // 0x4013ac
            printf("%d ", (int64_t)*(int32_t *)(v5 + 4 * (j + 2 * i)));
        }
        // 0x4013dc
        putchar(10);
    }
    // 0x4013f0
    return 0;
}

// --------------------- Meta-Information ---------------------

// Detected compiler/packer: gcc (11.4.1)
// Detected functions: 2

