# encoding:utf-8
# 协程
"""
可以被暂定或者又其他协成代替的函数
"""
from tornado.gen import coroutine

# python2语法
@coroutine
def test():
    yield 44


# python3语法 await只能在async下面使用
async def main():
    await test()




"""
为什么说yield可以实现协程呢，是因为每次执行到yield的时候python解释器会在那里返回结果再继续前进(python的生成器原理)
如果我们把返回结果这个步骤换成去执行其他函数,然后接着继续执行剩下的代码，这样以来不就是协程了吗 
"""
from collections import deque

def sayHello(n):
    while n > 0:
        print("hello~", n)
        yield n
        n -= 1
    print('say hello')


def sayHi(n):
    x = 0
    while x < n:
        print('hi~', x)
        yield
        x += 1
    print("say hi")


# 使用yield语句，实现简单任务调度器


class TaskScheduler(object):
    def __init__(self):
        self._task_queue = deque()

    def new_task(self, task):
        '''
        向调度队列添加新的任务
        '''
        self._task_queue.append(task)

    def run(self):
        '''
        不断运行，直到队列中没有任务
        '''
        while self._task_queue:
            task = self._task_queue.popleft()
            try:
                next(task)
                self._task_queue.append(task)
            except StopIteration:

                # 生成器结束

                pass

sched = TaskScheduler()
sched.new_task(sayHello(10))
sched.new_task(sayHi(15))
sched.run()

"""
结果大概是这样，意味着函数sayHello和函数sayHi的确在交互执行
    hello~ 10
    hi~ 0
    hello~ 9
    hi~ 1
    hello~ 8
    hi~ 2
    hello~ 7
    hi~ 3
    hello~ 6
    hi~ 4
    hello~ 5
    hi~ 5
    hello~ 4
    hi~ 6
    hello~ 3
    hi~ 7
    hello~ 2
    hi~ 8
    hello~ 1
    hi~ 9
    say hello
    hi~ 10
    hi~ 11
    hi~ 12
    hi~ 13
    hi~ 14
    say hi
"""

#--------------------------------------------------------
# 函数版本
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

# 结果大概是这样
"""
这里是funca-
这里是funcb---{}
这里是funca-
这里是funcb---{}
这里是funca-
这里是funcb---{}
这里是funca-
这里是funcb---{}
这里是funca-
这里是funcb---{}
这里是funca-
这里是funcb---{}
这里是funca-
这里是funcb---{}
这里是funca-
这里是funcb---{}
这里是funca-
这里是funcb---{}
这里是funca-
这里是funcb---{}

"""