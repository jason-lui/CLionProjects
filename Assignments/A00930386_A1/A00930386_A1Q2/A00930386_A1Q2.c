#include <stdbool.h>
#include <math.h>
#include <stdio.h>

bool isPalindrome(int elements[], int size) {
    int halfSize = floor(size / 2);
    for (int index = 0; index < halfSize; index++) {
        if (elements[index] != elements[size - index - 1]) {
            return false;
        }
    }
    return true;
}

int main() {
    int arrayOfIntegers[] = {1, 2, 2, 2, 1};
    int arraySize = 5;
    if (isPalindrome(arrayOfIntegers, arraySize)) {
        printf("true");
    }
    else {
        printf("false");
    }
    return 0;
}
