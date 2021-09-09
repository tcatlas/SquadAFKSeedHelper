; check to see if the backup file already exists, if so game was closed outside of script and we don't want to overwrite users' settings
    if FileExist( "C:\Users\%A_UserName%\AppData\Local\SquadGame\Saved\Config\WindowsNoEditor\GameUserSettings.ini.backup" ) {
        Goto, launchgame
    }

    ; Copy the users' settings to a backup file, then copy seeding settings to the normal file
    FileCopy, C:\Users\%A_UserName%\AppData\Local\SquadGame\Saved\Config\WindowsNoEditor\GameUserSettings.ini, %A_MyDocuments%\SquadAFKSeedHelper\settings\GameUserSettings.ini.backup, 1
    sleep, 1000
    FileCopy, %A_MyDocuments%\SquadAFKSeedHelper\settings\GameUserSettings.ini.seeding, C:\Users\%A_UserName%\AppData\Local\SquadGame\Saved\Config\WindowsNoEditor\GameUserSettings.ini, 1

    ; Start Squad on Bloody Bucket's primary server
    ; May change this in the future to ask the user which server to join.
    launchgame:
    run, steam://connect/104.128.58.13:27165

    ; Wait 120 seconds, then minimize Squad
    Sleep, 120000
    WinMinimize, SquadGame
