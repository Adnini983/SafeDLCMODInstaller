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
echo( ��Ҫ��װ��DLCģ��2.2.1�� �밴�� Enter ��
echo( 
pause
cls
mode con cols=120 lines=40
echo( = ���Ķ���ϴ˴����е����Э�� =
echo( 
echo( 
echo( 1 ��DLCģ�顱��������
echo( 
echo( 1.1 ���ɺͺ���ʹ������
echo( 
echo( ���ǵĸİ��в��ṩ�κ�ԭ��ġ�ֲ���ս��ʬ����Ϸ���ݡ����ǵĸİ���Բ����ļ�����ʽ������Ҫ���û�ӵ��ԭ����Ϸ�ĺϷ������������û�С�ֲ���ս��ʬ����Ϸ�������й���
echo( 
echo( 1.2 �����ַ�
echo( 
echo( ���ǵĸİ���������ļ����û����Խ���Ӧ���ںϷ���õ���Ϸ����������֮������ͨ���ṩ�����ļ�������ֱ�ӷַ��޸ĺ����Ϸ����������Ϊ����ּ�����ع�ƽʹ��ԭ�򲢱�������κο���Υ�� PopCap/EA ��ط����������Ϊ��
echo( 
echo( 1.3 ��������̬���ӿ�
echo( 
echo( �����κε�������̬���ӿ⣨���� bass.dll���������ṩ���µ��ѹ����汾����������Ӧ�������Ϣ����Դ������������Ӧ��ɵ�Ҫ�󣩡���Щ������·ַ������������Ӧ����ɽ��С�
echo( 
echo( 1.4 �û�������
echo( 
echo( ����ʹ�������ǵĸİ棬������ͬ��: 
echo( 
echo( - ��ӵ�С�ֲ���ս��ʬ�������濽����
echo( 
echo( - ��ֻ��ʹ�ô˲���Ӧ�������Ϸ���õ���Ϸ������
echo( 
echo( - ����Ⲣ����������ص������������
echo( 
echo( 1.5 ����
echo( 
echo( ������Ա��İ�ĺϷ�ʹ�����κ����ǣ����ǽ������鿴�������õķ��������Э���Ѱ���ɽ��顣��л������֪ʶ��Ȩ��ͨ��ʹ����Ϸ�ĺϷ�������֧��ÿһλ�����ߡ�
echo( 
echo( 
echo( = ���� Enter �� �Լ����Ķ� =
echo( 
pause
cls
echo( 
echo( 2 ��SafeDLCMODInstaller��������
echo( 
echo( MIT ���֤
echo( 
echo( ��Ȩ���� (c) 2025 Adnini983
echo( 
echo( �ش���������κλ�ñ����������ĵ��ļ������¼��"�����"���������˲������Ƶش��ñ������Ȩ����������������ʹ�á����ơ��޸ġ��ϲ����������ַ�������ɺ�/�����۱����������Ȩ�����Լ������ṩ�����������������Ȩ���������������������
echo( 
echo( ������Ȩ�����ͱ��������Ӧ�����ڱ���������и�����ʵ���Բ����С�
echo( 
echo( �������"��״"�ṩ���������κ���ʾ��ʾ�ı�֤�������������ڶ������ԡ��ض���;�����Ժͷ���Ȩ�Եı�֤�����κ�����£����߻��Ȩ�����˾������κ����⡢�𺦻��������θ����������ں�ͬ���ϡ���Ȩ���ϻ����������У��ɱ�����������ʹ�û������������𡢵��»���֮��ص����Ρ�
echo( 
echo( 
echo( 
echo( 
echo( = ��л�Ķ� ��������԰��� Enter �� �Լ�����װ =
echo( 
pause
cls
setlocal enabledelayedexpansion

:menu
cls
mode con cols=90 lines=30
echo.
echo( ��ѡ���㵱ǰ����Ϸ�汾
echo( (ѡ��������Ϸ�汾�ᰲװʧ��)
echo( 
echo( 
echo( 
echo( 
echo( [1] 1.0.0.1051 Ӣ��ԭʼ�� [2] 1.0.0.1051 Ӣ�Ľ��ܰ� [3] 1.2.0.1095 Ӣ��STEAM�� 
echo( 
echo( [4] 1.0.0.1051 ������һ�� [5] 1.0.0.1051 �����ڶ��� [6] 1.2.0.1065 ����������   
echo( 
echo( [7] 2010.08.02 ������İ� [8] 2012.06.05 ��ȼ�ǿ�� [9] 2012.07.17 ��ȼ�ǿ��   
echo( 
echo( [0] �˳�����             [R] ɾ����װ�ļ�            
echo( 
echo( 
echo.

:input
set /p choice=������������ţ�0-9�������س���
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
echo( ������Ч������ [!]
echo( �밴 Enter ����������...
pause >nul
goto menu

:option1
echo( ��ѡ����"1.0.0.1051 Ӣ��ԭʼ��"
echo( �������нű�"inst_1051EN.w7cn.bat"
timeout /t 5 > nul
cd xdelta-2.2.1
inst_1051EN.w7cn.bat
rem �������ѡ��1Ҫִ�е�����
goto end

:option2
echo( ��ѡ����"1.0.0.1051 Ӣ�Ľ��ܰ�"
echo( �������нű�"inst_1051Decrypted.w7cn.bat"
timeout /t 5 > nul
cd xdelta-2.2.1
inst_1051Decrypted.w7cn.bat
rem �������ѡ��2Ҫִ�е�����
goto end

:option3
echo( ��ѡ����"1.2.0.1095 Ӣ��STEAM��"
echo( �������нű�"inst_1095STEAM.w7cn.bat"
timeout /t 5 > nul
cd xdelta-2.2.1
inst_1095STEAM.bat
rem �������ѡ��3Ҫִ�е�����
goto end

:option4
echo( ��ѡ����"1.0.0.1051 ������һ��"
echo( �������нű�"inst_1051CNV1.w7cn.bat"
timeout /t 5 > nul
cd xdelta-2.2.1
inst_1051CNV1.bat
rem �������ѡ��4Ҫִ�е�����
goto end

:option5
echo( ��ѡ����"1.0.0.1051 �����ڶ���"
echo( �������нű�"inst_1051CNV2.w7cn.bat"
timeout /t 5 > nul
cd xdelta-2.2.1
inst_1051CNV2.bat
rem �������ѡ��5Ҫִ�е�����
goto end

:option6
echo( ��ѡ����"1.2.0.1065 ����������"
echo( �������нű�"inst_1065CN.w7cn.bat"
timeout /t 5 > nul
cd xdelta-2.2.1
inst_1065CN.bat
rem �������ѡ��6Ҫִ�е�����
goto end

:option7
echo( ��ѡ����"2010.08.02 ������İ�"
echo( �������нű�"inst_GOTY2010CN.w7cn.bat"
timeout /t 5 > nul
cd xdelta-2.2.1
inst_GOTY2010CN.bat
rem �������ѡ��7Ҫִ�е�����
goto end

:option8
echo( ��ѡ����"2012.06.05 ��ȼ�ǿ��"
echo( �������нű�"inst_GOTY2012V1.w7cn.bat"
timeout /t 5 > nul
cd xdelta-2.2.1
inst_GOTY2012V1.bat
rem �������ѡ��8Ҫִ�е�����
goto end

:option9
echo( ��ѡ����"2012.07.17 ��ȼ�ǿ��"
echo( �������нű�"inst_GOTY2012V2.w7cn.bat"
timeout /t 5 > nul
cd xdelta-2.2.1
inst_GOTY2012V2.bat
rem �������ѡ��9Ҫִ�е�����
goto end

:optionR
Remove-0.0.2.w7cn.bat
goto end

:exit
echo �������˳�
exit /b 0

:end
echo.
echo ����ִ����ϣ���������������˵�...
pause >nul
goto menu
