n = str(input())

x = (int(ord(n[0])) - int(ord('a'))) + 1
y = int(n[1])

moves = [(-2, -1), (-2, 1), (2, -1), (2, 1), (-1, -2), (-1, 2), (1, -2), (1, 2)]

cnt = 0

for move in moves:
    dx = x + move[0]
    dy = y + move[1]
    if dx < 1 or dy < 1 or dx > 8 or dy > 8:
        continue
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
