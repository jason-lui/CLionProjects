#include <stdio.h>

/*Write a program that prints the numbers from 1 to 100. But for multiples of three print “Fizz”
 * instead of the number and for the multiples of five print “Buzz”. For numbers which are multiples
 * of both three and five print “FizzBuzz”.*/


void fizzBuzz() {
    for (int number = 1; number <= 100; number++) {
        if (number % 3 == 0 && number % 5 == 0) {
            printf("FizzBuzz\n");
        } else if (number % 3 == 0) {
            printf("Fizz\n");
        } else if (number % 5 == 0) {
            printf("Buzz\n");
        } else {
            printf("%d\n", number);
        }
    }
}

int main() {
    fizzBuzz();
    return 0;
}