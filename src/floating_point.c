#include <stdio.h>
#include <stdlib.h>
#include <time.h>

// Function prototypes
float add(float a, float b);
float subtract(float a, float b);
float multiply(float a, float b);
float divide(float a, float b);

int main() {
    // Seed the random number generator
    srand(time(NULL));

    float x = (float)(rand() % 100); // Generate a random number between 0 and 99
    float y = (float)(rand() % 100); // Generate a random number between 0 and 99

    printf("x = %.2f, y = %.2f\n\n", x, y);

    printf("Addition: %.2f\n", add(x, y));
    printf("Subtraction: %.2f\n", subtract(x, y));
    printf("Multiplication: %.2f\n", multiply(x, y));
    printf("Division: ");
    if (y != 0)
        printf("%.2f\n", divide(x, y));
    else
        printf("Division by zero!\n");

    return 0;
}

// Function definitions
float add(float a, float b) {
    return a + b;
}

float subtract(float a, float b) {
    return a - b;
}

float multiply(float a, float b) {
    return a * b;
}

float divide(float a, float b) {
    if (b != 0)
        return a / b;
    else
        return 0; // Return 0 in case of division by zero
}

