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
echo ��ǰ����·���ǣ�%CD%
echo �ѻ�ȡ����ԱȨ��
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
echo( ��Ҫɾ����DLCģ��2.2.1����ذ�װ�ļ� �밴�� Enter ��
echo( 
echo( �ⲻ��ɾ���㵱ǰ����Ϸ
echo( 
pause
rmdir /s/q xdelta-2.2.1
del Installer-0.0.2.w7cn.bat
del SafeDLCMODInstaller.w7cn-0.0.1.exe
del Remove-0.0.2.w7cn.bat
