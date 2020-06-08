rem HHK-JP

rem copy %~dp0\AutoHotkey.ahk %~dp0\..\..\..\Documents\Autohotkey.ahk

reg import %~dp0\KEYMAP-JP-US.reg
reg import %~dp0\KBD-US.reg

echo off

echo Type [Enter] to log off.

pause

rem logoff
shutdown /g /t 0
