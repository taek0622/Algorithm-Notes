n, m, k = map(int, input().split())
num = list(map(int, input().split()))

num.sort()

max1 = num[n-1]
max2 = num[n-2]

sum = 0

for i in range(m):
    if ((i+1) % (k+1)) == 0:
        sum += max2
    else:
        sum += max1

print(sum)

'''
[Input Example]
5 8 3
2 4 5 4 6
[Output Example]
46
'''

'''
[조건]
n: 배열의 길이, 2 <= n <= 1000
m: 더하는 횟수, 1 <= m <= 10000
k: 같은 수의 연속 가능 횟수, 1 <= k <= 10000
[문제]
주어진 수를 m번 더해서 가장 큰 수 만들기
'''
