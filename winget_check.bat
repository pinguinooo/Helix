@echo off
color 09 
powershell.exe Get-AppxPackage -Name *AppInstaller* > winget.txt
start 2.bat
TimeOut /T 3 /NoBreak>Nul
