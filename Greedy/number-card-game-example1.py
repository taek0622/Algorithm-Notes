n, m = map(int, input().split())
data = list()

for i in range(n):
    inputData = list(map(int, input().split()))
    inputData.sort()
    data.append(inputData[0])

data.sort(reverse=True)

res = data[0]

print(res)

'''
[Input Example 1]
3 3
3 1 2
4 1 4
2 2 2
[Output Example 1]
2
[Input Example 2]
2 4
7 3 1 8
3 3 3 4
[Output Example 2]
3
'''

'''
[조건]
n: 행의 개수, 1 <= n <= 100
m: 열의 개수, 1 <= m <= 100
배열의 각 요소는 1 이상 10000 이하의 자연수
[문제]
N x M 형태로 놓인 숫자가 쓰인 카드에서 각 행의 가장 낮은 숫자의 카드를 뽑아 그 중 가장 높은 숫자 뽑기
'''
