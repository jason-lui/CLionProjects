#include <stdio.h>
#include <stdbool.h>
#define MAX_NUMBER_OF_LINES 20
#define MAX_NUMBER_OF_ELEMENTS_ON_EACH_LINE 50
#define MAX_NUMBER 100

/**
 * Return true if the occurrences of each elements of the arrays are the same.
 *
 * @param firstArrayOfInt int array
 * @param secondArrayOfInt int array
 * @param size int
 * @return true if the same, else false
 */
bool isAnagram(int *firstArrayOfInt, int *secondArrayOfInt, int size) {

    int counterArray[MAX_NUMBER + 1] = {0};

    for (int index = 0; index < size; index++) {
        counterArray[firstArrayOfInt[index]]++;
    }

    for (int index = 0; index < size; index++) {
        counterArray[secondArrayOfInt[index]]--;
    }

    /*Should return false if the counterArray is not all 0's*/
    for (int index = 0; index < MAX_NUMBER + 1; index++) {
        if (counterArray[index] != 0) {
            return false;
        }
    }

    return true;
}

/**
 * Fill the integer array by parsing a line.
 *
 * @param file FILE
 * @param integerArray int array
 * @param numberOfColumns int
 */
void fillIntegerArray(FILE * file, int integerArray[MAX_NUMBER_OF_ELEMENTS_ON_EACH_LINE], int numberOfColumns) {
    int number;
    for (int columnIndex = 0; columnIndex < numberOfColumns; columnIndex++) {
        fscanf(file, "%d", &number);
        integerArray[columnIndex] = number;
    }
}

/**
 * Find the first anagram pair in an array of array of integers and prints the line numbers.
 *
 * @param arrayOfArrays array of int arrays
 * @param numberOfRows int
 * @param numberOfColumns int
 */
void findAnagramsInArrayOfArrays(int arrayOfArrays[MAX_NUMBER_OF_LINES]
[MAX_NUMBER_OF_ELEMENTS_ON_EACH_LINE], int numberOfRows, int numberOfColumns) {
    for (int rowIndex = 0; rowIndex < numberOfRows - 1; rowIndex++) {
        for (int seekIndex = rowIndex + 1; seekIndex < numberOfRows; seekIndex++) {
            if (isAnagram(arrayOfArrays[rowIndex], arrayOfArrays[seekIndex], numberOfColumns)) {
                printf("Found: lines %d and %d", rowIndex + 2, seekIndex + 2);
                return;
            }
        }
    }
    printf("Not found");
}

/**
 * Find the first anagram pair in a file containing positive integers separated by space characters.
 *
 * @param fileName char array
 */
void findAnagramPair(char *fileName) {
    FILE *file = fopen(fileName, "r");
    if (file == NULL) {
        printf("Invalid file name.");
        return;
    }

    int numberOfRows;
    int numberOfColumns;
    int arrayOfArrays[MAX_NUMBER_OF_LINES][MAX_NUMBER_OF_ELEMENTS_ON_EACH_LINE];

    fscanf(file, "%d %d", &numberOfRows, &numberOfColumns);

    for (int rowIndex = 0; rowIndex < numberOfRows; rowIndex++) {
        fillIntegerArray(file, arrayOfArrays[rowIndex], numberOfColumns);
    }

    findAnagramsInArrayOfArrays(arrayOfArrays, numberOfRows, numberOfColumns);
    fclose(file);
}

int main(int argc, char *argv[]) {
    if (argc != 2) {
        printf("Invalid number of command line arguments.\n");
        return 0;
    }
    findAnagramPair(argv[1]);
    return 0;
}
