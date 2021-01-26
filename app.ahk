; # Win (Windows logo key).
; ! Alt
; ^ Control
; + Shift
; < Use the left key of the pair.
; > Use the right key of the pair.

;;;;;;;; Applicaton Luncher

;;;; (A) Explorer
F11 & a:: #1
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
F11 & w:: #2
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
F11 & s::
;Process,Exist,WindowsTerminal.exe
;if (ErrorLevel <> 0) {
;    WinActivate,ahk_pid %ErrorLevel%
;} else {
    Process,Exist,mintty.exe
    if (ErrorLevel <> 0) {
        WinActivate,ahk_pid %ErrorLevel%
    } else {
        Run "C:\Users\hre\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Terminal.lnk",,, pid
        WinWait, ahk_pid %pid%
        WinActivate, ahk_pid %pid%
    }
;}
Return

;;;;
F11 & e:: #4

;;;;
F11 & d:: #5
;Process,Exist,thunderbird.exe
;if (ErrorLevel <> 0) {
;    WinActivate,ahk_pid %ErrorLevel%
;} else {
;    Run "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Mozilla Thunderbird.lnk",,, pid
;    WinWait, ahk_pid %pid%
;    WinActivate, ahk_pid %pid%
;}
;Return

F11 & r:: #6
F11 & f:: #7
F11 & t:: #8
F11 & g:: #9
