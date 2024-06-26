//
// This file was generated by the Retargetable Decompiler
// Website: https://retdec.com
//

#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>

// ---------------- Integer Types Definitions -----------------

typedef int64_t int128_t;

// ----------------- Float Types Definitions ------------------

typedef float float32_t;
typedef double float64_t;

// ------------------- Function Prototypes --------------------

int32_t * createStudent(int32_t id, float64_t score);

// --------------------- Global Variables ---------------------

char * g1 = "\xed\x95\x99\xec\x83\x9d ID: %d, \xec\xa0\x90\xec\x88\x98: %.1f\n"; // 0x402010

// ------------------------ Functions -------------------------

// From module:   /home/hyeyoo/lifting/binary-lifting-testcases/src/struct_2.c
// Address range: 0x401146 - 0x401181
// Line range:    11 - 16
int32_t * createStudent(int32_t id, float64_t score) {
    int64_t v1 = __asm_movsd((int128_t)(int32_t)(float32_t)score); // 0x401151
    int64_t * mem = malloc(16); // 0x40115b
    *(int32_t *)mem = id;
    *(int64_t *)((int64_t)mem + 8) = __asm_movsd(__asm_movsd_1(v1));
    return (int32_t *)mem;
}

// From module:   /home/hyeyoo/lifting/binary-lifting-testcases/src/struct_2.c
// Address range: 0x401181 - 0x401267
// Line range:    18 - 31
int main() {
    // 0x401181
    createStudent(101, (float64_t)(int64_t)__asm_movq(0x4055a00000000000));
    createStudent(102, (float64_t)(int64_t)__asm_movq(0x4056a00000000000));
    createStudent(103, (float64_t)(int64_t)__asm_movq(0x4054a00000000000));
    createStudent(104, (float64_t)(int64_t)__asm_movq(0x4056200000000000));
    createStudent(105, (float64_t)(int64_t)__asm_movq(0x4057200000000000));
    for (int64_t i = 0; i < 5; i++) {
        // 0x401214
        int64_t v1; // bp-8, 0x401181
        int64_t * v2 = (int64_t *)((int64_t)&v1 - 48 + 8 * i); // 0x401219
        __asm_movq(*(int64_t *)(*v2 + 8));
        printf((char *)&g1);
        free((int64_t *)*v2);
    }
    // 0x401260
    return 0;
}

// --------------------- Meta-Information ---------------------

// Detected compiler/packer: gcc (11.4.1)
// Detected functions: 2

