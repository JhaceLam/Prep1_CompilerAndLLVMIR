#include <stdio.h>

const int minInf = 1 << 31;

int getMaxInAscendingSequence(int a[][3], int threshold) {
    /*
        a[row][3]: 
        A two-dimensional array,
        each row of it is sorted in ascending order.
    */
    // Find the max value, which is less than or equal to threshold

    int maxVal = minInf;
    for (int i = 0; i < 3; i++) {
        int val = a[i][0];
        if (val > threshold)
            continue;

        int j = 0;
        while (j < 3) {
            val = a[i][j];
            if (val > threshold)
                break;
            if (val > maxVal)
                maxVal = val;
            j++;
        }
    }

    return maxVal;
}

void printFloat(float val) {
    printf("%lf\n", val);
    return;
}

int main() {
    int array[3][3] = { {5, 0, 0}, {-100, 123, 400}, {-3, 90.8, 123} };
    int answer = getMaxInAscendingSequence(array, 100);
    printFloat(answer);
    return 0;
}