@echo off
net session >nul 2>&1
if %errorLevel% == 0 (
goto top
) else (
echo ===================================================================================
echo +Administrative permissions required, please close and run Helix as administrator.+
echo ===================================================================================
)
pause >nul
:top
cd %programfiles%
if exist HelixTools cd HelixTools else mkdir HelixTools
cd HelixTools
mkdir downloadedapps
cd %programfiles%\HelixTools
curl -s https://raw.githubusercontent.com/pinguinooo/Helix/main/update.bat --output update.bat
start update.bat
exit