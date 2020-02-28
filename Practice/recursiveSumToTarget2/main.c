#include <stdio.h>

/*Given an array of integers, nums and a target value T, find the
number of ways that you can add and subtract the values in nums to add up to T.*/

void sumToTarget(int *nums, int *result, int size, int target, int sum, int *numberOfWays) {
    if (!*nums) {
        if (sum == target) {
            printf("%d + %d + %d + %d + %d\n", result[0], result[1], result[2], result[3], result[4]);
            *numberOfWays += 1;
        }
        return;
    }
    result[size] = *nums;
    sumToTarget(nums + 1, result, size + 1, target, sum + *nums, numberOfWays);
    result[size] = *nums * -1;
    sumToTarget(nums + 1, result, size + 1, target, sum - *nums, numberOfWays);
}

int main() {
    int nums[5] = {1, 1, 1, 1, 1};
    int result[5];
    int target = 3;
    int numberOfWays = 0;

    sumToTarget(nums, result, 0, target, 0, &numberOfWays);
    printf("%d", numberOfWays);
    return 0;
}
