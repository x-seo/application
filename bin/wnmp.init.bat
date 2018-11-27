@echo off
REM init wnmp

set WNMP_ROOT=D:\application\

rem Setting PHP PATH
set PHP_PATH=D:\application\php\php-5.4.45\
REM set PHP_PATH=D:\application\php\php-5.6.37\
REM set PHP_PATH=D:\application\php\php-7.2.12\

rem set MYSQL_PATH=D:\application\mysql\mysql-5.0.96-winx64\
set MYSQL_PATH=D:\application\mysql\mysql-5.5.24\
REM set MYSQL_PATH=D:\application\mysql\mysql-5.7.23-winx64\

set OPEN_PATH=D:\application\openresty\openresty-1.13.6.2\
set LOG_PATH=D:\application\logs\
rem set RunHiddenConsole=D:\application\bin\RunHiddenConsole.exe

set PATH=%PATH%;%WNMP_ROOT%bin\;%PHP_PATH%;%MYSQL_PATH%bin\;%OPEN_PATH%


rem SET REDIS_PATH=daff
rem echo %REDIS_PATH%