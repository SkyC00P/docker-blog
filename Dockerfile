# 编译参数
# Docker version 18.06.0-ce, build 0ffa825
# 编译系统 : Windows10 Pro
# 基础镜像信息
FROM jekyll/minimal:3.8.3

# 维护者信息
MAINTAINER skycoop <skycoop@163.com>

# 镜像操作指令 - 下载博客
RUN\
 git clone --depth 1 --no-tags https://github.com/SkyC00P/skyc00p.github.io.git /home/jekyll/ &&\
 cd /home/jekyll/ && gem install jekyll-paginate

WORKDIR /home/jekyll/
EXPOSE 4000 80

# 容器启动指令
CMD ["jekyll", "s", "-w", "--force_polling"]