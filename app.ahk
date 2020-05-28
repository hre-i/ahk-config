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
F11 & e::
Process,Exist,Code.exe
if (ErrorLevel <> 0) {
    WinActivate,ahk_pid %ErrorLevel%
}
Return

;;;; (D) Mailer
F11 & d::
Process,Exist,Sylpheed.exe
if (ErrorLoevel <> 0) {
    WinActivate,ahk_pid %ErrorLevel%
} else {
    Send,#5
}
Return

;;;; (R) IDEA
F11 & r:: #6
;; Process,Exist,idea64.exe
;; if (ErrorLevel <> 0) {
;;     WinActivate,ahk_pid %ErrorLevel%
;; } else {
;;     Run, "C:\Program Files\JetBrains\IntelliJ IDEA\bin\idea64.exe",,, pid
;;     WinWait, ahk_pid %pid%
;;     WinActivate, ahk_pid %pid%
;; }
;; Return

;;;; (F) Document Viewer / Excel
F11 & f:: #7
;; Process,Exist,SumatraPDF.exe
;; if (ErrorLevel <> 0) {
;;     WinActivate, ahk_pid %ErrorLevel%
;; } else {
;;     Process,Exist,excel.exe
;;     if (ErrorLevel <> 0) {
;;         WinActivate, ahk_pid %ErrorLevel%
;;     }
;; }
;; Return

;;;; (T) (Microsoft TODO)
F11 & t:: #8

;;;; (G) (Google Calendar)
F11 & g:: #9
