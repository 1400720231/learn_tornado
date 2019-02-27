

def funca(n):
    for i in range(n):
        print("这里是funca-")
        yield i
    print("这里是funca-")


def funcb(n):
    for i in range(n):
        print("这里是funcb---{}")
        yield i
    print("这里是funcb---{}")

k = 10
while k>0:
    next(funca(n=5))
    next(funcb(n=5))
    k -= 1