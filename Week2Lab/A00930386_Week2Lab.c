#include <stdio.h>

void printTokens(char *inputString) {
    // Strip leading whitespaces
    while (*inputString == ' ') {
        inputString++;
    }

    // While not null char '\0'
    while (*inputString) {

        // If the current character is not a space, print that char
        if (*inputString != ' ') {
            printf("%c", *inputString++);
        } else {

            // Otherwise, skip spaces until a non-space char is found
            while (*inputString == ' ') {
                inputString++;
            }
            printf("\n");
        }
    }
}

int main() {
    // Examples
    char *sampleString = "    Hi there! How is it     going?";
    char *sampleString2 = "    ";
    printTokens(sampleString);
    printTokens(sampleString2);
    return 0;
}
