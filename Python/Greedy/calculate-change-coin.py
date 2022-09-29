def changeCoin(n : int):
    if n < 0:
        return "Error!"
    
    coin = [500, 100, 50, 10]
    cnt = 0
    change = dict()

    for i in coin:
        change[i] = n // i
        cnt += change[i]
        n %= i
        print(str(i) + ": " + str(change[i]) + "개")

    print("총 합: " + str(cnt) + "개")
        
'''
[Input Example]
changeCoin(1260)
[Output Example]
500: 2개
100: 2개
50: 1개
10: 1개
총 합: 6
'''
