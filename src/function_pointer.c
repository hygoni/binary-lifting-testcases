#include <stdio.h>
#include <stdlib.h>
#include <time.h>

// Function prototypes
void add(int a, int b);
void subtract(int a, int b);
void multiply(int a, int b);
void divide(int a, int b);

void (*ops[])(int, int) = {add, subtract, multiply, divide};

int main() {
    // Seed the random number generator
    srand(time(NULL));

    int x = rand() % 100; // Generate a random number between 0 and 99
    int y = rand() % 100; // Generate a random number between 0 and 99

    printf("x = %d, y = %d\n\n", x, y);
    for (int i = 0; i < 4; i++)
      ops[i](x, y);

    return 0;
}

// Function definitions
void add(int a, int b) {
    printf("%d\n", a + b);
}

void subtract(int a, int b) {
    printf("%d\n", a - b);
}

void multiply(int a, int b) {
    printf("%d\n", a * b);
}

void divide(int a, int b) {
    if (b != 0)
        printf("%d\n", a / b);
    else
        printf("Division by zero!\n");
}

