#include <stdio.h>
#include <string.h>
#include <math.h>
#define MAX_WORD_LENGTH 20
#define MAX_NUMBER_OF_WORDS 100
#define DELIMITER ' '

char *moveToBeginningOfNextToken(char *inputString) {

    /*Increment pointer if the pointer value is a space(delimiter)*/
    while (*inputString == DELIMITER) {
        inputString++;
    }

    return inputString;
}

int getCurrentTokenSize(char *inputString) {

    int tokenSizeCounter = 0;

    while (*inputString) {

        /*Break if a space(delimiter) is encountered*/
        if (*inputString == DELIMITER) {
            break;
        }

        tokenSizeCounter++;
        inputString++;
    }
    return tokenSizeCounter;
}

int tokenize (char *paragraph, char tokens[MAX_NUMBER_OF_WORDS][MAX_WORD_LENGTH]) {

    int wordCount = 0;
    int tokenSize = 0;

    /*Strip leading whitespaces*/
    paragraph = moveToBeginningOfNextToken(paragraph);

    /*While not null char '\0'*/
    while (*paragraph) {

        /*Get the token size*/
        tokenSize = getCurrentTokenSize(paragraph);

        /*Add the letters into the word slots in the array*/
        for (int index = 0; index < tokenSize; index++) {
            tokens[wordCount][index] = *paragraph;
            paragraph++;
            if (index == tokenSize - 1) {
                tokens[wordCount][index + 1] = '\0';
            }
        }
        wordCount++;

        /*Get the next token*/
        paragraph = moveToBeginningOfNextToken(paragraph);

    }
    return wordCount;
}

int getNumberOfWordsForNextLine(char tokens[MAX_NUMBER_OF_WORDS][MAX_WORD_LENGTH],
        int numberOfWordsProcessedSoFar, int totalNumberOfWords, int lineLength) {

    /*The counter for the number of words that constitute the current line*/
    int wordsForNextLine = 0;

    /*The counter for the number of characters the words in this line contribute*/
    size_t subtotal = 0;

    do {
        /*Add the length of the incoming token to the subtotal*/
        subtotal += strlen(tokens[numberOfWordsProcessedSoFar + wordsForNextLine]);

        /*Increment the number of words taken by the next line*/
        wordsForNextLine++;
    }
    /*While the current number of words is less than the total amount of words AND...*/
    while (wordsForNextLine + numberOfWordsProcessedSoFar < totalNumberOfWords &&
    /*while the subtotal + spaces between words + length of incoming token is less than the desired line length*/
    wordsForNextLine - 1 + subtotal + strlen(tokens[numberOfWordsProcessedSoFar + wordsForNextLine]) < lineLength);

    return wordsForNextLine;
}

void printWordAndSpace(char word[MAX_WORD_LENGTH], int numberOfSpaces) {

    /*Print word*/
    printf("%s", word);

    /*Print the specified number of spaces*/
    if (numberOfSpaces != 0) {
        for (int index = 0; index < numberOfSpaces; index++) {
            printf(" ");
        }
    }

}

void formatAndPrintCurrentLine(char tokens[MAX_NUMBER_OF_WORDS][MAX_WORD_LENGTH],
        int numberOfWordsProcessedSoFar, int numberOfWordsOnNextLine, int lineLength) {

    /*The counter for the number of characters the words in this line contribute*/
    size_t subtotal = 0;

    /*Count the total number of non-space characters in this line*/
    for (int index = numberOfWordsProcessedSoFar;
    index < numberOfWordsProcessedSoFar + numberOfWordsOnNextLine; index++) {
        subtotal += strlen(tokens[index]);
    }

    /*Get the difference between the lineLength and subtotal, representing the total number of spaces between words*/
    size_t totalNumberOfSpaces = lineLength - subtotal;

    /*Only putting space characters between words*/
    int numberOfSpacePositions = numberOfWordsOnNextLine - 1;

    /*The minimum number of spaces each space position should have*/
    int numberOfSpacesPerPosition;
    if (numberOfSpacePositions > 0) {
        numberOfSpacesPerPosition = totalNumberOfSpaces / numberOfSpacePositions;
    } else {
        numberOfSpacesPerPosition = 0;
    }

    /*The number of space positions that require an extra space to sum up to the lineLength*/
    int numberOfExtraSpaces = totalNumberOfSpaces - numberOfSpacePositions * numberOfSpacesPerPosition;

    /*Loop through indices starting from current index in the tokens array*/
    for (int index = numberOfWordsProcessedSoFar;
    index < numberOfWordsProcessedSoFar + numberOfWordsOnNextLine; index++) {

        /*Print lines with a the minimum required spaces. Do not print any spaces after the final word in a line*/
        if (index == numberOfWordsOnNextLine + numberOfWordsProcessedSoFar - 1) {
            printWordAndSpace(tokens[index], 0);
        } else {
            printWordAndSpace(tokens[index], numberOfSpacesPerPosition);
        }

        /*If there are positions that require extra spaces, print an extra space until fully distributed*/
        if (numberOfExtraSpaces) {
            printf(" ");
            numberOfExtraSpaces--;
        }
    }
    printf("\n");
}

void formatAndPrintWords(char tokens[MAX_NUMBER_OF_WORDS][MAX_WORD_LENGTH], int totalNumberOfWords, int lineLength) {

    int numberOfWordsProcessedSoFar = 0;
    int numberOfWordsOnNextLine = 0;

    do {
        /*Get the number of words to be printed on the next line and print the next line*/
        numberOfWordsOnNextLine = getNumberOfWordsForNextLine(tokens,
                numberOfWordsProcessedSoFar, totalNumberOfWords, lineLength);
        formatAndPrintCurrentLine(tokens, numberOfWordsProcessedSoFar, numberOfWordsOnNextLine, lineLength);

        /*Add the number of words printed in the line to the total number of words processed so far*/
        numberOfWordsProcessedSoFar += numberOfWordsOnNextLine;
    }
    /*While not all words have been printed*/
    while (numberOfWordsProcessedSoFar < totalNumberOfWords);
}

void formatAndPrintParagraph(char *paragraph, int lineLength) {
    char tokens[MAX_NUMBER_OF_WORDS][MAX_WORD_LENGTH];
    int numberOfTokens = tokenize(paragraph, tokens);

    formatAndPrintWords(tokens, numberOfTokens, lineLength);
}

int main() {

    /*Test 1*/
    char paragraph1[] = "Hi everyone. This is the 2nd assignment. Please make sure you "
                        "start early as this is going to take some time!";
    int lineLength1 = 25;
    formatAndPrintParagraph(paragraph1, lineLength1);

    /*Test 2*/
    char paragraph2[] = "Hi everyone. This is the 2nd assignment. Please make sure you "
                        "start early as this is going to take some time!";
    int lineLength2 = 40;
    formatAndPrintParagraph(paragraph2, lineLength2);

}