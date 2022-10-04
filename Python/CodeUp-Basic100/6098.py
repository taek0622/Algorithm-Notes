array = []
for i in range(10):
    array.append(list(map(int, input().split())))

x, y = 1, 1

while True:
    if array[x][y] == 2:
        array[x][y] = 9
        break
    array[x][y] = 9
    if array[x][y+1] == 0 or array[x][y+1] == 2:
        y += 1
    elif array[x+1][y] == 0 or array[x+1][y] == 2:
        x += 1
    else:
        break

for i in range(len(array)):
    for j in range(len(array[i])):
        print(array[i][j], end=' ')
    print()
