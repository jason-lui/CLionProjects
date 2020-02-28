#include <stdio.h>
#include <string.h>
#include <stdbool.h>


bool recursiveSubset(char str[20], char str1[20]);

bool sentenceSubset () {
    char firstStr[20];
    char secondStr[20];

    printf("Enter your first word: ");
    scanf("%s", firstStr);
    printf("Enter your second word: ");
    scanf("%s", secondStr);

    if (strlen(secondStr) > strlen(firstStr)) {
        return false;
    }
    return recursiveSubset(firstStr, secondStr);
}

bool recursiveSubset(char first[20], char second[20]) {
    if (!*second) {
        return true;
    }

    if (*first != *second) {
        return false;
    }

    first++;
    second++;
    return recursiveSubset(first, second);
}

int main() {
    if (sentenceSubset() == true) {
        printf("Nice");
    } else {
        printf("Nay");
    }
    return 0;
}
