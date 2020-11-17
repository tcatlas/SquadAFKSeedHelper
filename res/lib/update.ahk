;AutoUpdate Example - Name this file as Update.ahk


;I plan on having a version # set in a variable in the script that will be checked against a remote
;File with another version number - If the remote version # is greater, this will run.


FileDelete,Update2.ahk ;Housecleaning for this example only
FileAppend,MsgBox Version 2,Update2.ahk ;Create the 'new version'
;In a real script this would be copied from a remote location with FileCopy or UrlDownloadToFile


MsgBox Version 1 ;Identify this script as version 1


BatchFile=(
Ping 127.0.0.1
Del Update1.ahk
Rename Update2.ahk Update1.ahk
%A_ScriptFullPath%
Del Update.bat
)

/*
Design a batch file to:
ping to give time for script to exit for...
delete version 1
rename version 2 to version 1
run the new version
delete the batch file
*/


FileDelete,update.bat ;Housecleaning
FileAppend,%BatchFile%,update.bat ;Create the bat
MsgBox, Preparing to update - Please stand by! ;Alert the user that the app will be down for a few seconds
Run,update.bat,,hide ;Run it (hidden)
ExitApp ;Get out of Dodge so this script can be deleted