
Jekyll 个人博客的运行环境的docker镜像

可自动预览最新的个人博客 [http://www.skycoop.net](http://www.skycoop.net),详情见项目:[https://github.com/SkyC00P/skyc00p.github.io](https://github.com/SkyC00P/skyc00p.github.io)

## 编译最新的博客 ##

1. CMD 或 PowerShell 里运行
```
docker build -t skyc00p/blog:latest .
```

2. 执行 **build.cmd** 脚本

上面两种方法都可以生成最新的docker镜像。`docker image ls` 可查看是否有**skyc00p/blog**镜像。


## 预览博客网站 ##

1. CMD 或 PowerShell 里运行
```
docker run --rm -p 127.0.0.1:80:4000 --name jekyll-skycoop skyc00p/blog
```

2. 在浏览器输入`localhost`即可

## 挂载本地博客源码到docker ##

1. 编辑`/bin/run.cmd`脚本的`_path`为博客源码目录
2. 运行`run.cmd`脚本，挂载目录到docker容器并启动到后台
3. 再在`run.cmd`按任意键退出，销毁docker容器，回收资源

在`run.cmd`脚本里运行期间，`_path`目录下的改动会同步到docker容器，重新访问`localhost`可同步变化。

## 查看docker相关信息 ##

执行`/bin/ls.cmd`