@echo off
chcp 65001 > nul
cls
color 0A

@echo off
:: ========================================
:: 配置文件校验参数
:: ========================================
set "target_file=..\PlantsVsZombies.exe"  :: 要校验的目标文件
set "expected_md5=3C8876147C84735CA540DDA5BE3C6451"  :: 预期的MD5值
set "error_count=0"  :: 错误计数器

:: ========================================
:: 主程序开始
:: ========================================
title 文件MD5校验工具 - %target_file%

:: 检查文件是否存在
if not exist "%target_file%" (
    echo 错误：目标文件不存在！
    set /a error_count+=1
    goto error_handling
)

:: 计算文件MD5值
echo 正在检查MD5值...
certutil -hashfile "%target_file%" MD5 > temp_md5.txt 2>&1

:: 提取计算得到的MD5值
setlocal enabledelayedexpansion
for /f "skip=1 tokens=*" %%i in (temp_md5.txt) do (
    set "actual_md5=%%i"
    goto md5_extracted
)
:md5_extracted
endlocal & set "actual_md5=%actual_md5: =%"
del temp_md5.txt

:: 显示校验结果
echo.
echo ========================================
echo 文件路径：%target_file%
echo 预期MD5：%expected_md5%
echo 实际MD5：%actual_md5%
echo ========================================

:: 校验MD5值
if /i "%actual_md5%" neq "%expected_md5%" (
    echo 错误：MD5校验失败！
    set /a error_count+=1
    goto error_handling
) else (
    echo 成功：MD5校验通过！
    echo.
    goto continue_execution
)

:: ========================================
:: 错误处理
:: ========================================
:error_handling
echo.
echo 程序因错误终止，请检查以下内容：
echo 1. 游戏版本是否正确
echo 2. 游戏文件是否被修改

timeout /t 5 > nul
exit /b %error_count%

:: ========================================
:: 继续执行后续命令
:: ========================================
:continue_execution
echo 正在执行后续命令...
:: 在此处添加您的后续命令

:: 示例命令

echo.
cls@echo off
chcp 65001 > nul
cls
color 0A

@echo off
:: ========================================
:: 配置文件校验参数
:: ========================================
set "target_file=..\main.pak"  :: 要校验的目标文件
set "expected_md5=26322DFC2AB49DBCE3506D8FC5EB8435"  :: 预期的MD5值
set "error_count=0"  :: 错误计数器

:: ========================================
:: 主程序开始
:: ========================================
title 文件MD5校验工具 - %target_file%

:: 检查文件是否存在
if not exist "%target_file%" (
    echo 错误：目标文件不存在！
    set /a error_count+=1
    goto error_handling
)

:: 计算文件MD5值
echo 正在检查MD5值...
certutil -hashfile "%target_file%" MD5 > temp_md5.txt 2>&1

:: 提取计算得到的MD5值
setlocal enabledelayedexpansion
for /f "skip=1 tokens=*" %%i in (temp_md5.txt) do (
    set "actual_md5=%%i"
    goto md5_extracted
)
:md5_extracted
endlocal & set "actual_md5=%actual_md5: =%"
del temp_md5.txt

:: 显示校验结果
echo.
echo ========================================
echo 文件路径：%target_file%
echo 预期MD5：%expected_md5%
echo 实际MD5：%actual_md5%
echo ========================================

:: 校验MD5值
if /i "%actual_md5%" neq "%expected_md5%" (
    echo 错误：MD5校验失败！
    set /a error_count+=1
    goto error_handling
) else (
    echo 成功：MD5校验通过！
    echo.
    goto continue_execution
)

:: ========================================
:: 错误处理
:: ========================================
:error_handling
echo.
echo 程序因错误终止，请检查以下内容：
echo 1. 游戏版本是否正确
echo 2. 游戏文件是否被修改

timeout /t 5 > nul
exit /b %error_count%

:: ========================================
:: 继续执行后续命令
:: ========================================
:continue_execution
echo 正在执行后续命令...
:: 在此处添加您的后续命令
:: 示例命令
cls
@echo off
chcp 65001 > nul
cls
color 0A

@echo off
:: ========================================
:: 配置文件校验参数
:: ========================================
set "target_file=exe_1051EN.xdelta"  :: 要校验的目标文件
set "expected_md5=8F9D5F12FAAC484B05B32068A070251D"  :: 预期的MD5值
set "error_count=0"  :: 错误计数器

:: ========================================
:: 主程序开始
:: ========================================
title 文件MD5校验工具 - %target_file%

:: 检查文件是否存在
if not exist "%target_file%" (
    echo 错误：目标文件不存在！
    set /a error_count+=1
    goto error_handling
)

:: 计算文件MD5值
echo 正在检查MD5值...
certutil -hashfile "%target_file%" MD5 > temp_md5.txt 2>&1

:: 提取计算得到的MD5值
setlocal enabledelayedexpansion
for /f "skip=1 tokens=*" %%i in (temp_md5.txt) do (
    set "actual_md5=%%i"
    goto md5_extracted
)
:md5_extracted
endlocal & set "actual_md5=%actual_md5: =%"
del temp_md5.txt

:: 显示校验结果
echo.
echo ========================================
echo 文件路径：%target_file%
echo 预期MD5：%expected_md5%
echo 实际MD5：%actual_md5%
echo ========================================

:: 校验MD5值
if /i "%actual_md5%" neq "%expected_md5%" (
    echo 错误：MD5校验失败！
    set /a error_count+=1
    goto error_handling
) else (
    echo 成功：MD5校验通过！
    echo.
    goto continue_execution
)

:: ========================================
:: 错误处理
:: ========================================
:error_handling
echo.
echo 程序因错误终止，请检查以下内容：
echo 1. exe_1051EN.xdelta 文件是否存在
echo 2. 如果存在 可能是文件损坏 请重新下载或重新解压

timeout /t 5 > nul
exit /b %error_count%

:: ========================================
:: 继续执行后续命令
:: ========================================
:continue_execution
echo 正在执行后续命令...
:: 在此处添加您的后续命令

:: 示例命令

echo.
cls
@echo off
chcp 65001 > nul
cls
color 0A

@echo off
:: ========================================
:: 配置文件校验参数
:: ========================================
set "target_file=pak_1051EN.xdelta"  :: 要校验的目标文件
set "expected_md5=95873933D7EF1B7E618CCB782C430B65"  :: 预期的MD5值
set "error_count=0"  :: 错误计数器

:: ========================================
:: 主程序开始
:: ========================================
title 文件MD5校验工具 - %target_file%

:: 检查文件是否存在
if not exist "%target_file%" (
    echo 错误：目标文件不存在！
    set /a error_count+=1
    goto error_handling
)

:: 计算文件MD5值
echo 正在检查MD5值...
certutil -hashfile "%target_file%" MD5 > temp_md5.txt 2>&1

:: 提取计算得到的MD5值
setlocal enabledelayedexpansion
for /f "skip=1 tokens=*" %%i in (temp_md5.txt) do (
    set "actual_md5=%%i"
    goto md5_extracted
)
:md5_extracted
endlocal & set "actual_md5=%actual_md5: =%"
del temp_md5.txt

:: 显示校验结果
echo.
echo ========================================
echo 文件路径：%target_file%
echo 预期MD5：%expected_md5%
echo 实际MD5：%actual_md5%
echo ========================================

:: 校验MD5值
if /i "%actual_md5%" neq "%expected_md5%" (
    echo 错误：MD5校验失败！
    set /a error_count+=1
    goto error_handling
) else (
    echo 成功：MD5校验通过！
    echo.
    goto continue_execution
)

:: ========================================
:: 错误处理
:: ========================================
:error_handling
echo.
echo 程序因错误终止，请检查以下内容：
echo 1. pak_1051EN.xdelta 文件是否存在
echo 2. 如果存在 可能是文件损坏 请重新下载或重新解压

timeout /t 5 > nul
exit /b %error_count%

:: ========================================
:: 继续执行后续命令
:: ========================================
:continue_execution
echo 正在执行后续命令...
:: 在此处添加您的后续命令

:: 示例命令

@echo off
chcp 65001 > nul
cls
color 0A

@echo off
:: ========================================
:: 配置文件校验参数
:: ========================================
set "target_file=xdelta3-3.0.11-x86_64.exe"  :: 要校验的目标文件
set "expected_md5=7AC21750E2032E5AEB681AC88460BDCE"  :: 预期的MD5值
set "error_count=0"  :: 错误计数器

:: ========================================
:: 主程序开始
:: ========================================
title 文件MD5校验工具 - %target_file%

:: 检查文件是否存在
if not exist "%target_file%" (
    echo 错误：目标文件不存在！
    set /a error_count+=1
    goto error_handling
)

:: 计算文件MD5值
echo 正在检查MD5值...
certutil -hashfile "%target_file%" MD5 > temp_md5.txt 2>&1

:: 提取计算得到的MD5值
setlocal enabledelayedexpansion
for /f "skip=1 tokens=*" %%i in (temp_md5.txt) do (
    set "actual_md5=%%i"
    goto md5_extracted
)
:md5_extracted
endlocal & set "actual_md5=%actual_md5: =%"
del temp_md5.txt

:: 显示校验结果
echo.
echo ========================================
echo 文件路径：%target_file%
echo 预期MD5：%expected_md5%
echo 实际MD5：%actual_md5%
echo ========================================

:: 校验MD5值
if /i "%actual_md5%" neq "%expected_md5%" (
    echo 错误：MD5校验失败！
    set /a error_count+=1
    goto error_handling
) else (
    echo 成功：MD5校验通过！
    echo.
    goto continue_execution
)

:: ========================================
:: 错误处理
:: ========================================
:error_handling
echo.
echo 程序因错误终止，请检查以下内容：
echo 1. xdelta3-3.0.11-x86_64.exe 文件是否存在
echo 2. 如果存在 可能是文件损坏 请重新下载或重新解压

timeout /t 5 > nul
exit /b %error_count%

:: ========================================
:: 继续执行后续命令
:: ========================================
:continue_execution
echo 正在执行后续命令...
:: 在此处添加您的后续命令

:: 示例命令
echo.
cls
title DLC模组 2.2.1安装器
echo(========================================
echo(所有文件已校验完成
echo(请敲击 Enter 键以安装“DLC模组”
echo(========================================
echo(========================================
echo(☑ PlantsVsZombies.exe
echo(☑ main.pak
echo(☑ exe_1051EN.xdelta
echo(☑ pak_1051EN.xdelta
echo(☑ xdelta3-3.0.11-x86_64.exe
echo(========================================
echo(========================================
echo(Made By Adnini983
echo(========================================
echo(========================================
pause
echo 修补 PlantsVsZombies.exe
xdelta3-3.0.11-x86_64.exe -d -s ..\PlantsVsZombies.exe exe_1051EN.xdelta ..\PATCH.exe
echo 修补 main.pak
xdelta3-3.0.11-x86_64.exe -d -s ..\main.pak pak_1051EN.xdelta ..\PATCH.pak
echo 删除多余的文件(如果有)
rmdir /s/q ..\compiled
rmdir /s/q ..\data
rmdir /s/q ..\images
rmdir /s/q ..\particles
rmdir /s/q ..\reanim
rmdir /s/q ..\sounds
del ..\properties\LawnStrings.txt
del ..\properties\resources.xml
del ..\cached
del ..\drm.xml
del ..\drm.xml.sig
del ..\PlantsVsZombies.dat
del ..\PlantsVsZombies.exe
del ..\main.pak
echo 应用安装
cd ..
rename PATCH.exe PlantsVsZombies.exe
rename PATCH.pak main.pak
echo(========================================
echo(========================================
echo(DLC模组 2.2.1安装完成
echo(请敲击 Enter 键以关闭此窗口
echo(========================================
echo(========================================
pause
exit /b 0
