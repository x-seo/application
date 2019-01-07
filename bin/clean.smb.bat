@echo off
::删除win保存的连接
net use * /delete /y
::这个好像是清除win保存的认证还是啥的，具体没仔细去查
klist purge
::m删除win保存的凭据管理器，delete:后面为你共享的地址
cmdkey /delete:192.168.0.100
pause