#include <stdio.h>
#include <stdlib.h>
#include "mytimer.h"

const int N = 100000;
const int minInf = 1 << 31;

int data[N][3][3];

void dataGenerator() {
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < 3; j++) {
            int t1, t2, t3;
            t1 = rand();
            t2 = rand();
            t3 = rand();
            if (t1 > t2) {
                int t4 = t1;
                t1 = t2;
                t2 = t4;
            }
            if (t3 < t1) {
                // t3 < t1 < t2
                data[i][j][0] = t3;
                data[i][j][1] = t1;
                data[i][j][2] = t2;
            }
            else if (t3 > t2){
                // t1 <= t2 < t3
                data[i][j][0] = t1;
                data[i][j][1] = t2;
                data[i][j][2] = t3;

            } else {
                // t1 <= t3 <= t2
                data[i][j][0] = t1;
                data[i][j][1] = t3;
                data[i][j][2] = t2;
            }
        }
    }
}

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

int main() {
    srand(0); 
    dataGenerator();

    MyTimer timer;
    timer.start();
    for (int j = 0; j < 10; j++) {
        for (int i = 0; i < N; i++) {
            getMaxInAscendingSequence(data[i], rand());
        }
    }
    timer.finish();
    printf("%.4f\n", timer.getTime());

    return 0;
}