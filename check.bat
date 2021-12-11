@echo off
echo Administrative permissions required. Detecting permissions...
net session >nul 2>&1
if %errorLevel% == 0 (
goto 
) else (
echo Administrative permissions required, please close and run this as an administrator.
)
pause >nul