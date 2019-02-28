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
        name1= self.get_argument('name', 'pig1')
        name2= self.get_query_argument("name", "pig2")
        name3 = self.get_body_argument("name","pig3")
        print(name1,name2,name3)
        self.write(name1+name2+name3)

    async def post(self, *args, **kwargs):
        name1 = self.get_argument('name', 'pig1')
        name2 = self.get_query_argument("name", "pig2")
        try:
            name3 = self.get_body_argument("name", "pig3")
        except Exception as e:
            # 可以手动修改状态码
            self.set_status(500)

        print(name1, name2, name3)
        """
        可以联系使用write，因为是长连接会把每次的write内容缓存，最后一次性返回给客户端
        可以self.finish({"msg":"已经结束了哟"})来结束长连接
        """
        self.write(name1 + name2 + name3)
        self.write("可以连续使用write")

    def write_error(self, status_code, **kwargs):
        """
        可以根据状态码来定义返回的页面，也就是可以设置400 500页面
        """
        pass
    """
        get_query_argument get_query_arguments
            获取query string参数，在get() 和 post()方法中都能使用
            get_query_argument 没有获取到name的值就会报错，缺少参数，get_query_arguments则返回空列表
        get_body_argument get_body_arguments
            获取post 过来的data数据，在get()和post()中都能用
            get_body_argument 没有获取到name的值就会报错，缺少参数，get_body_arguments 则返回空列表
        get_argument get_arguments
            先从query string中获取参数再从data中获取参数，使用get_argument是如果存在同样的参数，
        则最会的结果会被data中的参数替代，比如/?name=panda data={"name":"panda2"}那么获取到的
        值就是name=panda2, 使用get_arguments就会避免这样的问题，因为他们吧参数接收程列表name=['panda','panda2']
        
        如果穿过来的值不是data字典的形式传过来而是json的格式，比如requests.post(url,json={"name":"panda"})
        那么接收到的json={"name":"panda"}的值在self.request.body中,而且是bytes类型的数据，所以self.requets.body.decode("utf-8")
        
        文档传送门：http://www.tornadoweb.org/en/stable/_modules/tornado/web.html#RequestHandler.initialize
    """


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
类似django的namespace,name,官网文档没有用tornado.web.URLSpec也可以和上面一样传所有参数，那么tornado.web.URLSpec的
意义在哪里，文档传送门:http://www.tornadoweb.org/en/stable/guide/structure.html#handling-request-input


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
    3.获取.../?name=panda问号后面的值: get函数下，self.get_argument，get_query_argument
    4.获取post过来的值:post函数下，self.get_argument get_body_argument
    5.初始化传参：重载initialize函数
    6.redirect重定向
    7.self.write_error 可以根据状态码配置400 500页面
    8.self.finish 提前停止长连接
    9.self.write +self.write两次write，因为长连接可以缓存数据，最后一次返回
    10.self.set_statue_code 修改默认返回状态码
"""