array = []

for i in range(19):
    array.append(list(map(int, input().split())))

num = int(input())

for i in range(num):
    x, y = map(int, input().split())
    for j in range(19):
        if array[x-1][j] == 0:
            array[x-1][j] = 1
        else:
            array[x-1][j] = 0
        if array[j][y-1] == 0:
            array[j][y-1] = 1
        else:
            array[j][y-1] = 0

for i in range(len(array)):
    for j in range(len(array[i])):
        print(array[i][j], end=' ')
    print()
