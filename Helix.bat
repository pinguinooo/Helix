@echo off
net session >nul 2>&1
if %errorLevel% == 0 (
goto top
) else (
echo =================================================================================
echo Administrative permissions required, please close and run Helix as administrator.
echo =================================================================================
)
pause >nul
:top
cd %temp%
curl -s https://raw.githubusercontent.com/pinguinooo/Helix/main/update.bat --output update.bat
start update.bat
exit