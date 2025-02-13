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
chcp 65001 > nul
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
echo 若要安装“DLC模组2.2.1” 请按下 Enter 键
pause
cls
echo 请阅读完毕此窗口中的许可协议
echo 
echo 感谢阅读 现在你可以按下 Enter 键 以继续安装
pause
cls
setlocal enabledelayedexpansion

:menu
cls
mode con cols=90 lines=30
echo.
echo( 请选择你当前的游戏版本
echo( (选择错误的游戏版本会安装失败)
echo( 
echo( 
echo( 
echo( 
echo( [1] 1.0.0.1051 英文原始版 [2] 1.0.0.1051 英文解密版 [3] 1.2.0.1095 英文STEAM版 
echo( 
echo( [4] 1.0.0.1051 汉化第一版 [5] 1.0.0.1051 汉化第二版 [6] 1.2.0.1065 汉化第三版   
echo( 
echo( [7] 2010.08.02 年度中文版 [8] 2012.06.05 年度加强版 [9] 2012.07.17 年度加强版   
echo( 
echo( [0] 退出程序
echo( 
echo( 
echo.

:input
set /p choice=请输入数字序号（0-9）并按回车：
if "%choice%" == "1" goto option1
if "%choice%" == "2" goto option2
if "%choice%" == "3" goto option3
if "%choice%" == "4" goto option4
if "%choice%" == "5" goto option5
if "%choice%" == "6" goto option6
if "%choice%" == "7" goto option7
if "%choice%" == "8" goto option8
if "%choice%" == "9" goto option9
if "%choice%" == "0" goto exit

echo.
echo 错误：无效的输入 [!]
echo 请按 Enter 键重新输入...
pause >nul
goto menu

:option1
echo 你选择了"1.0.0.1051 英文原始版"
echo 正在运行脚本"inst_1051EN.bat"
timeout /t 5 > nul
cd xdelta-2.2.1
inst_1051EN.bat
rem 这里添加选项1要执行的命令
goto end

:option2
echo 你选择了"1.0.0.1051 英文解密版"
echo 正在运行脚本"inst_1051Decrypted.bat"
timeout /t 5 > nul
cd xdelta-2.2.1
inst_1051Decrypted.bat
rem 这里添加选项2要执行的命令
goto end

:option3
echo 你选择了"1.2.0.1095 英文STEAM版"
echo 正在运行脚本"inst_1095STEAM.bat"
timeout /t 5 > nul
cd xdelta-2.2.1
inst_1095STEAM.bat
rem 这里添加选项3要执行的命令
goto end

:option4
echo 你选择了"1.0.0.1051 汉化第一版"
echo 正在运行脚本"inst_1051CNV1.bat"
timeout /t 5 > nul
cd xdelta-2.2.1
inst_1051CNV1.bat
rem 这里添加选项4要执行的命令
goto end

:option5
echo 你选择了"1.0.0.1051 汉化第二版"
echo 正在运行脚本"inst_1051CNV2.bat"
timeout /t 5 > nul
cd xdelta-2.2.1
inst_1051CNV2.bat
rem 这里添加选项5要执行的命令
goto end

:option6
echo 你选择了"1.2.0.1065 汉化第三版"
echo 正在运行脚本"inst_1065CN.bat"
timeout /t 5 > nul
cd xdelta-2.2.1
inst_1065CN.bat
rem 这里添加选项6要执行的命令
goto end

:option7
echo 你选择了"2010.08.02 年度中文版"
echo 正在运行脚本"inst_GOTY2010CN.bat"
timeout /t 5 > nul
cd xdelta-2.2.1
inst_GOTY2010CN.bat
rem 这里添加选项7要执行的命令
goto end

:option8
echo 你选择了"2012.06.05 年度加强版"
echo 正在运行脚本"inst_GOTY2012V1.bat"
timeout /t 5 > nul
cd xdelta-2.2.1
inst_GOTY2012V1.bat
rem 这里添加选项8要执行的命令
goto end

:option9
echo 你选择了"2012.07.17 年度加强版"
echo 正在运行脚本"inst_GOTY2012V2.bat"
timeout /t 5 > nul
cd xdelta-2.2.1
inst_GOTY2012V2.bat
rem 这里添加选项9要执行的命令
goto end

:exit
echo 程序已退出
exit /b 0

:end
echo.
echo 命令执行完毕，按任意键返回主菜单...
pause >nul
goto menu