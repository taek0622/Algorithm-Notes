// 문제: https://www.acmicpc.net/problem/15596

#include <stdio.h>

long long sum(int *a, int n) {
    long long ans = 0;

    for (int num = 0; num < n; num++) {
        ans += a[num];
    }

    return ans;
}

int main() {
    int a[6] = {1,3,5,6,3,1};
    int n = 6;
    int ans = sum(a, n);
    printf("%d", ans);
}
