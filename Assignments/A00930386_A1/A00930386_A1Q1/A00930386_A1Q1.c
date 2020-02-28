#include <stdio.h>

void multiplicationTable () {
    for (int row = 1; row <= 10; row++) {
        for (int column = 1; column <= 10; column++) {
            int product = row * column;
            printf("%d", product);

            if (product < 10) {
                printf("  ");
            }
            else {
                printf(" ");
            }
        }
        printf("\n");
    }
}

int main() {
    multiplicationTable();
    return 0;
}
