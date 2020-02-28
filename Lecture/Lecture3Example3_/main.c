#include <stdio.h>
#include <string.h>

void reverseString(char *input, char *reverse) {
    if (strlen(input) == 0 ) {
        return;
    }
    reverse[strlen(input) - 1] = input[0];
    input++;
    return reverseString(input, reverse);
}

int gcd(int p, int q) {
    if (p > q) {
        return gcd(q, p);
    }
    if (p % q == 0) {

    }

}


int main() {
//    char gg[20];
//    reverseString("bcit", gg);
//    printf("%s", gg);
    int res = gcd(10, 4);
    printf("%i\n", res);
    int res2 = gcd(10, 5);
    printf("%i\n", res2);
    int res3 = gcd(17, 10);
    printf("%i\n", res3);
    return 0;
}
