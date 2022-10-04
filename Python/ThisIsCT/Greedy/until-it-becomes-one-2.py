n, k = map(int, input().split())

cnt = 0

while True:
    divNum = (n // k) * k
    cnt += (n - divNum)
    n = divNum

    if n < k:
        break
    cnt += 1
    n //= k

cnt += (n - 1)

print(cnt)

'''
[Input Example]
25 5
[Output Example]
2
'''

'''
[조건]
n: 2 <= n <= 100000
k: 2 <= k <= 100000
n > k
[문제]
n이 1이 될 때까지 n이 k로 완전히 나누어 떨어지면 n을 k로 나누고, 아니면 n에서 1을 뺄 때, 과정을 수행한 총 횟수 구하기
'''
