@echo off
chcp 936 > nul
cls
color 0A

@echo off
:: ========================================
:: �����ļ�У�����
:: ========================================
set "target_file=..\PlantsVsZombies.exe"  :: ҪУ���Ŀ���ļ�
set "expected_md5=C79E7580FCFF978AFAB35CAEACBF3BA6"  :: Ԥ�ڵ�MD5ֵ
set "error_count=0"  :: ���������

:: ========================================
:: ������ʼ
:: ========================================
title �ļ�MD5У�鹤�� - %target_file%

:: ����ļ��Ƿ����
if not exist "%target_file%" (
    echo ����Ŀ���ļ������ڣ�
    set /a error_count+=1
    goto error_handling
)

:: �����ļ�MD5ֵ
echo ���ڼ��MD5ֵ...
certutil -hashfile "%target_file%" MD5 > temp_md5.txt 2>&1

:: ��ȡ����õ���MD5ֵ
setlocal enabledelayedexpansion
for /f "skip=1 tokens=*" %%i in (temp_md5.txt) do (
    set "actual_md5=%%i"
    goto md5_extracted
)
:md5_extracted
endlocal & set "actual_md5=%actual_md5: =%"
del temp_md5.txt

:: ��ʾУ����
echo.
echo ========================================
echo �ļ�·����%target_file%
echo Ԥ��MD5��%expected_md5%
echo ʵ��MD5��%actual_md5%
echo ========================================

:: У��MD5ֵ
if /i "%actual_md5%" neq "%expected_md5%" (
    echo ����MD5У��ʧ�ܣ�
    set /a error_count+=1
    goto error_handling
) else (
    echo �ɹ���MD5У��ͨ����
    echo.
    goto continue_execution
)

:: ========================================
:: ������
:: ========================================
:error_handling
echo.
echo �����������ֹ�������������ݣ�
echo 1. ��Ϸ�汾�Ƿ���ȷ
echo 2. ��Ϸ�ļ��Ƿ��޸�

timeout /t 5 > nul
exit /b %error_count%

:: ========================================
:: ����ִ�к�������
:: ========================================
:continue_execution
echo ����ִ�к�������...
:: �ڴ˴�������ĺ�������

:: ʾ������

echo.
cls@echo off
chcp 936 > nul
cls
color 0A

@echo off
:: ========================================
:: �����ļ�У�����
:: ========================================
set "target_file=..\main.pak"  :: ҪУ���Ŀ���ļ�
set "expected_md5=26392C2433CAFF44251B9EECD4500546"  :: Ԥ�ڵ�MD5ֵ
set "error_count=0"  :: ���������

:: ========================================
:: ������ʼ
:: ========================================
title �ļ�MD5У�鹤�� - %target_file%

:: ����ļ��Ƿ����
if not exist "%target_file%" (
    echo ����Ŀ���ļ������ڣ�
    set /a error_count+=1
    goto error_handling
)

:: �����ļ�MD5ֵ
echo ���ڼ��MD5ֵ...
certutil -hashfile "%target_file%" MD5 > temp_md5.txt 2>&1

:: ��ȡ����õ���MD5ֵ
setlocal enabledelayedexpansion
for /f "skip=1 tokens=*" %%i in (temp_md5.txt) do (
    set "actual_md5=%%i"
    goto md5_extracted
)
:md5_extracted
endlocal & set "actual_md5=%actual_md5: =%"
del temp_md5.txt

:: ��ʾУ����
echo.
echo ========================================
echo �ļ�·����%target_file%
echo Ԥ��MD5��%expected_md5%
echo ʵ��MD5��%actual_md5%
echo ========================================

:: У��MD5ֵ
if /i "%actual_md5%" neq "%expected_md5%" (
    echo ����MD5У��ʧ�ܣ�
    set /a error_count+=1
    goto error_handling
) else (
    echo �ɹ���MD5У��ͨ����
    echo.
    goto continue_execution
)

:: ========================================
:: ������
:: ========================================
:error_handling
echo.
echo �����������ֹ�������������ݣ�
echo 1. ��Ϸ�汾�Ƿ���ȷ
echo 2. ��Ϸ�ļ��Ƿ��޸�

timeout /t 5 > nul
exit /b %error_count%

:: ========================================
:: ����ִ�к�������
:: ========================================
:continue_execution
echo ����ִ�к�������...
:: �ڴ˴�������ĺ�������
:: ʾ������
cls
@echo off
chcp 936 > nul
cls
color 0A

@echo off
:: ========================================
:: �����ļ�У�����
:: ========================================
set "target_file=exe_1095STEAM.xdelta"  :: ҪУ���Ŀ���ļ�
set "expected_md5=055C18FAE6F1A431D531B80696B2C944"  :: Ԥ�ڵ�MD5ֵ
set "error_count=0"  :: ���������

:: ========================================
:: ������ʼ
:: ========================================
title �ļ�MD5У�鹤�� - %target_file%

:: ����ļ��Ƿ����
if not exist "%target_file%" (
    echo ����Ŀ���ļ������ڣ�
    set /a error_count+=1
    goto error_handling
)

:: �����ļ�MD5ֵ
echo ���ڼ��MD5ֵ...
certutil -hashfile "%target_file%" MD5 > temp_md5.txt 2>&1

:: ��ȡ����õ���MD5ֵ
setlocal enabledelayedexpansion
for /f "skip=1 tokens=*" %%i in (temp_md5.txt) do (
    set "actual_md5=%%i"
    goto md5_extracted
)
:md5_extracted
endlocal & set "actual_md5=%actual_md5: =%"
del temp_md5.txt

:: ��ʾУ����
echo.
echo ========================================
echo �ļ�·����%target_file%
echo Ԥ��MD5��%expected_md5%
echo ʵ��MD5��%actual_md5%
echo ========================================

:: У��MD5ֵ
if /i "%actual_md5%" neq "%expected_md5%" (
    echo ����MD5У��ʧ�ܣ�
    set /a error_count+=1
    goto error_handling
) else (
    echo �ɹ���MD5У��ͨ����
    echo.
    goto continue_execution
)

:: ========================================
:: ������
:: ========================================
:error_handling
echo.
echo �����������ֹ�������������ݣ�
echo 1. exe_1095STEAM.xdelta �ļ��Ƿ����
echo 2. ������� �������ļ��� ���������ػ����½�ѹ

timeout /t 5 > nul
exit /b %error_count%

:: ========================================
:: ����ִ�к�������
:: ========================================
:continue_execution
echo ����ִ�к�������...
:: �ڴ˴�������ĺ�������

:: ʾ������

echo.
cls
@echo off
chcp 936 > nul
cls
color 0A

@echo off
:: ========================================
:: �����ļ�У�����
:: ========================================
set "target_file=pak_1095STEAM.xdelta"  :: ҪУ���Ŀ���ļ�
set "expected_md5=C95F306F11D3D962244E55F83ACFAD3D"  :: Ԥ�ڵ�MD5ֵ
set "error_count=0"  :: ���������

:: ========================================
:: ������ʼ
:: ========================================
title �ļ�MD5У�鹤�� - %target_file%

:: ����ļ��Ƿ����
if not exist "%target_file%" (
    echo ����Ŀ���ļ������ڣ�
    set /a error_count+=1
    goto error_handling
)

:: �����ļ�MD5ֵ
echo ���ڼ��MD5ֵ...
certutil -hashfile "%target_file%" MD5 > temp_md5.txt 2>&1

:: ��ȡ����õ���MD5ֵ
setlocal enabledelayedexpansion
for /f "skip=1 tokens=*" %%i in (temp_md5.txt) do (
    set "actual_md5=%%i"
    goto md5_extracted
)
:md5_extracted
endlocal & set "actual_md5=%actual_md5: =%"
del temp_md5.txt

:: ��ʾУ����
echo.
echo ========================================
echo �ļ�·����%target_file%
echo Ԥ��MD5��%expected_md5%
echo ʵ��MD5��%actual_md5%
echo ========================================

:: У��MD5ֵ
if /i "%actual_md5%" neq "%expected_md5%" (
    echo ����MD5У��ʧ�ܣ�
    set /a error_count+=1
    goto error_handling
) else (
    echo �ɹ���MD5У��ͨ����
    echo.
    goto continue_execution
)

:: ========================================
:: ������
:: ========================================
:error_handling
echo.
echo �����������ֹ�������������ݣ�
echo 1. pak_1095STEAM.xdelta �ļ��Ƿ����
echo 2. ������� �������ļ��� ���������ػ����½�ѹ

timeout /t 5 > nul
exit /b %error_count%

:: ========================================
:: ����ִ�к�������
:: ========================================
:continue_execution
echo ����ִ�к�������...
:: �ڴ˴�������ĺ�������

:: ʾ������

@echo off
chcp 936 > nul
cls
color 0A

@echo off
:: ========================================
:: �����ļ�У�����
:: ========================================
set "target_file=xdelta3-3.0.11-x86_64.exe"  :: ҪУ���Ŀ���ļ�
set "expected_md5=7AC21750E2032E5AEB681AC88460BDCE"  :: Ԥ�ڵ�MD5ֵ
set "error_count=0"  :: ���������

:: ========================================
:: ������ʼ
:: ========================================
title �ļ�MD5У�鹤�� - %target_file%

:: ����ļ��Ƿ����
if not exist "%target_file%" (
    echo ����Ŀ���ļ������ڣ�
    set /a error_count+=1
    goto error_handling
)

:: �����ļ�MD5ֵ
echo ���ڼ��MD5ֵ...
certutil -hashfile "%target_file%" MD5 > temp_md5.txt 2>&1

:: ��ȡ����õ���MD5ֵ
setlocal enabledelayedexpansion
for /f "skip=1 tokens=*" %%i in (temp_md5.txt) do (
    set "actual_md5=%%i"
    goto md5_extracted
)
:md5_extracted
endlocal & set "actual_md5=%actual_md5: =%"
del temp_md5.txt

:: ��ʾУ����
echo.
echo ========================================
echo �ļ�·����%target_file%
echo Ԥ��MD5��%expected_md5%
echo ʵ��MD5��%actual_md5%
echo ========================================

:: У��MD5ֵ
if /i "%actual_md5%" neq "%expected_md5%" (
    echo ����MD5У��ʧ�ܣ�
    set /a error_count+=1
    goto error_handling
) else (
    echo �ɹ���MD5У��ͨ����
    echo.
    goto continue_execution
)

:: ========================================
:: ������
:: ========================================
:error_handling
echo.
echo �����������ֹ�������������ݣ�
echo 1. xdelta3-3.0.11-x86_64.exe �ļ��Ƿ����
echo 2. ������� �������ļ��� ���������ػ����½�ѹ

timeout /t 5 > nul
exit /b %error_count%

:: ========================================
:: ����ִ�к�������
:: ========================================
:continue_execution
echo ����ִ�к�������...
:: �ڴ˴�������ĺ�������

:: ʾ������
echo.
cls
title DLCģ�� 2.2.1��װ��
echo(========================================
echo(�����ļ���У�����
echo(���û� Enter ���԰�װ��DLCģ�顱
echo(========================================
echo(========================================
echo( PlantsVsZombies.exe
echo( main.pak
echo( exe_1095STEAM.xdelta
echo( pak_1095STEAM.xdelta
echo( xdelta3-3.0.11-x86_64.exe
echo(========================================
echo(========================================
echo(Made By Adnini983
echo(========================================
echo(========================================
pause
echo �޲� PlantsVsZombies.exe
xdelta3-3.0.11-x86_64.exe -d -s ..\PlantsVsZombies.exe exe_1095STEAM.xdelta ..\PATCH.exe
echo �޲� main.pak
xdelta3-3.0.11-x86_64.exe -d -s ..\main.pak pak_1095STEAM.xdelta ..\PATCH.pak
echo ɾ��������ļ�(�����)
rmdir /s/q ..\compiled
rmdir /s/q ..\data
rmdir /s/q ..\images
rmdir /s/q ..\particles
rmdir /s/q ..\reanim
rmdir /s/q ..\sounds
rmdir /s/q ..\drm
del ..\properties\LawnStrings.txt
del ..\properties\resources.xml
del ..\properties\default.xml
del ..\properties\Layout.xml
del ..\drmss.jpg
del ..\Thumbs.db
del ..\PlantsVsZombies.exe
del ..\main.pak
echo Ӧ�ð�װ
cd ..
rename PATCH.exe PlantsVsZombies.exe
rename PATCH.pak main.pak
echo(========================================
echo(========================================
echo(DLCģ�� 2.2.1��װ���
echo(���û� Enter ���Թرմ˴���
echo(========================================
echo(========================================
pause
exit /b 0
