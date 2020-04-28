rem HHK-JP

copy %~dp0\AutoHotkey.ahk %~dp0\..\..\..\Documents\Autohotkey.ahk

reg import %~dp0\KEYMAP-HHKJP-US.reg
reg import %~dp0\KBD-US.reg

echo off

echo Type [Enter] to log off.

pause

rem logoff
shutdown /g /t 0
