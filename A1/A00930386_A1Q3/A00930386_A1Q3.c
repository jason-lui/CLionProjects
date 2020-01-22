#include <stdio.h>
#include <math.h>

int getNumbersWithDigits(int digits[], int numberOfDigits) {
    int total = 0;
    for (int index = 0; index < numberOfDigits; index ++) {
        int decimalPlace = pow(10, index);
        total += digits[numberOfDigits - index - 1] * decimalPlace;
    }
    return total;
}

int main() {
    int arrayOfIntegers[] = {1, 0, 9, 3};
    int arraySize = 4;
    int arrayNumber = getNumbersWithDigits(arrayOfIntegers, arraySize);
    printf("%d", arrayNumber);
    return 0;
}
