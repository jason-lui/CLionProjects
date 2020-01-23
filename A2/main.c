#include <stdio.h>
#define MAX_WORD_LENGTH 20
#define MAX_NUMBER_OF_WORDS 100

char *moveToBeginningOfNextToken(char *inputString) {
    if (*inputString == ' ') {
        inputString++;
    }
}

int getCurrentTokenSize(char *inputString) {
    int tokenSizeCounter = 0;
    if (*inputString != ' ') {
        tokenSizeCounter++;
        inputString++;
    }
    return tokenSizeCounter;
}

int tokenize (char *paragraph, char
tokens [MAX_NUMBER_OF_WORDS][MAX_WORD_LENGTH]) {
    while (*paragraph) {
        char[] = currentToken = ""
        moveToBeginningOfNextToken(paragraph);

    }

}

int getNumberOfWordsForNextLine(char
tokens[MAX_NUMBER_OF_WORDS][MAX_WORD_LENGTH], int
numberOfWordsProcessedSoFar, int totalNumberOfWords, int lineLength) {

}

void printWordAndSpace(char word[MAX_WORD_LENGTH], int numberOfSpaces) {

}

void formatAndPrintParagraph(char *paragraph, int lineLength) {

}

int main() {
    printf("Hello, World!\n");
    return 0;
}
