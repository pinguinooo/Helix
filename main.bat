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
echo 1.Basic Install (mini)
echo 2.Basic Install
echo 3.Work From Home
echo 4.Essential Tools
echo 5.Entertainment
echo 6.Gaming
echo 7.Developer
echo 8.Communication
echo 9.School
ECHO 0.back
set choice=
set /p choice=Type the number to pick a preset : 
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto basicinstallm
if '%choice%'=='2' goto basicinstall
if '%choice%'=='3' goto workfromhome
if '%choice%'=='4' goto essentialtools
if '%choice%'=='5' goto entertainment
if '%choice%'=='6' goto gaming
if '%choice%'=='7' goto developerapps
if '%choice%'=='8' goto communication
if '%choice%'=='9' goto school
if '%choice%'=='0' goto start
cls
ECHO "%choice%" is not valid, try again
ECHO.
goto start

:basicinstallm
color 3
cls

:basicinstall
color 3
cls

:workfromhome
color 3
cls

:essentialtools
color 3
cls

:entertainment
color 3
cls

:gaming
color 3
cls

:developerapps
color 3
cls

:communication
color 3
cls

:school
color 3
cls

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
ECHO 1.Chrome
ECHO 2.Firefox
ECHO 3.Brave
ECHO 4.Opera
ECHO 5.Opera GX
ECHO 0.back
set choice=
set /p choice=Type the number to pick a preset : 
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto chrome
if '%choice%'=='2' goto firefox
if '%choice%'=='3' goto brave
if '%choice%'=='4' goto opera
if '%choice%'=='5' goto operagx
if '%choice%'=='0' goto start
cls
ECHO "%choice%" is not valid, try again
ECHO.
goto start

:chrome
cls
color 7
winget install --id Google.Chrome
pause
goto start

:firefox
cls
color 7
winget install --id Mozilla.Firefox
pause
goto start

:brave
cls
color 7
winget install --id BraveSoftware.BraveBrowser
pause
goto start

:opera
cls
color 7
winget install --id Opera.Opera
pause goto start

:operagx
cls
color 7
winget install --id Opera.OperaGX

:message


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