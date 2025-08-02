chcp 936 > nul
@echo off
if exist "%SystemRoot%\SysWOW64" path %path%;%windir%\SysNative;%SystemRoot%\SysWOW64;%~dp0
bcdedit >nul
if '%errorlevel%' NEQ '0' (goto UACPrompt) else (goto UACAdmin)
:UACPrompt
%1 start "" mshta vbscript:createobject("shell.application").shellexecute("""%~0""","::",,"runas",1)(window.close)&exit
exit /B
:UACAdmin
cd /d "%~dp0"
echo 当前运行路径是：%CD%
echo 已获取管理员权限
cls
title SafeDLCMODInstaller

echo( 若要删除“DLC版 2.5.1b”相关安装文件 请按下 Enter 键
echo( 
echo( 这不会删除你当前的游戏
pause
del exe_1051EN.xdelta
del pak_1051EN.xdelta
del xdelta3-3.0.11-x86_64.exe
del "应用补丁.bat"
del "删除补丁.bat"
del "应用补丁-W7CN.bat"
del "删除补丁-W7CN.bat"