#include <stdio.h>

int fib(int n) {
    if (n == 0) {
        return 0;
    }

    if (n == 1) {
        return 1;
    }

    return fib(n - 1) + fib(n -2);
}

int main() {
    int number = 5;
    int result;

    result = fib(number);
    printf("Fibonacci: %d", result);
    return 0;
}
