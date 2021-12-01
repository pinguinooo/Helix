@echo off
cls & color 09 
set Location=C:\Users\Damian\Desktop\main
set FileName=winget.txt
echo( & cls
echo(  & echo  Looking for Winget Installation
TimeOut /T 3 /NoBreak>Nul
cls
If exist "%Location%\%FileName%"  ( color 0A && echo Winget is installed. && pause  
) ELSE (
    Color 0C & echo Winget is not installed. & pause
)