@echo off

call wnmp.init.bat

%OPEN_PATH%\nginx.exe -p %OPEN_PATH% -s reload

tasklist /fi "imagename eq nginx.exe"