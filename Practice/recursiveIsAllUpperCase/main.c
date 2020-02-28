#include <stdio.h>
#include <stdbool.h>

/*Write a function to check if all the characters of a string are upper case.
Assume the string only includes alphabets and blank characters.*/

bool allUpperCase(char *string) {
    if (*string == 0) {
        return true;
    }

    if (!(*string >= 'A' && *string <= 'Z') && *string != ' ') {
        return false;
    }

    return allUpperCase(string + 1);
}

int main() {
    char string1[10] = "ABCDEFG H"; // True
    char string2[10] = "ABCDEFGH"; // True
    char string3[10] = "ABCdefg H"; // False

    printf("%d\n", allUpperCase(string1));
    printf("%d\n", allUpperCase(string2));
    printf("%d\n", allUpperCase(string3));
    return 0;
}


