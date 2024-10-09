rem HHK-JP

REM copy %~dp0\..\Autohotkey.ahk %HOMEDRIVE%%HOMEPATH%\Documents\Autohotkey.ahk

reg import %~dp0\KEYMAP-HHKJP-US.reg
reg import %~dp0\KBD-US.reg

echo off

echo ##########################################
echo          Type [Enter] to reboot
echo ##########################################

pause

rem logoff
shutdown /g /t 0
