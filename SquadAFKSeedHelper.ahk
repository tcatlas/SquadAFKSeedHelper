; AHK 1.1.33.02
; Created by Travis Cochran (DiscoveryOV, Bloody Bucket)
; Released under GPL-3.0

version = 0.1b

; Install the seeding file from the executable
FileInstall, config\GameUserSettings.ini.seeding, C:\Users\%A_UserName%\AppData\Local\SquadGame\Saved\Config\WindowsNoEditor\GameUserSettings.ini.seeding, 1

; Install servers.ini and read it
FileCreateDir, %A_MyDocuments%\SquadAFKSeedHelper\
FileInstall, config\servers.ini, %A_MyDocuments%\SquadAFKSeedHelper\servers.ini
IniRead, servers, %A_MyDocuments%\SquadAFKSeedHelper\servers.ini, BloodyBucket, Servers


#Include, res/main.ahk
