h, w = map(int, input().split())
res = [[0 for i in range(w)] for i in range(h)]

num = int(input())

for i in range(num):
    l, d, x, y = map(int, input().split())
    for j in range(l):
        if d == 0:
            res[x-1][y+j-1] = 1
        else:
            res[x+j-1][y-1] = 1

for i in range(len(res)):
    for j in range(len(res[i])):
        print(res[i][j], end=' ')
    print()

