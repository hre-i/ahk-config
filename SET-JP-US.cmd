rem HHK-JP

rem copy %~dp0\AutoHotkey.ahk %~dp0\..\..\..\Documents\Autohotkey.ahk

copy %~dp0\AutoHotkey.ahk C:\Users\hre\Documents\Autohotkey.ahk

reg import %~dp0\KEYMAP-JP-US.reg
reg import %~dp0\KBD-US.reg

echo off

echo ##########################################
echo          Type [Enter] to reboot
echo ##########################################

pause

rem logoff
shutdown /g /t 0
