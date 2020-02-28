#include <stdio.h>

void printar(int aoi[5]){
    for (int i = 0; i < 5; i++) {
        printf("%d", aoi[i]);
    }
}

int func(int aoi[5], int size) {
    int half = size / 2;
    int temp;
    for (int i = 0; i < half; i++) {
        temp = aoi[i];
        aoi[i] = aoi[size - i - 1];
        aoi[size - i - 1] = temp;
    }
}

int main() {
    int size = 5;
    int aoi[5] = {1, 2, 3, 4, 5};
    printar(aoi);
    func(aoi, size);
    printar(aoi);
}