n = int(input())

limit = (n+1) * 3600
cnt = 0

for i in range(limit):
    h = i // 3600
    m = (i % 3600) // 60
    s = (i % 3600) % 60

    if '3' in str(h) + str(m) + str(s):
        cnt += 1

print(cnt)

'''
[Input Example]
5
[Output Example]
11475
'''

'''
[조건]
n: 0 <= n <= 23
[문제]
정수 n이 입력되면 00시 00분 00초부터 n시 59분 59초까지의 모든 시각 중 3이 하나라도 포함되는 모든 경우의 수 구하기
'''
