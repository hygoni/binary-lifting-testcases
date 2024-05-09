// llvm-mctoll binary-lifting-testcases/bin/pointer_2 -I /usr/include/stdio.h -I /usr/include/stdlib.h

#include <stdio.h>
#include <stdlib.h>

int **createMatrix(int rows, int cols) {
    int **matrix = malloc(rows * sizeof(int*));
    for (int i = 0; i < rows; i++) {
        matrix[i] = malloc(cols * sizeof(int));
        for (int j = 0; j < cols; j++) {
            matrix[i][j] = i * cols + j;
        }
    }
    return matrix;
}

void freeMatrix(int **matrix, int rows) {
    for (int i = 0; i < rows; i++) {
        free(matrix[i]);
    }
    free(matrix);
}

int main() {
    int rows = 3, cols = 4;
    int **matrix = createMatrix(rows, cols);
    for (int i = 0; i < rows; i++) {
        for (int j = 0; j < cols; j++) {
            printf("%d ", matrix[i][j]);
        }
        printf("\n");
    }
    freeMatrix(matrix, rows);
    return 0;
}
