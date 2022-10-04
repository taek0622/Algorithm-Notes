n = input()
data = list(map(str, input().split()))
x = 1
y = 1

for i in range(len(data)):
    if data[i] == 'L':
        if y != 1:
            y -= 1
    elif data[i] == 'R':
        if y != n:
            y += 1
    elif data[i] == 'U':
        if x != 1:
            x -= 1
    elif data[i] == 'D':
        if x != n:
            x += 1
    else:
        print("Error!")
        break
    if i == (len(data)-1):
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
