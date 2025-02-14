chcp 65001 > nul
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
echo( 若要安装“DLC模组2.2.1” 请按下 Enter 键
echo( 
pause
cls
mode con cols=120 lines=40
echo( = 请阅读完毕此窗口中的许可协议 =
echo( 
echo( 
echo( 1 “DLC模组”免责声明
echo( 
echo( 1.1 法律和合理使用声明
echo( 
echo( 我们的改版中不提供任何原版的《植物大战僵尸》游戏数据。我们的改版仅以补丁文件的形式发布，要求用户拥有原版游戏的合法拷贝。如果您没有《植物大战僵尸》游戏，请自行购买。
echo( 
echo( 1.2 补丁分发
echo( 
echo( 我们的改版包含补丁文件，用户可以将其应用于合法获得的游戏拷贝。我们之所以是通过提供补丁文件而不是直接分发修改后的游戏拷贝，是因为我们旨在遵守公平使用原则并避免出现任何可能违反 PopCap/EA 相关服务条款的行为。
echo( 
echo( 1.3 第三方动态链接库
echo( 
echo( 对于任何第三方动态链接库（例如 bass.dll），我们提供最新的已公开版本，并包含相应的许可信息和来源归属（根据相应许可的要求）。这些库的重新分发将根据其相对应的许可进行。
echo( 
echo( 1.4 用户的义务
echo( 
echo( 若您使用了我们的改版，代表您同意: 
echo( 
echo( - 您拥有《植物大战僵尸》的正版拷贝；
echo( 
echo( - 您只会使用此补丁应用于您合法获得的游戏拷贝；
echo( 
echo( - 您理解并遵守所有相关的许可与服务条款。
echo( 
echo( 1.5 其它
echo( 
echo( 如果您对本改版的合法使用有任何疑虑，我们建议您查看当地适用的法律条款和协议或寻求法律建议。感谢您尊重知识产权并通过使用游戏的合法拷贝来支持每一位创作者。
echo( 
echo( 
echo( = 按下 Enter 键 以继续阅读 =
echo( 
pause
cls
echo( 
echo( 2 “SafeDLCMODInstaller”相关许可
echo( 
echo( MIT 许可证
echo( 
echo( 版权所有 (c) 2025 Adnini983
echo( 
echo( 特此免费授予任何获得本软件及相关文档文件（以下简称"本软件"）副本的人不受限制地处置本软件的权利，包括但不限于使用、复制、修改、合并、发布、分发、再许可和/或销售本软件副本的权利，以及允许被提供本软件的人这样做的权利，但须符合以下条件：
echo( 
echo( 上述版权声明和本许可声明应包含在本软件的所有副本或实质性部分中。
echo( 
echo( 本软件按"现状"提供，不附带任何明示或暗示的保证，包括但不限于对适销性、特定用途适用性和非侵权性的保证。在任何情况下，作者或版权持有人均不对任何索赔、损害或其他责任负责，无论是在合同诉讼、侵权诉讼或其他诉讼中，由本软件或本软件的使用或其他交易引起、导致或与之相关的责任。
echo( 
echo( 
echo( 
echo( 
echo( = 感谢阅读 现在你可以按下 Enter 键 以继续安装 =
echo( 
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
echo( [0] 退出程序             [R] 删除安装文件            
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
if "%choice%" == "R" goto optionR
if "%choice%" == "r" goto optionR
if "%choice%" == "0" goto exit

echo.
echo( 错误：无效的输入 [!]
echo( 请按 Enter 键重新输入...
pause >nul
goto menu

:option1
echo( 你选择了"1.0.0.1051 英文原始版"
echo( 正在运行脚本"inst_1051EN.bat"
timeout /t 5 > nul
cd xdelta-2.2.1
inst_1051EN.bat
rem 这里添加选项1要执行的命令
goto end

:option2
echo( 你选择了"1.0.0.1051 英文解密版"
echo( 正在运行脚本"inst_1051Decrypted.bat"
timeout /t 5 > nul
cd xdelta-2.2.1
inst_1051Decrypted.bat
rem 这里添加选项2要执行的命令
goto end

:option3
echo( 你选择了"1.2.0.1095 英文STEAM版"
echo( 正在运行脚本"inst_1095STEAM.bat"
timeout /t 5 > nul
cd xdelta-2.2.1
inst_1095STEAM.bat
rem 这里添加选项3要执行的命令
goto end

:option4
echo( 你选择了"1.0.0.1051 汉化第一版"
echo( 正在运行脚本"inst_1051CNV1.bat"
timeout /t 5 > nul
cd xdelta-2.2.1
inst_1051CNV1.bat
rem 这里添加选项4要执行的命令
goto end

:option5
echo( 你选择了"1.0.0.1051 汉化第二版"
echo( 正在运行脚本"inst_1051CNV2.bat"
timeout /t 5 > nul
cd xdelta-2.2.1
inst_1051CNV2.bat
rem 这里添加选项5要执行的命令
goto end

:option6
echo( 你选择了"1.2.0.1065 汉化第三版"
echo( 正在运行脚本"inst_1065CN.bat"
timeout /t 5 > nul
cd xdelta-2.2.1
inst_1065CN.bat
rem 这里添加选项6要执行的命令
goto end

:option7
echo( 你选择了"2010.08.02 年度中文版"
echo( 正在运行脚本"inst_GOTY2010CN.bat"
timeout /t 5 > nul
cd xdelta-2.2.1
inst_GOTY2010CN.bat
rem 这里添加选项7要执行的命令
goto end

:option8
echo( 你选择了"2012.06.05 年度加强版"
echo( 正在运行脚本"inst_GOTY2012V1.bat"
timeout /t 5 > nul
cd xdelta-2.2.1
inst_GOTY2012V1.bat
rem 这里添加选项8要执行的命令
goto end

:option9
echo( 你选择了"2012.07.17 年度加强版"
echo( 正在运行脚本"inst_GOTY2012V2.bat"
timeout /t 5 > nul
cd xdelta-2.2.1
inst_GOTY2012V2.bat
rem 这里添加选项9要执行的命令
goto end

:optionR
Remove-0.0.2.bat
goto end

:exit
echo 程序已退出
exit /b 0

:end
echo.
echo 命令执行完毕，按任意键返回主菜单...
pause >nul
goto menu
