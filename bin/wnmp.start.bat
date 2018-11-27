@echo off

call wnmp.init.bat

echo Starting PHP FastCGI...
RunHiddenConsole %PHP_PATH%\php-cgi.exe -b 127.0.0.1:9000 -c %PHP_PATH%\php.ini
 
rem echo Starting nginx...
rem RunHiddenConsole %WNMP_DIR%/nginx/nginx.exe -p %WNMP_DIR%/nginx

echo Starting openresty...
RunHiddenConsole %OPEN_PATH%\nginx.exe -p %OPEN_PATH%

echo Starting mysqld...
RunHiddenConsole %MYSQL_PATH%\bin\mysqld.exe --basedir=%MYSQL_PATH% --log-error=%LOG_PATH%mysql.log --datadir=%MYSQL_PATH%data
echo RunHiddenConsole %MYSQL_PATH%\bin\mysqld.exe --basedir=%MYSQL_PATH% --log-error=%LOG_PATH%mysql.log --datadir=%MYSQL_PATH%data
rem RunHiddenConsole %MYSQL_PATH%\bin\mysqld.exe

tasklist /fi "imagename eq nginx.exe"
tasklist /fi "imagename eq php-cgi.exe"
tasklist /fi "imagename eq mysqld.exe"