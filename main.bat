@echo off
@title Installer
echo                                            Welcome to installer 1.0.0
echo                                            This Program Auto Updates!
pause


cls
echo Welcome to Installer
:start
cls
color 3
ECHO Pick a category
ECHO 1.Presets
ECHO 2.App Store
ECHO 3.Update All Apps
ECHO 4.Change Logs
ECHO 5.Old Change Logs
ECHO 6.Join Discord
ECHO 9.Delete this script and exit
ECHO 0.Exit
set choice=
set /p choice=Type the number to pick a category : 
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto presets
if '%choice%'=='2' goto appstore
if '%choice%'=='3' goto update
if '%choice%'=='4' goto logs
if '%choice%'=='5' goto oldlogs
if '%choice%'=='6' goto discord
if '%choice%'=='7' goto n
if '%choice%'=='8' goto n
if '%choice%'=='9' goto delend
if '%choice%'=='0' goto end
cls
ECHO "%choice%" is not valid, try again
ECHO.
goto start


:presets
cls
echo presets coming soon!
ECHO 0.back
set choice=
set /p choice=Type the number to pick a preset : 
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='0' goto start



:appstore
cls
color 3
ECHO Pick a Preset
ECHO 1.Web Browsers
ECHO 2.Messaging
ECHO 3.Media
ECHO 4.Developer Tools
ECHO 5.Photo
ECHO 6.Documents
ECHO 7.Secerity
ECHO 8.Utilities
ECHO 9.Other
ECHO 0.back
set choice=
set /p choice=Type the number to pick a preset : 
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto browsers
if '%choice%'=='2' goto message
if '%choice%'=='3' goto media
if '%choice%'=='4' goto dev
if '%choice%'=='5' goto photo
if '%choice%'=='6' goto doc
if '%choice%'=='7' goto secerity
if '%choice%'=='8' goto utilities
if '%choice%'=='9' goto other
if '%choice%'=='0' goto start
cls
ECHO "%choice%" is not valid, try again
ECHO.
goto start

:browsers
cls
color 3
ECHO Pick a Preset
ECHO 1.
ECHO 2.
ECHO 3.
ECHO 4.
ECHO 5.
ECHO 6.
ECHO 7.
ECHO 8.
ECHO 9.
ECHO 0.back
set choice=
set /p choice=Type the number to pick a preset : 
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto browsers
if '%choice%'=='2' goto message
if '%choice%'=='3' goto media
if '%choice%'=='4' goto dev
if '%choice%'=='5' goto photo
if '%choice%'=='6' goto doc
if '%choice%'=='7' goto secerity
if '%choice%'=='8' goto utilities
if '%choice%'=='9' goto other
if '%choice%'=='0' goto start
cls
ECHO "%choice%" is not valid, try again
ECHO.
goto start

:update
cls
color 7
winget upgrade --all
pause
goto start

:logs
cls
echo Change logs
echo Version 1.0.0
echo Added the Basics to the program like a appstore,presets and update
pause
goto start

:oldlogs
echo Old changelogs
echo Were still on 1.0.0 no need for older change logs
pause
goto start


:discord
cls
start https://discord.gg/k5Ns2DUvE4
goto start

:delend
del main.bat
del install.bat
exit

:end
exit