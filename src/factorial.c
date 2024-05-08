#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

// Recursive function to calculate the factorial of a number
int factorial(int n) {
    if (n < 0)
        return 0;
    if (n == 0)
        return 1;
    else
        return n * factorial(n - 1);
}

// Function to run test cases
bool run_tests() {
    // Test case 1: factorial of 0 should be 1
    if (factorial(0) != 1) return false;

    // Test case 2: factorial of positive numbers
    if (factorial(5) != 120 || factorial(6) != 720 || factorial(10) != 3628800)
        return false;

    // Test case 3: factorial of negative number should return 0 (invalid input)
    if (factorial(-5) != 0) return false;

    return true;
}

int main() {
    // Run test cases
    if (run_tests()) {
        printf("All test cases passed!\n");
    } else {
        printf("Some test cases failed.\n");
    }

    return 0;
}

