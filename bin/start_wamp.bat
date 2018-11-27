@echo off
REM Windows 下无效
REM set PHP_FCGI_CHILDREN=5

REM 每个进程处理的最大请求数，或设置为 Windows 环境变量
set PHP_FCGI_MAX_REQUESTS=1000

REM 设置bat执行命令的目录为wnmp根目录
set WNMP_DIR=%cd%

 
echo Starting apache...
RunHiddenConsole %WNMP_DIR%/apache2/bin/httpd.exe

echo Starting mysqld...
RunHiddenConsole %WNMP_DIR%/mysql/bin/mysqld.exe
