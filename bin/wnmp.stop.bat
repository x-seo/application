@echo off

call wnmp.init.bat

echo Stopping nginx...  
taskkill /F /IM nginx.exe > nul


echo Stopping PHP FastCGI...
taskkill /F /IM php-cgi.exe > nul


echo Stopping MySQL...
taskkill /F /IM mysqld.exe > nul

if "%REDIS_PATH%" == "" (
    echo Redis is not running, skip!
) else (
    echo Stopping Redis...
    taskkill /F /IM redis.exe > nul
)
