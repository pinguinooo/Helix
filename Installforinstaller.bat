@echo off
cd %temp%
del main.bat
echo Downloading most latest version of Installer
timeout 1 >nul
curl -s https://raw.githubusercontent.com/PinguinButInSpanish/Installer/main/main.bat --output main.bat
if exist main.bat (echo Successfully Installed! Automatically Opening) else (echo Uh oh thats not good are you connected to the internet? If you are then the host might be down.)
timeout 2 >nul
start main.bat
exit