n = str(input())

numlist = [1, 2, 3, 4, 5, 6, 7, 8]
alphalist = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h']

nx = n[0]
ny = n[1]

cnt = 0

for num in range(len(alphalist)):
    if nx == alphalist[num]:
        x = numlist[num]

y = int(ny)

for i in range(4):
    if i == 0:
        dy = y - 2
    elif i == 1:
        dy = y - 1
    elif i == 2:
        dy = y + 2
    else:
        dy = y + 1
    for j in range(2):
        if i % 2 == 0:
            if j == 0:
                dx = x - 1
            else:
                dx = x + 1
        else:
            if j == 0:
                dx = x - 2
            else:
                dx = x + 2
        if dx < 1 or dy < 1 or dx > 8 or dy > 8:
            continue
        else:
            cnt += 1

print(cnt)

'''
[Input Example 1]
a1
[Output Example 1]
2
[Input Example 2]
c2
[Output Example 2]
6
'''

'''
[조건]
첫째 줄에 8 x 8 좌표 평면상에 현재 나이트가 위치한 곳의 좌표를 두 문자로 구성된 문자열이 입력된다.
입력 문자는 a1 처럼 열과 행으로 이뤄진다.
[문제]
첫째 줄에 나이트가 이동할 수 있는 경우의 수를 출력
'''
