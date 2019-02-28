from tornado import httpclient

# ------------------------------------(一)--------------------------------------------
#(1) 同步请求和requests没区别
"""
http_client = httpclient.AsyncHTTPClient()
try:
    response = http_client.fetch("http://www.tornadoweb.org/en/stable/")
    print(response.body.decode("utf8"))
except httpclient.HTTPError as e:
    # HTTPError is raised for non-200 responses; the response
    # can be found in e.response.
    print("Error: " + str(e))
except Exception as e:
    # Other errors are possible, such as IOError.
    print("Error: " + str(e))
http_client.close()
"""


# --------------------------------------(二)------------------------------------------
# (2) async　+ await定义协程,但是这是python3语法


# 协程定义，执行到await的时候就挺住去执行await后面的内容了，直到返回内容给response,
# 才继续执行下面的内容
async def f():
    http_client = httpclient.AsyncHTTPClient()
    try:
        response = await http_client.fetch("http://www.tornadoweb.org/en/stable/")
    except Exception as e:
        print("Error: %s" % e)
    else:
        print(response.body.decode("utf8"))

# 协程和事件循环连用才行
if __name__ == "__main__":

    """
    (1)tornado实现事件循环
    import tornado
    # 全局ioloop实现循环，典型的单例模式
    io_loop = tornado.ioloop.IOLoop.current()
    # run_sync方法可以在运行完某个协程之后停止事件循环
    # 前面我们自己写的是while True 死循环
    io_loop.run_sync(f)
    """

    # (2)asyncio实现事件循环，但是很明显这是python3的语法
    
    # 2.1 用asyncio实现forever loop
    import asyncio
    asyncio.ensure_future(f())
    asyncio.get_event_loop().run_forever()
    """
    # 2.2 用asyncio实现和方法一一样的协程执行完后亭子事件循环
    import asyncio
    asyncio.get_event_loop().run_until_complete(f())
    """

# ----------------------------------------(三)----------------------------------------
"""
上面的协成的定义是基于python3语法的，事件循环又用tornado实现也有用asyncio模块实现的，
下面在python2环境下实现协程的定义和事件循环的实现
"""
# encoding:utf-8
import tornado
from tornado.gen import coroutine
from tornado import httpclient


# 装饰器+yield实现python2环境下的协程的实现
@coroutine
def f():
    http_client = httpclient.AsyncHTTPClient()
    try:
        response = yield http_client.fetch("http://www.tornadoweb.org/en/stable/")
    except Exception as e:
        print("Error: %s" % e)
    else:
        print(response.body.decode("utf8"))


# 依然用tornado实现事件循环调用
if __name__ == '__main__':
    io_loop = tornado.ioloop.IOLoop.current()
    # run_sync方法可以在运行完某个协程之后停止事件循环
    io_loop.run_sync(f)