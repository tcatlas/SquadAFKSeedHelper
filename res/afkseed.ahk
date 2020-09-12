; check to see if the backup file already exists, if so game was closed outside of script and we don't want to overwrite users' settings
    if FileExist( "C:\Users\%A_UserName%\Local\SquadGame\Saved\Config\WindowsNoEditor\GameUserSettings.ini.backup" ) {
        Goto, launchgame
    }

    ; Copy the users' settings to a backup file, then copy seeding settings to the normal file    
    FileCopy, C:\Users\%A_UserName%\AppData\Local\SquadGame\Saved\Config\WindowsNoEditor\GameUserSettings.ini, C:\Users\%A_UserName%\AppData\Local\SquadGame\Saved\Config\WindowsNoEditor\GameUserSettings.ini.backup, 1
    FileCopy, C:\Users\%A_UserName%\AppData\Local\SquadGame\Saved\Config\WindowsNoEditor\GameUserSettings.ini.seeding, C:\Users\%A_UserName%\AppData\Local\SquadGame\Saved\Config\WindowsNoEditor\GameUserSettings.ini, 1
    
    ; Start Squad on Bloody Bucket's primary server
    ; May change this in the future to ask the user which server to join.
    launchgame:
    run, steam://connect/chi1-squad1.bloodybucket.net:27165

    ; Wait 30 seconds, then minimize Squad
    Sleep, 30000
    WinMinimize, SquadGame