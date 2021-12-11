@echo off
SET "status="
ping -n 2 -w 700 www.google.com | find "bytes="
IF %ERRORLEVEL% EQU 0 (
    SET internet=Connected to the internet.
) ELSE (
    SET internet=Not connected to the internet.
)
cls
echo %internet%
pause