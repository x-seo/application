REM @echo off

:del /f /s /q c:\windows\system32\logfiles\*.*
:del /f /s /q c:\windows\system32\config\*.evt
:del /f /s /q  c:\windows\system32\dtclog\*.*
:del /f /s /q c:\windows\system32\*.log
:del /f /s /q c:\windows\system32\*.txt
:del /f /s /q c:\dellog.bat
rem 删除C盘的日志文件

ipconfig /flushdns

echo -----------------------------------------------------------------------
echo del google chrome cookie and tmp files
del /f /s /q  "%userprofile%\AppData\Local\Google\Chrome\User Data\Default\Cache\*.*"
echo del COOKIES and IE tmp dir...
rem del /f /q %userprofile%\COOKIES s\*.*
rem del /f /q %userprofile%\recent\*.*
del /f /s /q "%userprofile%\Local Settings\Temporary Internet Files\*.*"
del /f /s /q "%temp%\*.*"
echo clean tmp files...
:del /f /s /q %systemdrive%\*.tmp
:del /f /s /q %systemdrive%\*._mp
:rd /s /q %windir%\temp & md %windir%\temp
echo clean recycled, bakfile and prefetch...
:del /f /s /q %systemdrive%\recycled\*.*
:del /f /s /q %windir%\*.bak
:del /f /s /q %windir%\prefetch\*.*
echo clean SYSTEM32\DLLCACHE unuse files...
:%windir%\system32\sfc.exe /purgecache
echo well done！
echo -----------------------------------------------------------------------