// llvm-mctoll binary-lifting-testcases/bin/calc_2 -I /usr/include/stdio.h -I /usr/include/math.h

#include <stdio.h>
#include <math.h>

double sqrtNewtonRaphson(double number) {
    double tolerance = 0.00001;
    double guess = number / 2.0;
    double difference = 1.0;

    while (difference > tolerance) {
        double new_guess = (guess + number / guess) / 2.0;
        difference = fabs(new_guess - guess);
        guess = new_guess;
    }

    return guess;
}

int main() {
    double num = 612.0;
    printf("The square root of %.2f is approximately %.5f\n", num, sqrtNewtonRaphson(num));
    return 0;
}
