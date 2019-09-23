# AYLogManager

AYLogManager是一款能重定向log的一个框架，集成了本地实时log的打印，通过局域网连接

实时展示打印的log，可打印NSLog，printf(标准输出)，fprintf( stderr, 标准错误输出 )

支持pod

pod 'AYLogManager'

使用：

1.开启本地服务器

[[AYHttpServerManager sharedInstance] startupServer];

2.查看手机IP

NSString *localIP = [AYGetLocalIpAddress getIPAddress:YES];

3.通过浏览器打开手机的IP，并且保证在同一局域网内。
