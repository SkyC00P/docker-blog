@echo off
@chcp 65001 >nul

set "_path=D:\idea_src_工程\skyc00p.github.io"
set "_dst=/home/jekyll"

docker run --rm -p 127.0.0.1:80:4000 --name jekyll-skycoop --volume="%_path%:%_dst%" -d skyc00p/blog
pause

docker container stop jekyll-skycoop
