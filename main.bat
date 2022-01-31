@echo off
@title Helix
net session >nul 2>&1
if %errorLevel% == 0 (
goto top
) else (
echo ===================================================================================
echo +Administrative permissions required, please close and run Helix as administrator.+
echo ===================================================================================
)
pause >nul
:top
cd %programfiles%
echo                                              Welcome to Helix 1.0.0
echo                                            This Program Auto Updates!
pause
:check
cd %programfiles%\HelixTools
if exist winget.txt (goto winget) else (goto curl)

:curl
cls
color 3
ECHO Pick a Category
ECHO 1.App Store
ECHO 2.Change Logs
ECHO 3.Old Change Logs
ECHO 4.Join Discord
ECHO 5.App Recommendations
ECHO 7.Troubleshoot
ECHO 8.Why am i not seeing all the options?
ECHO 9.Uninstall
ECHO 0.Exit
set choice=
set /p choice=Type the number to pick a Category : 
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto appstorecurl
if '%choice%'=='2' goto logs
if '%choice%'=='3' goto oldlogs
if '%choice%'=='4' goto discord
if '%choice%'=='5' goto apprec
if '%choice%'=='7' goto troubleshootcurl
if '%choice%'=='8' goto wingetnotinstalled
if '%choice%'=='9' goto uninstallcurl
if '%choice%'=='0' goto end
cls
ECHO "%choice%" is not valid, try again
ECHO.
goto curl

:appstorecurl
cls
color 3
ECHO Pick a Category
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
set /p choice=Type the number to pick a Category : 
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto browserscurl
if '%choice%'=='2' goto messagecurl
if '%choice%'=='3' goto mediacurl
if '%choice%'=='4' goto devcurl
if '%choice%'=='5' goto photocurl
if '%choice%'=='6' goto doccurl
if '%choice%'=='7' goto seceritycurl
if '%choice%'=='8' goto utilitiescurl
if '%choice%'=='9' goto othercurl
if '%choice%'=='0' goto curl
cls
ECHO "%choice%" is not valid, try again
ECHO.
goto curl

:browserscurl
cls
color 3
ECHO Pick a Category
ECHO 1.Chrome
ECHO 2.Firefox
ECHO 3.Brave
ECHO 4.Opera
ECHO 5.Opera GX
ECHO 0.back
set choice=
set /p choice=Type the number to pick a Category : 
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto chromecurl
if '%choice%'=='2' goto firefoxcurl
if '%choice%'=='3' goto bravecurl
if '%choice%'=='4' goto operacurl
if '%choice%'=='5' goto operagxcurl
if '%choice%'=='0' goto curl
cls
ECHO "%choice%" is not valid, try again
ECHO.
goto curl

:chromecurl
cls
cd %programfiles%\HelixTools\downloadedapps
color 7
if exist helixchrome.msi (del helixchrome.msi)
echo Now downloading Chrome!
curl https://dl.google.com/dl/chrome/install/googlechromestandaloneenterprise64.msi -# -o helixchrome.msi
if exist helixchrome.msi (start helixchrome.msi) else (goto failed)
pause
goto curl

:firefoxcurl
cls
cd %programfiles%\HelixTools\downloadedapps
color 7
if exist helixfirefox.msi (del helixfirefox.msi)
echo Now downloading Firefox!
curl https://download-installer.cdn.mozilla.net/pub/firefox/releases/95.0/win64/en-US/Firefox%20Setup%2095.0.msi -# -o helixfirefox.msi
if exist helixfirefox.msi (start helixfirefox.msi) else (goto failed)
pause
goto curl

:bravecurl
cls
cd %programfiles%\HelixTools\downloadedapps
color 7
if exist helixbrave.msi (del helixbrave.msi)
echo Now downloading Brave!
curl https://github.com/brave/brave-browser/releases/download/v1.33.102/BraveBrowserStandaloneSilentSetup.exe -# -o helixbrave.msi
if exist helixbrave.msi (start helixbrave.msi) else (goto failed)
pause
goto curl

:operacurl
cls
cd %programfiles%\HelixTools\downloadedapps
color 7
if exist helixopera.exe (del helixopera.exe)
echo Now downloading Opera!
curl https://get.geo.opera.com/pub/opera/desktop/81.0.4196.54/win/Opera_81.0.4196.54_Setup_x64.exe -# -o helixopera.exe
if exist helixopera.exe (start helixopera.exe) else (goto failed)
pause
goto curl

:operagxcurl
cls
cd %programfiles%\HelixTools\downloadedapps
color 7
if exist helixoperagx.exe (del helixoperagx.exe)
echo Now downloading Opera GX!
curl https://get.geo.opera.com/pub/opera_gx/81.0.4196.52/win/Opera_GX_81.0.4196.52_Setup_x64.exe -# -o helixoperagx.exe
if exist helixoperagx.exe (start helixoperagx.exe) else (goto failed)
pause
goto curl

:messagecurl
cls
color 3
ECHO Pick a Category
ECHO 1.Discord
ECHO 2.Zoom
ECHO 3.Trillian
ECHO 4.Thunderbird
ECHO 0.back
set choice=
set /p choice=Type the number to pick a Category : 
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto discordcurl
if '%choice%'=='2' goto zoomcurl
if '%choice%'=='3' goto trilliancurl
if '%choice%'=='4' goto thunderbirdcurl
if '%choice%'=='0' goto curl
cls
ECHO "%choice%" is not valid, try again
ECHO.
goto curl

:discordcurl
cls
cd %programfiles%\HelixTools\downloadedapps
color 7
if exist helixdiscord.msi (del helixdiscord.msi)
echo Now downloading Discord!
curl https://dl.discordapp.net/distro/app/stable/win/x86/1.0.9003/DiscordSetup.exe -# -o helixdiscord.msi
if exist helixdiscord.msi (start helixdiscord.msi) else (goto failed)
pause
goto curl

:zoomcurl
cls
cd %programfiles%\HelixTools\downloadedapps
color 7
if exist helixzoom.msi (del helixzoom.msi)
echo Now downloading Zoom!
curl https://cdn.zoom.us/prod/5.8.7.2058/x64/ZoomInstallerFull.msi -# -o helixzoom.msi
if exist helixzoom.msi (start helixzoom.msi) else (goto failed)
pause
goto curl

:trilliancurl
cls
cd %programfiles%\HelixTools\downloadedapps
color 7
if exist helixtrillian.msi (del helixtrillian.msi)
echo Now downloading Trillian!
curl https://trillian.im/get/windows/6.5/trillian-v6.5.0.17.msi -# -o helixtrillian.msi
if exist helixtrillian.msi (start helixtrillian.msi) else (goto failed)
pause
goto curl

:thunderbirdcurl
cls
cd %programfiles%\HelixTools\downloadedapps
color 7
if exist helixthunderbird.msi (del helixthunderbird.msi)
echo Now downloading Thunderbird!
curl https://download-installer.cdn.mozilla.net/pub/thunderbird/releases/91.4.0/win64/en-US/Thunderbird%20Setup%2091.4.0.msi -# -o helixthunderbird.msi
if exist helixthunderbird.msi (start helixthunderbird.msi) else (goto failed)
pause
goto curl


cls
cd %programfiles%/HelixTools/downloadedapps
color 7
if exist helix. (del helix.)
echo Now downloading !
curl  -# -o helix.
if exist helix. (start helix.) else (goto failed)
pause
goto curl

 ::winget starts here

:winget
cls
color 3
ECHO Pick a Category
ECHO 1.Packs
ECHO 2.App Store
ECHO 3.Update All Apps
ECHO 4.Change Logs
ECHO 5.Old Change Logs
ECHO 6.Join Discord
ECHO 7.App Recommendations
ECHO 8.Troubleshoot
ECHO 9.Uninstall
ECHO 0.Exit
set choice=
set /p choice=Type the number to pick a Category : 
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto packs
if '%choice%'=='2' goto appstore
if '%choice%'=='3' goto update
if '%choice%'=='4' goto logs
if '%choice%'=='5' goto oldlogs
if '%choice%'=='6' goto discord
if '%choice%'=='7' goto apprec
if '%choice%'=='8' goto troubleshootwinget
if '%choice%'=='9' goto uninstall
if '%choice%'=='0' goto end
cls
ECHO "%choice%" is not valid, try again
ECHO.
goto winget

:packs
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
set /p choice=Type the number to pick a Category : 
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
if '%choice%'=='0' goto winget
cls
ECHO "%choice%" is not valid, try again
ECHO.
goto winget

:basicinstallm
color 3
cls

:basicinstall
color 3
cls

:workfromhome
color 3
cls
winget install --id=Microsoft.Teams -e  && winget install --id=Zoom.Zoom -e  && winget install --id=Notion.Notion -e  && winget install --id=SlackTechnologies.Slack -e  && winget install --id=Toggl.TogglDesktop -e  && winget install --id=ShareX.ShareX -e  && winget install --id=Loom.Loom -e  && winget install --id=Discord.Discord -e  && winget install --id=Microsoft.Skype -e  && winget install --id=Google.Chrome -e  && winget install --id=Microsoft.OneDrive -e 
pause
goto winget

:essentialtools
color 3
cls
winget install --id=ShareX.ShareX -e  && winget install --id=QL-Win.QuickLook -e  && winget install --id=Notepad++.Notepad++ -e  && winget install --id=GIMP.GIMP -e  && winget install --id=OBSProject.OBSStudio -e  && winget install --id=File-New-Project.EarTrumpet -e  && winget install --id=Wox.Wox -e  && winget install --id=VideoLAN.VLC -e  && winget install --id=DelugeTeam.Deluge -e  && winget install --id=RARLab.WinRAR -e  && winget install --id=Audacity.Audacity -e  && winget install --id=AgileBits.1Password -e  && winget install --id=ExpressVPN.ExpressVPN -e 
pause
goto winget

:entertainment
color 3
cls
winget install --id=Apple.iTunes -e  && winget install --id=Deezer.Deezer -e  && winget install --id=VideoLAN.VLC -e  && winget install --id=Amazon.Music -e  && winget install --id=Ytmdesktop.Ytmdesktop -e  && winget install --id=SamuelAttard.GooglePlayMusicDesktopPlayer -e  && winget install --id=Sonos.Controller -e 
pause
goto winget

:gaming
color 3
cls
winget install --id=Valve.Steam -e  && winget install --id=Discord.Discord -e  && winget install --id=EpicGames.EpicGamesLauncher -e  && winget install --id=Nvidia.GeForceExperience -e  && winget install --id=Playnite.Playnite -e  && winget install --id=MoonlightGameStreamingProject.Moonlight -e  && winget install --id=Logitech.LGS -e  && winget install --id=OBSProject.OBSStudio -e 
pause
goto winget

:developerapps
color 3
cls
winget install --id=Notepad++.Notepad++ -e  && winget install --id=PenguinLabs.Cacher -e  && winget install --id=Microsoft.WindowsTerminal -e  && winget install --id=GitHub.GitHubDesktop -e  && winget install --id=GitHub.cli -e  && winget install --id=PuTTY.PuTTY -e  && winget install --id=GitHub.Atom -e  && winget install --id=lukehaas.RunJS -e  && winget install --id=Toinane.Colorpicker -e 
pause
goto winget

:communication
color 3
cls
winget install --id=MehediHassan.Tweeten -e  && winget install --id=Caprine.Caprine -e  && winget install --id=Microsoft.Skype -e  && winget install --id=AmineMouafik.Ferdi -e  && winget install --id=Discord.Discord -e  && winget install --id=SlackTechnologies.Slack -e 
pause
goto winget

:school
color 3
cls
winget install --id=evernote.evernote -e  && winget install --id=LibreOffice.LibreOffice -e  && winget install --id=Qalculate.Qalculate -e  && winget install --id=Zoom.Zoom -e  && winget install --id=Microsoft.Teams -e  && winget install --id=Automattic.Simplenote -e  && winget install --id=AcroSoftware.CutePDFWriter -e  && winget install --id=Apache.OpenOffice -e  && winget install --id=Notion.Notion -e  && winget install --id=StandardNotes.StandardNotes -e  && winget install --id=voidtools.Everything -e  && winget install --id=Wox.Wox -e  && winget install --id=QL-Win.QuickLook -e 
pause
goto winget

:appstore
cls
color 3
ECHO Pick a Category
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
set /p choice=Type the number to pick a Category : 
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
if '%choice%'=='0' goto winget
cls
ECHO "%choice%" is not valid, try again
ECHO.
goto winget

:browsers
cls
color 3
ECHO Pick a Category
ECHO 1.Chrome
ECHO 2.Firefox
ECHO 3.Brave
ECHO 4.Opera
ECHO 5.Opera GX
ECHO 0.back
set choice=
set /p choice=Type the number to pick a Category : 
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto chrome
if '%choice%'=='2' goto firefox
if '%choice%'=='3' goto brave
if '%choice%'=='4' goto opera
if '%choice%'=='5' goto operagx
if '%choice%'=='0' goto winget
cls
ECHO "%choice%" is not valid, try again
ECHO.
goto winget

:chrome
cls
color 7
winget install --id Google.Chrome
pause
goto winget

:firefox
cls
color 7
winget install --id Mozilla.Firefox
pause
goto winget

:brave
cls
color 7
winget install --id BraveSoftware.BraveBrowser
pause
goto winget

:opera
cls
color 7
winget install --id Opera.Opera
pause goto winget

:operagx
cls
color 7
winget install --id Opera.OperaGX

:message
cls
color 3
ECHO Pick a Category
ECHO 1.Discord
ECHO 2.Zoom
ECHO 3.Trillian
ECHO 4.Thunderbird
ECHO 0.back
set choice=
set /p choice=Type the number to pick a Category : 
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto discorddl
if '%choice%'=='2' goto zoom
if '%choice%'=='3' goto trillian
if '%choice%'=='4' goto thunderbird
if '%choice%'=='0' goto winget
cls
ECHO "%choice%" is not valid, try again
ECHO.
goto winget

:discorddl
cls
color 7
winget install Discord.Discord
pause
goto winget

:zoom
cls
color 7
winget install Zoom.Zoom
pause 
goto winget

:pidgen
cls
color 7
winget install pidgen
:update
cls
color 7
winget upgrade --all
pause
goto winget

:media
cls
color 3
ECHO Pick a Category
ECHO 1.iTunes
ECHO 2.VLC
ECHO 3.Spotify
ECHO 4.HandBrake
ECHO 5.Audacity
ECHO 6.foobar2000
ECHO 7.AIMP
ECHO 8.MediaMonkey
ECHO 9.Winamp
ECHO 0.Back
set choice=
set /p choice=Type the number to pick a Category : 
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto itunes
if '%choice%'=='2' goto vlc
if '%choice%'=='3' goto spotify
if '%choice%'=='4' goto handbrake
if '%choice%'=='5' goto audacity
if '%choice%'=='6' goto foobar2000
if '%choice%'=='7' goto aimp
if '%choice%'=='8' goto mediamonkey
if '%choice%'=='9' goto winamp
if '%choice%'=='0' goto winget
cls
ECHO "%choice%" is not valid, try again
ECHO.
goto winget

:itunes
cls 
color 3
winget install Apple.iTunes
pause
goto winget

:vlc
cls 
color 3
winget install VideoLAN.VLC
pause
goto winget

:spotify
cls
color 3
winget install Spotify.Spotify
pause
goto winget

:handbrake
cls 
color 3
winget install HandBrake.HandBrake
pause
goto winget

:audacity
cls
color 3
winget install Audacity.Audacity
pause
goto winget

:foobar2000
cls
color 3
winget install PeterPawlowski.foobar2000
pause
goto winget

:aimp
cls
color 3
winget install AIMP.AIMP
pause
goto winget

:mediamonkey
cls 
color 3
winget install VentisMedia.MediaMonkey
pause
goto winget

:winamp
cls
color 3
winget install Radionomy.Winamp
pause
goto winget

:dev
cls
color 3
ECHO Pick a Category
ECHO 1.Visual Studio Code
ECHO 2.Eclipse
ECHO 3.Python 3
ECHO 4.FileZilla
ECHO 5.PuTTY
ECHO 6.WinSCP
ECHO 7.Notepad++
ECHO 8.WinMerge
ECHO 0.Back
set choice=
set /p choice=Type the number to pick a Category : 
if not '%choice%'=='' set choice=%choice:~0,1%
if '%choice%'=='1' goto visualstudiocode
if '%choice%'=='2' goto 
if '%choice%'=='3' goto 
if '%choice%'=='4' goto 
if '%choice%'=='5' goto 
if '%choice%'=='6' goto 
if '%choice%'=='7' goto 
if '%choice%'=='8' goto 
if '%choice%'=='9' goto 
if '%choice%'=='0' goto 
cls
ECHO "%choice%" is not valid, try again
ECHO.
goto winget

:visualstudiocode
cls
color 3
winget install Microsoft.VisualStudioCode
pause
goto winget

:logs
cls
echo                            --Change logs--
echo                            -Version 1.0.0-
echo Added the Basics to the program like a appstore,presets and update
pause
goto check

:oldlogs
cls
echo                           --Old changelogs--
echo Were still on 1.0.0 no need for older change logs
pause
goto check


:discord
cls
start https://discord.gg/SKUtXVRqDQ
goto check

:apprec
cls
start https://forms.gle/9ts3urLoryk7ogJb6
goto check

:uninstall
cls
cd %programfiles%
echo Now Uninstalling Helix
timeout 2 >nul
del HelixTools
cls
echo Uninstall finished! Its sad to see you go :(
pause
exit

:failed
color 4 
echo Failed to install this app!! Please check your Connection or Firewall.
echo returning to appstore
timeout 5 >nul
cls
echo 5
timeout 1 >nul
echo 4
timeout 1 >nul
echo 3
timeout 1 >nul
echo 2
timeout 1 >nul
echo 1
timeout 1 >nul
cls
color 3
goto curl

:troubleshootcurl
ping -n 2 -w 700 www.google.com | find "bytes="
cls
IF %ERRORLEVEL% EQU 0 (
    SET internet=Connected to the internet.
) ELSE (
    SET internet=Not connected to the internet.
)
cls
echo ==================================
echo +      Helix Troubleshooter      +
echo ==================================
echo =+=+=+If you are having a problem with Helix please make a ticket and please include this log and your issue in the ticket.=+=+=+
echo ===== LOG STARTS HERE =====
echo %internet%
ver
echo ===== LOG ENDS HERE =====
echo =+=+=+If you are having a problem with Helix please make a ticket and please copy this log and state your issue in the ticket.=+=+=+
pause
goto curl

:troubleshootwinget
ping -n 2 -w 700 www.google.com | find "bytes="
cls
IF %ERRORLEVEL% EQU 0 (
    SET internet=Connected to the internet.
) ELSE (
    SET internet=Not connected to the internet.
)
cls
cd %programfiles%\HelixTools
mode con:cols=135 lines=36
echo ==================================
echo +      Helix Troubleshooter      +
echo ==================================
echo =+=+=+If you are having a problem with Helix please make a ticket and please include this log and your issue in the ticket.=+=+=+
echo ===== LOG STARTS HERE =====
echo %internet%
ver
type winget.txt
echo ===== LOG ENDS HERE =====
echo =+=+=+If you are having a problem with Helix please make a ticket and please copy this log and state your issue in the ticket.=+=+=+
pause
cls
mode con:cols=122 lines=30
goto winget

:end
exit
