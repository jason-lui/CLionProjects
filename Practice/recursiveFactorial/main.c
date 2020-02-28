#include <stdio.h>

int factorial(int n, int *result) {
    if (n == 0 || n == 1) {
        return *result;
    }

    *result *= n;
    return factorial(n - 1, result);
}

int main() {
    int number = 5;
    int result = 1;

    result = factorial(number, &result);
    printf("Factorial: %d", result);
    return 0;
}
