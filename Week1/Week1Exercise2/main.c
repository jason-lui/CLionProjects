#include <stdio.h>

int findEvenOccurrence(int elements[], int size) {
    for (int inner = 0; inner < size; inner++) {
        int count = 0;
        for (int outer = 0; outer < size; outer++) {
            if (elements[inner] == elements[outer]) {
                count += 1;
            }
        }
        if (count % 2 == 0) {
            return elements[inner];
        }
    }
    return 0;
}

int main() {
    int arr[] = {1, 1, 1, 3, 3, 3, 2, 2};
    printf("%d", findEvenOccurrence(arr, 8));
    return 0;
}
