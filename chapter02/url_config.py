import time

from tornado import web
import tornado


# web.URLSpec


class MainHandler(web.RequestHandler):
    # 当客户端发起不同的http方法的时候， 只需要重载handler中的对应的方法即可
    async def get(self, *args, **kwargs):

        # self.write("hello world")
        # 当访问“/”根路由的时候，重定向到name="people_num"的路由，并且带上参数666
        # 和django的HttpRedierect+reverse是一样的道理
        self.redirect(self.reverse_url("people_num", 666))



class MainHandler2(web.RequestHandler):
    async def get(self, id, *args, **kwargs):
        """
            当路由中含有变量参数的时候，如果hander捕捉到，他会被*args接收，可以在函数中
        直接使用.比如("/people/(\d+)/", MainHandler2)，当访问/people/6/的时候数字６
        会被解包映射在args中，现在打印的args的话结果是这样的：(6,),是一个元组.总的来说和
        python的函数定义是差不多的。再比如如果你这样：
            def get(self,id, *args, **kwargs):
                pass
            在访问/people/6/的时候数字６会直接给形参id,这很pythonic..
            如果你访问/people/6/7/那么数字６会被赋值给形参id,数字７会被解包在args中(前提是你得像MainHandler3对应的路由那样配置)
        """

        print(id)
        print(args)
        print(kwargs)
        self.write("hello world:{}".format(id))


class MainHandler3(web.RequestHandler):
    async def get(self,id, *args, **kwargs):
        pass


class MainHandler4(web.RequestHandler):
    """
    需要注意的是这里的name,age的名字必须和my_dict中的key对应上，而不是像__init__中的初始化随便取名字
    """
    def initialize(self,name,age):
        self.name = name
        self.age = age
    async def get(self, *args, **kwargs):
        self.write(self.name+str(self.age))


class MainHandler5(web.RequestHandler):
    """
    因为在路由中配置了出入的动态参数名字为name: (?P<name>\w+),所以在get函数中如果只有声明name参数才
    能获取到,而且声明非name形参会报错，也就是如果采取这种方式，只能传入name形参，因为不不管name形参传不传
    *args中都没有接受到，只能name单独接受
    """
    async def get(self, name,*args, **kwargs):
        # 获取路由?后面带的参数，类似django的request.GET.get('greeting', 'Hello')
        greeting = self.get_argument('greeting', 'Hello')
        print(name)
        print(greeting)
        print(args)
    """
    用同样的get_argument函数在post中可以接受用户post过来的参数，检测代码如下(当然也可以postman)：
    
        import requests
        url = "http://127.0.0.1:8888/hander5/xiongyao/"
        data = {"name":"panda","passwd":"passwd"}
        res = requests.post(url=url, data=data)
        print(res.status_code)
        print(res.text)    
    """
    async def post(self, *args, **kwargs):
        name = self.get_argument('name', 'pig')
        passwd = self.get_argument("passwd","pigpwd")
        self.write(name+passwd)


my_dict = {"name":"panda","age":22}


urls = [
    tornado.web.URLSpec("/", MainHandler, name="index"),
    tornado.web.URLSpec("/people/(\d+)/?", MainHandler2,name="people_num"), # /people/66/
    tornado.web.URLSpec("/people/(\d+)/(\d+)/?", MainHandler3), # /people/66/77/
    tornado.web.URLSpec("/hander5/(?P<name>\w+)/?", MainHandler5), # /people/panda/
    tornado.web.URLSpec("/initialize/?", MainHandler4, my_dict), # /people/panda/
]

"""
    路由后面问好的意义是像django一样当访问的路由后面忘记了末尾的“/”时候不会自动不全，但是也能正常访问，不然tornado会报错
当使用tornado.web.URLSpec的时候才可以用name参数，类似django的namespace,name


在路由4中的my_dict参数的来由如下：
class URLSpec(Rule):
    def __init__(self, pattern, handler, kwargs=None, name=None):
通过URLSpec传入后，在web.RequestHandler的initialize中获得，源码解释如下：

    def initialize(self):
        Hook for subclass initialization. Called for each request.

        A dictionary passed as the third argument of a url spec will be
        supplied as keyword arguments to initialize().
        举例：
        Example::

            class ProfileHandler(RequestHandler):
                def initialize(self, database):
                    self.database = database

                def get(self, username):
                    ...

            app = Application([
                (r'/user/(.*)', ProfileHandler, dict(database=database)),
                ])
        
        pass


"""


if __name__ == "__main__":
    app = web.Application(urls, debug=False)
    app.listen(8888)
    tornado.ioloop.IOLoop.current().start()

"""
知识点：
    1.url配置： tornado.web.URLSpec("/hander5/", MainHandler5)
    2.url传参： tornado.web.URLSpec("/hander5/(?P<name>\w+)/?" ,MainHandler5)
    3.获取.../?name=panda问号后面的值: get函数下，self.get_argument
    4.获取post过来的值:post函数下，self.get_argument
    5.初始化传参：重载initialize函数
"""