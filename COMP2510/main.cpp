#include <iostream>

void mysteryFunction(int *pointer) {
    *pointer += 1;
}

int main() {
    int num = 0;
    printf("%d\n", num);
    mysteryFunction(&num);
    printf("%d", num);
    return 0;
}
