; Close Squad
    WinClose, SquadGame

    Loop
       {
          MsgBox, ,Closing Squad,Waiting for Squad to close before restoring your settings.,1
          sleep,2000
          ifWinNotExist, SquadGame
            ; Restore the backup settings to the normal file
            FileCopy, %A_MyDocuments%\SquadAFKSeedHelper\settings\GameUserSettings.ini.backup, C:\Users\%A_UserName%\AppData\Local\SquadGame\Saved\Config\WindowsNoEditor\GameUserSettings.ini, 1
            break
       }
       Return
