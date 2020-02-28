#include <stdio.h>
#include <string.h>

/*Write a program in C to reverse a string using recursion.*/

void reverse1(char *string, char *result, int size) {
    if (!*string) {
        return;
    }
    result[size - 1] = *string;
    return reverse1(string + 1, result, size - 1);
}

void reverse2(char *string, int size) {
    if (size <= 0) {
        return;
    }
    char temp = *string;
    *string = *(string + size - 1);
    *(string + size -1) = temp;

    reverse2(string + 1, size - 2);
}

void reverse3(char *string, char *result) {
    if (!*string) {
        return;
    }
    printf("%s\n", string);
    size_t len = strlen(string);
    result[len - 1] = *string;
    return reverse3(string + 1, result);
}

int main() {
    char string[6] = "Jason";
    char result1[6];
    char result2[6] = "Jason";
    char result3[6] = "";
    int size = 5;

    reverse1(string, result1, size);
    printf("Reverse: %s\n", result1);
    reverse2(result2, size);
    printf("Reverse: %s\n", result2);
    reverse3(string, result3);
    printf("Reverse: %s\n", result3);

    int number;

    if (number = 0) {
        char *p = &string[1];
        printf("%s", p);
    }



    return 0;
}
