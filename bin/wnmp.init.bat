@echo off
REM init wnmp

set WNMP_ROOT=D:\application\
set WNMP_PATH=%WNMP_ROOT%bin\;
set LOG_PATH=%WNMP_ROOT%logs\

rem Setting PHP PATH
set PHP_PATH=%WNMP_ROOT%php\php-5.4.45\
REM set PHP_PATH=%WNMP_ROOT%php\php-5.6.37\
REM set PHP_PATH=%WNMP_ROOT%php\php-7.2.12\
if "%PHP_PATH%" == "" (
    rem echo 111
) else (
    set WNMP_PATH=%WNMP_PATH%%PHP_PATH%;
)


rem set MYSQL_PATH=%WNMP_ROOT%mysql\mysql-5.0.96-winx64\
set MYSQL_PATH=%WNMP_ROOT%mysql\mysql-5.5.24\
REM set MYSQL_PATH=%WNMP_ROOT%mysql\mysql-5.7.23-winx64\
if "%MYSQL_PATH%" == "" (
    rem echo 111
) else (
    set WNMP_PATH=%WNMP_PATH%%MYSQL_PATH%bin\;
)

set OPEN_PATH=%WNMP_ROOT%openresty\openresty-1.13.6.2\
rem set RunHiddenConsole=%WNMP_ROOT%bin\RunHiddenConsole.exe
if "%OPEN_PATH%" == "" (
    rem echo 111
) else (
    set WNMP_PATH=%WNMP_PATH%%OPEN_PATH%;
)

rem SET REDIS_PATH=daff
rem echo %REDIS_PATH%

rem SET PGSQL_PATH=daff
rem echo %PGSQL_PATH%

rem SET PGSQL_PATH=daff
rem echo %PGSQL_PATH%

rem Setting PHP7 PATH
set PHP7_PATH=%WNMP_ROOT%php\php-7.2.12\
if "%PHP7_PATH%" == "" (
    rem echo 111
) else (
    REM set WNMP_PATH=%WNMP_PATH%%PHP7_PATH%;
)

set TEMP_PATH=%WNMP_PATH%;
echo Your mate run: set PATH=%TEMP_PATH%;%PATH%
echo Enjoy It!