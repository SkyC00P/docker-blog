@echo off
echo -------- Image --------------
docker image ls
echo.

echo -------- Container --------------
docker container ls --all
echo.

echo -------- Volume --------------
docker volume ls
echo.
pause