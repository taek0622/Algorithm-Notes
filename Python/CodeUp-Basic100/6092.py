num = int(input())
array = list(map(int, input().split()))
res = [0] * 23

for i in range(num):
    res[array[i] - 1] += 1

for i in range(len(res)):
    print(res[i], end = ' ')
