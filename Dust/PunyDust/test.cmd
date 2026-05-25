@echo off
setlocal

cd /d "%~dp0"
if not exist Build mkdir Build

"%~dp0..\..\tools\inform6.exe" +C:\Source\PunyInform\lib ++%~dp0lib -v5 -e -S -c -E1 dust.inf output.z5
if errorlevel 1 exit /b %errorlevel%

move /Y output.z5 Build\dust.z5 >nul
if errorlevel 1 exit /b %errorlevel%

"%~dp0..\..\tools\dfrotz.exe" Build\dust.z5

endlocal
