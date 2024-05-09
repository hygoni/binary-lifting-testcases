#include <stdio.h>

int main() {
    int numbers[10] = {1, 4, 5, 9, 8, 1, 2, 3, 4, 8};
    int sum = 0;

    // Print the entered numbers
    printf("The numbers: ");
    for (int i = 0; i < 10; i++) {
        printf("%d ", numbers[i]);
        sum += numbers[i];
    }
    printf("\n");
    int average = sum / 10; // Calculate the average
  
    // Print the sum and average
    printf("Sum of the entered numbers: %d\n", sum);
    printf("Average of the entered numbers: %.2f\n", average);

    return 0;
}

