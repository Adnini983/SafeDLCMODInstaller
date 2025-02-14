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
echo ===================================
echo =                                 =
echo =                                 =
echo =                                 =
echo =                                 =
echo =      SafeDLCMODInstaller        =
echo =                                 =
echo =                                 =
echo =                                 =
echo =              Made By Adnini983  =
echo =                                 =
echo ===================================
echo( 
echo( 
echo( 
echo( 
echo( 
echo( 若要删除“DLC模组2.2.1”相关安装文件 请按下 Enter 键
echo( 
echo( 这不会删除你当前的游戏
echo( 
pause
rmdir /s/q xdelta-2.2.1
del Installer-0.0.2.w7cn.bat
del SafeDLCMODInstaller.w7cn-0.0.1.exe
del Remove-0.0.2.w7cn.bat
