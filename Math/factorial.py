def factorial(n):
    if n <= 0:
        return "Error!"
    elif n != 1:
        return n * factorial(n-1)
    else:
        return 1


'''
[Input Example]
factorial(5)
factorial(3)
factorial(1)
factorial(0)
[Output Example]
120
6
1
'Error!'
'''
