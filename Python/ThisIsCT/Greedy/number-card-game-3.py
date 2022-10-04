n, m = map(int, input().split())
result = 0

for i in range(n):
    array = list(map(int, input().split()))
    array_min = min(array)
    result = max(result, array_min)

print(result)