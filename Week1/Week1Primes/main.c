#include <stdio.h>
#include <stdbool.h>

void printPrimes(bool array[]) {
    for (int num = 0; num < 10000; num++) {
        if (array[num] == true) {
            printf("%d\n", num);
            for (int multiple = num * 2; multiple < 10000; multiple += num) {
                array[multiple] = false;
            }
        }
    }
}

int main() {
    bool primes[10000];
    primes[0] = false;
    primes[1] = false;
    for (int num = 2; num < 10000; num++) {
        primes[num] = true;
    }

    printPrimes(primes);
    return 0;
}
