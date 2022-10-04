n, m, k = map(int, input().split())
array = list(map(int, input().split()))

array.sort(reverse=True)

result = 0
cnt = 0

for i in range(m):
    if cnt == k:
        result += array[1]
        cnt = 0
    else:
        result += array[0]
        cnt += 1

print(result)

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
