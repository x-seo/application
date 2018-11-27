@echo off
REM init wnmp

set WNMP_ROOT=D:\application\
set PHP_PATH=D:\application\php\php-5.4.45\
set MYSQL_PATH=D:\application\mysql\mysql-5.5.24\
set OPEN_PATH=D:\application\openresty\openresty-1.13.6.2\
set LOG_PATH=D:\application\logs\
set PATH=%PATH%;%WNMP_ROOT%bin\;%PHP_PATH%;%MYSQL_PATH%bin\;

echo Stopping nginx...  
taskkill /F /IM nginx.exe > nul
echo Stopping PHP FastCGI...
taskkill /F /IM php-cgi.exe > nul
echo Stopping MySQL...
taskkill /F /IM mysqld.exe > nul


echo Starting PHP FastCGI...
RunHiddenConsole %PHP_PATH%\php-cgi.exe -b 127.0.0.1:9000 -c %PHP_PATH%\php.ini
 
rem echo Starting nginx...
rem RunHiddenConsole %WNMP_DIR%/nginx/nginx.exe -p %WNMP_DIR%/nginx

echo Starting openresty...
RunHiddenConsole %OPEN_PATH%\nginx.exe -p %OPEN_PATH%

echo Starting mysqld...
RunHiddenConsole %MYSQL_PATH%\bin\mysqld.exe --basedir=%MYSQL_PATH% --log-error=%LOG_PATH%mysql.log --datadir=%MYSQL_PATH%data
rem RunHiddenConsole %MYSQL_PATH%\bin\mysqld.exe

tasklist /fi "imagename eq nginx.exe"
tasklist /fi "imagename eq php-cgi.exe"
tasklist /fi "imagename eq mysqld.exe"

pause