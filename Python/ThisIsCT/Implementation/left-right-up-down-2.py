n = int(input())
data = list(map(str, input().split()))
x, y = 1, 1

dx = [0, 0, -1, 1]
dy = [-1, 1, 0, 0]
move = ['L', 'R', 'U', 'D']

for plan in data:
    for i in range(len(move)):
        if plan == move[i]:
            nx = x + dx[i]
            ny = y + dy[i]           
    if nx < 1 or ny < 1 or nx > n or ny > n:
        continue
    x, y = nx, ny

print(x, y)

'''
[Input Example]
5
R R R U D D
[Output Example]
3 4
'''

'''
[조건]
n: 공간의 크기, 1 <= n <= 100
이동 내용: 1 <= 이동 횟수 <= 100
[문제]
첫번 째 줄에 공간의 크기, 둘째 줄에 이동할 내용이 주어지고, (1, 1)의 좌표에서 출발할 때 도착할 지점의 좌표 (x, y)를 공백으로 구분하여 출력
'''
