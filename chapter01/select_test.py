# 事件循环的实现
import socket
# EVENT_WRITE 可写时间； EVENT_READ可读事件
from selectors import DefaultSelector, EVENT_WRITE, EVENT_READ
# 实例化一个selector， windowns下会使用select，linux会选择epool去监控描述符的状态
selector = DefaultSelector()


class Fetcher:
    # 请求函数，每次执行一次就是发起一个请求
    def get_url(self, url):
        self.client = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        # 注意这里设置了非阻塞！！！
        self.client.setblocking(False)
        # bytes类型数据
        self.data = b""
        self.host = "www.baidu.com"

        try:
            self.client.connect((self.host, 80))  # 阻塞io，意味着这个时候cpu是空闲的
        except BlockingIOError as e:
            # 做一些其他事
            pass
        #  在nonblockio_test.py中我们用的是try except的方式来监听当前请求是否返回
        #  但是这里采用register的方式对每个请监听代替了try except
        selector.register(self.client.fileno(), EVENT_WRITE, self.connected)

    #  selector.register回调，表示现在前面发送的某个socket请求可以进行EVENT_WRITE操作了
    def connected(self, key):
        # 前面传递的EVENT_WRITE事件链接我捕捉了，一顿操作后我得把它放掉不用再监听了
        selector.unregister(key.fd)
        self.client.send("GET {} HTTP/1.1\r\nHost:{}\r\nConnection:close\r\n\r\n".format("/", self.host).encode("utf8"))
        selector.register(self.client.fileno(), EVENT_READ, self.readble)

    #  selector.register回调，表示现在前面发送的某个socket请求可以进行EVENT_READ操作了
    def readble(self, key):
        d = self.client.recv(1024)
        if d:
            self.data += d
        else:
            # 前面传递的EVENT_READ事件链接我捕捉了，一顿操作后我得把它放掉不用再监听了
            selector.unregister(key.fd)
            data = self.data.decode("utf8")
            print(data)

"""
如果我们实例化a = Fetcher() 
            a.get_url(),从生命周期的角度讲这个函数执行到
            selector.register(self.client.fileno(), EVENT_WRITE, self.connected)就结束了，
他不能主动调用，self.connected()去执行，如果强行可以的话应该搞成闭包延迟绑定把函数返回再执行。不过这里要说的是
事件循环的概念，它可以配合selector = DefaultSelector()这一行代码来做事件循环来实现register
函数中的执行

"""




"""
事件循环是异步io的核心重点
"""
def loop_forever():
    #事件循环
    while 1:

        ready = selector.select()
        for key, mask in ready:
            call_back = key.data
            call_back(key)


if __name__ == "__main__":
    fetcher = Fetcher()
    url = "http://www.baidu.com"
    fetcher.get_url(url)
    loop_forever()

"""
            其实重点在selector，因为这个selector是在类Fetcher之前定义的一个实例对象
        ready = selector.select()获取第一次可写或者可读的描述符对象(即EVENT_WRITE，EVENT_READ)
        事件和它的回调函数，然后for循环去一级一级往下执行可能的EVENT_WRITE，EVENT_READ事件，再执行对应的
        回调函数，到最后执行晚没有EVENT_WRITE，EVENT_READ事件了就执行一个什么鬼函数，我也看不懂源码里面的那个
        很奇怪的函数。。
            总的来讲我理解成ready = selector.select()这句话保存了每一个请求socket事件的描述符(fd)以及
        他们所对应的回调函数(key.data),fetcher.get_url(url)执行完后，然后我们用事件循环去迭代执行这些状态满足要求socket的，
        对应的描述符，函数。直到全部执行完，也就是源码中的_write=[], _reader=[],大概是这样吧。。。
        
        
        这也是tornado异步单线程的底层原理
"""

