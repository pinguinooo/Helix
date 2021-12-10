@echo off
@title update
cd %temp%
del main.bat
echo Downloading latest version of Helix
timeout 1 >nul
curl -s https://raw.githubusercontent.com/pinguinooo/Helix/main/main.bat --output main.bat
if exist main.bat (echo Successfully Installed! Automatically Opening) else (echo Uh oh thats not good are you connected to the internet? If you are then the host might be down.)
echo Please wait, Checking if you have winget installed
if exist winget.txt (del winget.txt)
powershell.exe Get-AppxPackage -Name *AppInstaller* > winget.txt
timeout 1 >nul
start main.bat
exit