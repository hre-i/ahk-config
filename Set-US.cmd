rem 英語配列キーボード

copy %~dp0\AutoHotkey-US.ahk %~dp0\..\..\..\Documents\Autohotkey.ahk

reg import %~dp0\KEYMAP-US.reg
reg import %~dp0\KBD-US.reg

pause

shutdown /g /t 0
