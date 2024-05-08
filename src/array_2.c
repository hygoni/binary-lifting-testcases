// llvm-mctoll binary-lifting-testcases/bin/array_2 -I /usr/include/stdio.h

#include <stdio.h>

void matrixMultiply(int rowsA, int colsA, int rowsB, int colsB, int A[rowsA][colsA], int B[rowsB][colsB], int C[rowsA][colsB]) {
    if (colsA != rowsB) {
        printf("행렬을 곱할 수 없습니다.\n");
        return;
    }
    for (int i = 0; i < rowsA; i++) {
        for (int j = 0; j < colsB; j++) {
            C[i][j] = 0;
            for (int k = 0; k < colsA; k++) {
                C[i][j] += A[i][k] * B[k][j];
            }
        }
    }
}

int main() {
    int A[2][3] = {{1, 2, 3}, {4, 5, 6}};
    int B[3][2] = {{7, 8}, {9, 10}, {11, 12}};
    int C[2][2] = {0};
    matrixMultiply(2, 3, 3, 2, A, B, C);
    for (int i = 0; i < 2; i++) {
        for (int j = 0; j < 2; j++) {
            printf("%d ", C[i][j]);
        }
        printf("\n");
    }
    return 0;
}
