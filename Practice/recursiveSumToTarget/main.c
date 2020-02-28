#include <stdio.h>

void sumToTarget(int *nums, int *result, int size, int target, int sum) {
    if (*nums) {
        if (size == 5 && sum == target) {
            printf("%d + %d + %d + %d + %d\n", result[0], result[1], result[2], result[3], result[4]);
        }
        return;
    }
    sumToTarget(nums + 1, result, size, target, sum);
    result[size] = *nums;
    sumToTarget(nums + 1, result, size + 1, target, sum + *nums);
}

int main() {
    int nums[10] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
    int result[10];
    int target = 18;

    sumToTarget(nums, result, 0, target, 0);
    return 0;
}
