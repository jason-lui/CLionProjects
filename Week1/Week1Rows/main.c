#include <stdio.h>

void triangle(int rows) {
    if (rows) {
        int current = 1;
        for (int currentRow = 0; currentRow < rows; currentRow++) {
            for (int index = 0; index < currentRow + 1; index++) {
                printf("%d ", current++);
            }
            printf("\n");
        }
    }
}

int main() {
    triangle(1);
    return 0;
}
