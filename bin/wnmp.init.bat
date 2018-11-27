@echo off
REM init wnmp

set WNMP_ROOT=D:\application\
set PHP_PATH=D:\application\php\php-5.4.45\
set MYSQL_PATH=D:\application\mysql\mysql-5.5.24\
set OPEN_PATH=D:\application\openresty\openresty-1.13.6.2\
set LOG_PATH=D:\application\logs\
rem set RunHiddenConsole=D:\application\bin\RunHiddenConsole.exe

set PATH=%PATH%;%WNMP_ROOT%bin\;%PHP_PATH%;%MYSQL_PATH%bin\;


rem SET REDIS_PATH=daff
rem echo %REDIS_PATH%

