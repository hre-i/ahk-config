rem HHK-JP

rem copy %~dp0\AutoHotkey.ahk %~dp0\..\..\..\Documents\Autohotkey.ahk

copy %~dp0\..\AutoHotkeyJP.ahk %HOMEDRIVE%%HOMEPATH%\Documents\Autohotkey.ahk

reg import %~dp0\KEYMAP-HHKJP-JP.reg
reg import %~dp0\KBD-JP.reg

echo off

echo ##########################################
echo          Type [Enter] to reboot
echo ##########################################

pause

rem logoff
shutdown /g /t 0
