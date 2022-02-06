; # Win (Windows logo key).
; ! Alt
; ^ Control
; + Shift
; < Use the left key of the pair.
; > Use the right key of the pair.

;;;;;;;; Applicaton Luncher

;;;; (A) Explorer
>!a:: Send,#1
;>!a::
;Process,Exist,Explorer.exe
;IfWinExist ahk_class CabinetWClass
;{
;    WinActivate
;} else {
;    Run, explorer,,, pid
;    WinWait, ahk_pid %pid%
;    WinActivate, ahk_pid %pid%
;}
;Return

;;;; (W) Web Browser (Microsoft Edge)
>!w:: Send,#2
;>!w::
;Process,Exist,chrome.exe
;if (ErrorLevel <> 0) {
;    WinActivate,ahk_pid %ErrorLevel%
;} else {
;    Run, "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Google Chrome.lnk",,, pid
;    WinWait, ahk_pid %pid%
;    WinActivate, ahk_pid %pid%
;}
;Return

;;;; (S) Terminal Emulator (Mintty/Wintty)
>!s:: Send,#3
;>!s::
;Process,Exist,WindowsTerminal.exe
;if (ErrorLevel <> 0) {
;    WinActivate,ahk_pid %ErrorLevel%
;} else {
;    Process,Exist,mintty.exe
;    if (ErrorLevel <> 0) {
;        WinActivate,ahk_pid %ErrorLevel%
;    } else {
;        Run "C:\Users\ihre\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Terminal.lnk",,, pid
;        WinWait, ahk_pid %pid%
;        WinActivate, ahk_pid %pid%
;    }
;}
;Return

;;;; OneNote
>!e:: Send,#4

;;;; Thunderbird
>!r:: Send,#5
;Process,Exist,thunderbird.exe
;if (ErrorLevel <> 0) {
;    WinActivate,ahk_pid %ErrorLevel%
;} else {
;    Run "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Mozilla Thunderbird.lnk",,, pid
;    WinWait, ahk_pid %pid%
;    WinActivate, ahk_pid %pid%
;}
;Return

;;;; Chrome
>!t:: Send,#6

>!d:: Send,#7
>!f:: Send,#8
>!g:: Send,#9
