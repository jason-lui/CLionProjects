#include <stdio.h>
#include <string.h>
#include <stdbool.h>
#define LINE_LENGTH 10000

/**
 * Returns true if the first word starts with the second word, else false.
 *
 * @param firstWord char array
 * @param secondWord char array
 * @return true if the first word starts with the second word, else false
 */
bool stringSubset(char *firstWord, char *secondWord) {
    if (strlen(firstWord) < strlen(secondWord)) {
        return false;
    }
    if (!*secondWord) {
        return true;
    }
    return (*firstWord == *secondWord && stringSubset(firstWord + 1, secondWord + 1));
}

/**
 * Returns the position of the start of the word inside the line.
 *
 * @param lineContent char array
 * @param word char array
 * @return the position of the start of the word inside the line
 */
int checkWordInLine(char *lineContent, char *word) {

    size_t lineLength = strlen(lineContent);
    for (int i = 0; i < lineLength; i++) {

        if (*lineContent == *word) {
            if (stringSubset(lineContent, word)) {
                return i + 1;
            }
        }
        lineContent++;
    }
    return -1;
}

/**
 * Prints the line and character position of the word inside the file.
 *
 * @param fileName char array
 * @param word char array
 */
void wordSearch (char *fileName, char *word) {
    FILE *file = fopen(fileName, "r");
    if (file == NULL) {
        printf("Invalid file name.");
        return;
    }

    char line[LINE_LENGTH];
    int lineCharacter = 0;
    int lineNumber = 0;

    while (fgets(line, LINE_LENGTH, file) != NULL) {
        lineNumber++;
        lineCharacter = checkWordInLine(line, word);

        if (lineCharacter != -1) {
            printf("Line: %d, character: %d\n", lineNumber, lineCharacter);
            return;
        }
    }
    printf("Not found!\n");

    fclose(file);
}

int main(int argc, char *argv[]) {

    /*Fails if there aren't 2 command line arguments*/
    if (argc != 3) {
        printf("Invalid number of command line arguments.\n");
        return 0;
    }

    wordSearch(argv[1], argv[2]);

    return 0;
}