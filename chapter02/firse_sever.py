import time

from tornado import web
import tornado
# web.URLSpec


class MainHandler(web.RequestHandler):
    # 当客户端发起不同的http方法的时候， 只需要重载handler中的对应的方法即可
    async def get(self, *args, **kwargs):
        #　如果加入这个time.sleep则会阻塞
        time.sleep(5)
        self.write("hello world")


class MainHandler2(web.RequestHandler):
    # 当客户端发起不同的http方法的时候， 只需要重载handler中的对应的方法即可
    async def get(self, *args, **kwargs):
        self.write("hello world2")


if __name__ == "__main__":
    app = web.Application([
        ("/", MainHandler),
        ("/2/", MainHandler2)
    ], debug=True)
    app.listen(8888)
    tornado.ioloop.IOLoop.current().start()


"""
(1)
    两个简单的tornado路由函数，不过和django还是有区别的，django有比较规范的mtv模式，这里似乎没有严格的文件格式
(2)
    app = web.Application([
            ("/", MainHandler),
            ("/2/", MainHandler2)
        ], debug=True)
    
    这是真正的启动位置，("/", MainHandler)表示当访问根路由”/“的时候调用MainHandler这个hander去处理具体逻辑，相当于django
的视图函数，app.listen(8888)就是8888端口，tornado.ioloop.IOLoop.current().start()表示获取全局事件循环状态
并开始轮循

(3)不要在tornado中写阻塞代码，比如这里的time.sleep(5)
理由：
    根据事件循环的原理，当路由一中的函数time.sleep(5)的时候，此时还没有走到文件描述符(fd)向上传递，也就是全局的事件循环
目前为止认为路由一的部分还没有执行协程部分<self.write(hello world)>，因为协程是单线程的所以当你此时访问路由二的时候，
作为单线程的协程还没有从路由一中抽身出来，只有过了５秒走到了self.write(hello world)地方，文件描述符对这个函数做了标记，才
会继续轮循下一个协成函数.
    记住协成是建立在事件循环的基础上的，这样就很好理解为什么路由一中的time.sleep(5)阻塞而影响到路由二中的了。

"""