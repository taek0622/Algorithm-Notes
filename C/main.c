// 문제: https://www.acmicpc.net/problem/15596

#include <stdio.h>

// 메모리: 12832KB, 시간: 4ms, 코드 길이: 142B
long long sum(int *a, int n) {
    long long ans = 0;

    for (int num = 0; num < n; num++) {
        ans += a[num];
    }

    return ans;
}

int main() {
    printf("Hello World!");
    return 0;
}
