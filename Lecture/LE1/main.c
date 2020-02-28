#include <stdio.h>
#include <stdbool.h>

struct date {
    int year;
    int month;
    int day;
};

bool firstAfterSecond(struct date first, struct date second) {
    if (first.year > second.year) {
        return true;
    }
    if (first.year == second.year && first.month > second.month) {
        return true;
    }
    if (first.year == second.year && first.month == second.month && first.day > second.day) {
        return true;
    }
    return false;
}

void helper(struct date first, struct date second) {
    int yearDiff = first.year - second.year;
    int monthDiff = first.month - second.month;
    int dayDiff = first.day - second.day;
    if (dayDiff < 0) {
        dayDiff += 30;
        monthDiff -= 1;
    }
    if (monthDiff < 0) {
        monthDiff += 12;
        yearDiff -= 1;
    }

    printf("The dates are %d years, %d months, and %d days apart.", yearDiff, monthDiff, dayDiff);
}

void dateDiff(struct date first, struct date second) {
    if (firstAfterSecond(first, second)) {
        return helper(first, second);
    } else {
        return helper(second, first);
    }
}

int main() {
    struct date firstDate = {12, 1, 1};
    struct date secondDate = {11, 11, 11};
    dateDiff(firstDate, secondDate);
    return 0;
}
