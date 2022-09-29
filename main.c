#include <stdio.h>

#define iPlusPlus i = i + 1

int answer = 0;

int work(int n)
{
    int i, f;
    f = 1;
    for (i = 2; i <= n; iPlusPlus)
    {
        f = f * i;
    }
    return f;
}

int main()
{
    int n;
    scanf("%d", &n);
    answer = work(n); // Calculate the factorial of n
    printf("%d\n", answer);
}