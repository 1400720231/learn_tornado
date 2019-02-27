# 用socket的非阻塞形式来实现获取百度的html
import socket

import socket
client = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
# 设置为非阻塞的socket形式
client.setblocking(False)
host = "www.baidu.com"

try:
    client.connect((host, 80))  # 阻塞io， 意味着这个时候cpu是空闲的
except BlockingIOError as e:
    # 做一些其他事
    pass

while 1:
    try:
        client.send("GET {} HTTP/1.1\r\nHost:{}\r\nConnection:close\r\n\r\n".format("/", host).encode("utf8"))
        print("send success")
        break
    except OSError as e:
        pass

data = b""
while 1:
    try:
        d = client.recv(1024) # 阻塞直到有数据
    except BlockingIOError as e:
        continue
    if d:
        data += d
    else:
        break

data = data.decode("utf8")
print(data)

"""
利用try except的方式实现一个非阻塞状态下的逻辑操作，先用client.connect链接，不管结果，
用try捕捉，去执行其他的事情达到类似的异步操作，但是前提是记得设置client.setblocking(False)

缺点：
    每一次的操作都依赖try来捕捉错误，如果捕捉到了就说明还没有链接成功，没有捕捉到错误就执行except内容，
如果能获取某个socket状态就好了而不是靠try去捕捉错误的方式来达到执行except中的内容.(select pool epool)

selcet:
    通过监控描述符来报告socket的状态(可读描述符 可写描述符 异常描述符)，但是linux下一般监控最大数为1024
poll:
    相比较select突破了1024最大链接的限制，不过连接数大了性能还是会降低
epoll:
    没有描述符的限制，效率更高
"""