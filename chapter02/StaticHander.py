from tornado.web import StaticFileHandler, RedirectHandler

# 1. RedirectHandler
# 1. 301是永久重定向， 302是临时重定向，获取用户个人信息， http://www.baidu.com https

# StaticFileHandler
import time

from tornado import web
import tornado
web.URLSpec


class MainHandler(web.RequestHandler):
    # 当客户端发起不同的http方法的时候， 只需要重载handler中的对应的方法即可
    async def get(self, *args, **kwargs):
        time.sleep(5)
        self.write("hello world")


class MainHandler2(web.RequestHandler):
    # 当客户端发起不同的http方法的时候， 只需要重载handler中的对应的方法即可
    async def get(self, *args, **kwargs):
        self.write("hello world2")


import os,sys

BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
path = os.path.join(BASE_DIR, "chapter02/static/iu.jpg")

settings = {
    "static_path": path,
    "static_url_prefix": "/static2/"
}


if __name__ == "__main__":
    app = web.Application([
        ("/", MainHandler),
        ("/2/", RedirectHandler, {"url":"/"}),
        ("/static3/(.*)", StaticFileHandler, {"path": path})
    ], debug=True, **settings)
    app.listen(8000)
    tornado.ioloop.IOLoop.current().start()

# self.redirect方法和RedirectHandler方法区别是什么
    """
        #redirect是临时重定向，RedirectHandler是永久重定向
        在settings中配置
            settings = {
                "static_path": path,
                "static_url_prefix": "/static2/"
            }
        可以访问静态文件，也可以配置路由("/static3/(.*)", StaticFileHandler, {"path": path})
        但是问题是源码中这两种方式代理静态文件的handler 都是StaticFileHandler,源码如下：
        
        if self.settings.get("static_path"):
            path = self.settings["static_path"]
            handlers = list(handlers or [])
            static_url_prefix = settings.get("static_url_prefix",
                                             "/static/")
            static_handler_class = settings.get("static_handler_class",
                                                StaticFileHandler) # 在这里！！！！
            static_handler_args = settings.get("static_handler_args", {})
            static_handler_args['path'] = path
            for pattern in [re.escape(static_url_prefix) + r"(.*)",
                            r"/(favicon\.ico)", r"/(robots\.txt)"]:
                handlers.insert(0, (pattern, static_handler_class,
                                    static_handler_args))

    """
