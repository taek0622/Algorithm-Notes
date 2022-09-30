# n에서 1뺌
# n이 k로 나누어질때는 n을 k로 나누는 것 가능
# n이 1이 될때 까지 1,또는 2번 최소 횟수

n, k = map(int, input().split())
cnt = 0

while n > 1:
    if n % k == 0:
        n /= k
    else:
        n -= 1
    cnt += 1

print(cnt)