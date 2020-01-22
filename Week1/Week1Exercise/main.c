#include <stdio.h>

void printArray(int elements[], int size) {
    printf("[");

    if (elements) {
        for (int index = 0; index < size - 1; index++) {
            printf("%d, ", elements[index]);
        }
        printf("%d", elements[-1]);
    }

    printf("]");
}

int main() {
    int arr[] = {-1, 10, 0, 4};
    printArray(arr, 4);
    return 0;
}
