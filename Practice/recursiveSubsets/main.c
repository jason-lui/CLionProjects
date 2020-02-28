#include <stdio.h>

void printArray(int arrayOfIntegers[], int size) {
    printf("[");
    for (int index = size - 1; index >= 0 ; index--) {
        if (index != 0) {
            printf("%d, ", arrayOfIntegers[index]);
        } else {
            printf("%d", arrayOfIntegers[index]);
        }
    }
    printf("]\n");
}

void makeArrayRecursive(int number, int *array, int size) {
    if (number == 0) {
        printArray(array, size);
        return;
    }
    makeArrayRecursive(number - 1, array, size);
    array[size] = number;
    makeArrayRecursive(number - 1, array, size + 1);
}

int printAllSubsets(int number) {
    int result[number];
    int size = 0;

    makeArrayRecursive(number, result, size);
    return 0;
}

int main() {
    int number = 3;
    printAllSubsets(number);
    return 0;
}
