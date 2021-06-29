::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAnk
::fBw5plQjdG8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF65
::cxAkpRVqdFKZSjk=
::cBs/ulQjdF65
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFBxVQQGQAE+/Fb4I5/jHxuSUtkwRWOctNorD39Q=
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
@title Windows 64x App Installer by Adam
@ECHO off
cls
:start
cls
color 5
ECHO   ================================================
ECHO  /                 Made by Adam                   \
ECHO  /                 ! BigBoi#0009                  \
ECHO  /          msg me on discord for support         \
ECHO   ================================================

ECHO Pick a category
ECHO 1.Browsers
ECHO 2.Text Editors
ECHO 3.Storage
ECHO 4.Compression
ECHO 5.Messaging
ECHO 6.Image Editors
ECHO 7.File Sharing
ECHO 8.Media
ECHO 9.Next Page
ECHO 0.EXIT
set choice=
set /p choice=Type the number to pick a category : 
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto browsers
if '%choice%'=='2' goto texteditors
if '%choice%'=='3' goto storage
if '%choice%'=='4' goto compression
if '%choice%'=='5' goto messaging
if '%choice%'=='6' goto imageeditors
if '%choice%'=='7' goto media
if '%choice%'=='8' goto security
if '%choice%'=='9' goto page2
if '%choice%'=='0' goto end
cls
ECHO "%choice%" is not valid, try again
ECHO.
goto start
:page2
cls
ECHO 1.Dev Tools
ECHO 2.Utilities
ECHO 3.Other
ECHO 9.Back
ECHO 0.EXIT
set choice=
set /p choice=Type the number to pick a category : 
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto devtools
if '%choice%'=='2' goto utilities
if '%choice%'=='3' goto other
if '%choice%'=='9' goto start
if '%choice%'=='0' goto end
cls
ECHO "%choice%" is not valid, try again
ECHO.
goto start
"BROWSERS menu"
:browsers
cls
ECHO BROWSERS
ECHO 1. Install Chrome (recommended for beginners)
ECHO 2. Intsall Firefox (recommended by me because of privacy reasons)
ECHO 3. Install Opera (not recommended by me)
ECHO 4. Install Opera GX (not recommended by me)
ECHO 5. Install Brave (not recommended by me)
ECHO 9. Back
ECHO 0. EXIT
set choice=
set /p choice=Type the number to Install a program : 
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto chrome
if '%choice%'=='2' goto firefox
if '%choice%'=='3' goto opera
if '%choice%'=='4' goto operagx
if '%choice%'=='5' goto brave
if '%choice%'=='9' goto start
if '%choice%'=='0' goto end
cls
ECHO "%choice%" is not valid, try again
ECHO.
goto start
"Browsers install"
:chrome
ECHO Opening ChromeSetup.exe
start chrome.exe
cls
goto start
:firefox
ECHO Installing Firefox.exe
start FirefoxInstaller.exe
cls
goto start
:opera
ECHO Installing Opera
start OperaSetup.exe
cls
goto start
:operagx
ECHO Installing Opera GX
start OperaGXSetup.exe
cls
goto start
:brave
ECHO Installing Brave
start BraveBrowserSetup.exe
cls
goto start
"Text Editors menu"
:texteditors
cls
ECHO TEXT EDITORS
ECHO 1. Install Notepad
ECHO 2. Intsall Libre Office
ECHO 3. Install Visual Studio Code
ECHO 9. Back
ECHO 0. EXIT
set choice=
set /p choice=Type the number to Install a program : 
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto notepad
if '%choice%'=='2' goto libreoffice
if '%choice%'=='3' goto vscode
if '%choice%'=='9' goto start
if '%choice%'=='0' goto end
cls
ECHO "%choice%" is not valid, try again
ECHO.
goto start
"Text Editors install"
:notepad
ECHO Installing Notepad ++
start npp.7.9.1.Installer.exe
cls
goto start
:libreoffice
ECHO Installing libre Office
start LibreOffice_7.0.4_Win_x64.msi
cls
goto start
:atom
ECHO Installing Atom
start AtomSetup-x64.exe
cls
goto start
:vscode
ECHO Installing Visual Studio Code
start VSCodeUserSetup-x64-1.52.1.exe
cls
goto start
"Storage menu"
:storage
cls
ECHO TEXT EDITORS
ECHO 1. Install Dropbox
ECHO 2. Intsall Mega
ECHO 9. Back
ECHO 0. EXIT
set choice=
set /p choice=Type the number to Install a program : 
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto dropbox
if '%choice%'=='2' goto mega
if '%choice%'=='9' goto start
if '%choice%'=='0' goto end
cls
ECHO "%choice%" is not valid, try again
ECHO.
goto start
"Storage Install"
:dropbox
ECHO Installing Dropbox
start DropboxInstaller.exe
cls
goto start
:mega
ECHO Installing Mega
start MEGAsyncSetup64.exe
cls
goto start
"compression Menu"
:compression
cls
ECHO TEXT EDITORS
ECHO 1. Install WinRAR
ECHO 2. Intsall 7Zip
ECHO 9. Back
ECHO 0. EXIT
set choice=
set /p choice=Type the number to Install a program : 
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto winrar
if '%choice%'=='2' goto 7zip
if '%choice%'=='9' goto start
if '%choice%'=='0' goto end
cls
ECHO "%choice%" is not valid, try again
ECHO.
goto start
"compression install"
:winrar
ECHO Installing WinRAR
start winrar-x64-600.exe
cls
goto start
:7zip
ECHO Installing 7Zip
start 7z1900-x64.exe
cls
goto start
"Messaging Menu"
:messaging
cls
ECHO Messaging
ECHO 1. Install Discord
ECHO 2. Intsall Zoom
ECHO 9. Back
ECHO 0. EXIT
set choice=
set /p choice=Type the number to Install a program : 
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto discord
if '%choice%'=='2' goto zoom
if '%choice%'=='9' goto start
if '%choice%'=='0' goto end
cls
ECHO "%choice%" is not valid, try again
ECHO.
goto start
"messaging install"
:discord
ECHO Installing Discord
start DiscordSetup.exe
cls
goto start
:zoom
ECHO Installing Zoom
start ZoomInstaller.exe
cls
goto start
"Image Editors menu"
:imageeditors
cls
ECHO Messaging
ECHO 1. Install Paint.net
ECHO 2. Intsall Blender
ECHO 3. Install Krita
ECHO 4. Install Gimp
ECHO 5. Install IrfanView
ECHO 6. Install XnView
ECHO 7. Install Inkscape
ECHO 9. Back
ECHO 0. EXIT
set choice=
set /p choice=Type the number to Install a program : 
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto paint
if '%choice%'=='2' goto blender
if '%choice%'=='2' goto krita
if '%choice%'=='2' goto gimp
if '%choice%'=='9' goto start
if '%choice%'=='0' goto end
cls
ECHO "%choice%" is not valid, try again
ECHO.
goto start
"image editors install"
:paint
ECHO Installing Paint.net
start paint.net.4.2.14.install.exe
cls
goto start
:blender
ECHO Installing Blender
start blender-2.91.0-windows64.msi
cls
goto start
:krita
ECHO Installing Krita
start krita-x64-4.4.1-setup.exe
cls
goto start
:gimp
ECHO Installing Gimp
start gimp-2.10.22-setup.exe
cls
goto start
"file sharing menu"
:fileshare
cls
ECHO Messaging
ECHO 1. Install Paint.net
ECHO 2. Intsall Blender
ECHO 3. Install Krita
ECHO 4. Install Gimp
ECHO 5. Install IrfanView
ECHO 6. Install XnView
ECHO 7. Install Inkscape
ECHO 9. Back
ECHO 0. EXIT
set choice=
set /p choice=Type the number to Install a program : 
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto paint
if '%choice%'=='2' goto blender
if '%choice%'=='2' goto krita
if '%choice%'=='2' goto gimp
if '%choice%'=='9' goto start
if '%choice%'=='0' goto end
cls
ECHO "%choice%" is not valid, try again
ECHO.
goto start
"================================="

"================================="
:end
exit