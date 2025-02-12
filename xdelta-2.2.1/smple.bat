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
cls
start pak_1051EN.bat
exit /b 0