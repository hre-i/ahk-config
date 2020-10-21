; # Win (Windows logo key).
; ! Alt
; ^ Control
; + Shift
; < Use the left key of the pair.
; > Use the right key of the pair.

;;;;;;;; Applicaton Luncher

;;;; (A) Explorer
F11 & a:: #1
IfWinExist ahk_class CabinetWClass
{
    WinActivate
} else {
    Run, explorer,,, pid
    WinWait, ahk_pid %pid%
    WinActivate, ahk_pid %pid%
}
Return

;;;; (W) Web Browser (Microsoft Edge)
F11 & w:: #2
;; Process,Exist,msedge.exe
;; if (ErrorLevel <> 0) {
;;     WinActivate,ahk_pid %ErrorLevel%
;; } else {
;;     Run, msedge.exe,,, pid
;;     WinWait, ahk_pid %pid%
;;     WinActivate, ahk_pid %pid%
;; }
;; Return

;;;; (S) Terminal Emulator (Mintty/Wintty)
F11 & s::
Process,Exist,mintty.exe
if (ErrorLevel <> 0) {
    WinActivate,ahk_pid %ErrorLevel%
} else {
    Run "C:\Users\hre\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Terminal.lnk",,, pid
    WinWait, ahk_pid %pid%
    WinActivate, ahk_pid %pid%
}
Return

;;;; (E) Editor (Code)
F11 & e:: #4
F11 & d:: #5
F11 & r:: #6
F11 & f:: #7
F11 & t:: #8
F11 & g:: #9
