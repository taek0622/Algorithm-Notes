num = int(input())
area = [[0] * 19 for i in range(19)]

for i in range(num):
    x, y = map(int, input().split())
    area[x-1][y-1] = 1

for i in range(len(area)):
    for j in range(len(area[i])):
        print(area[i][j], end=' ')
    print()
