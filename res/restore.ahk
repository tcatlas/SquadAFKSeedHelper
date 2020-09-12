; Close Squad
    WinClose, SquadGame
    ; Restore the backup settings to the normal file
    FileCopy, C:\Users\%A_UserName%\AppData\Local\SquadGame\Saved\Config\WindowsNoEditor\GameUserSettings.ini.backup, C:\Users\%A_UserName%\Local\SquadGame\Saved\Config\WindowsNoEditor\GameUserSettings.ini, 1
    ; Delete the backup and seeding file to prepare for next launch
    FileDelete, C:\Users\%A_UserName%\AppData\Local\SquadGame\Saved\Config\WindowsNoEditor\GameUserSettings.ini.backup
    FileDelete, C:\Users\%A_UserName%\AppData\Local\SquadGame\Saved\Config\WindowsNoEditor\GameUserSettings.ini.seeding