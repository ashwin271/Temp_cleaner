@echo off
echo.
echo Cleaning users temp files...
del C:\Users\%username%\AppData\Local\temp\*.* /f /s /q
timeout /t 2
cls

echo.
echo Cleaning system temp files...
del C:\Windows\Temp\*.* /f /s /q
timeout /t 2
cls

echo.
set /p ch="Do you want to clean prefetch folder?(Y/n) : "
if %ch%==y goto :clean_prefetch
if %ch%==Y goto :clean_prefetch 
goto :ext 

:clean_prefetch
echo.
echo Cleaning files from prefetch...
del C:\Windows\Prefetch\*.* /f /s /q

:ext
cls
echo Temp files cleaned successfully...!!
timeout /t 3 
exit