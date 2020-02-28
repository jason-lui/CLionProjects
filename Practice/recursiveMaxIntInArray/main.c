#include <stdio.h>

/*Write a program in C to get the largest element of an array using recursion.*/

int largest(int *nums, int max) {
    if (!*nums) {
        return max;
    }

    if (*nums > max) {
        return largest(nums + 1, *nums);
    }

    return largest(nums + 1, max);

}

int main() {
    int nums[5] = {1, 3, 2, 4, 1};
    int result;

    result = largest(nums, 0);
    printf("Max: %d", result);
    return 0;
}
