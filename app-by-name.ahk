; # Win (Windows logo key).
; ! Alt
; ^ Control
; + Shift
; < Use the left key of the pair.
; > Use the right key of the pair.

;;;;;;;; Applicaton Luncher

;;;; (A) Explorer
>#a:: #1
; IfWinExist ahk_class CabinetWClass
; {
;     WinActivate
; } else {
;     Run, explorer,,, pid
;     WinWait, ahk_pid %pid%
;     WinActivate, ahk_pid %pid%
; }
; Return

;;;; (W) Web Browser (Microsoft Edge)
>#w:: #2
; Process,Exist,msedge.exe
; if (ErrorLevel <> 0) {
;     WinActivate,ahk_pid %ErrorLevel%
; } else {
;     Run, msedge.exe,,, pid
;     WinWait, ahk_pid %pid%
;     WinActivate, ahk_pid %pid%
; }
; Return

;;;; (S) Terminal Emulator (Mintty/Wintty)
>#s:: #3
; Process,Exist,mintty.exe
; if (ErrorLevel <> 0) {
;     WinActivate,ahk_pid %ErrorLevel%
; } else {
;     Run "C:\Users\hre\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Terminal.lnk",,, pid
;     WinWait, ahk_pid %pid%
;     WinActivate, ahk_pid %pid%
; }
; Return

;;;; (E) Editor (Code)
>#e::
Process,Exist,Code.exe
if (ErrorLevel <> 0) {
    WinActivate,ahk_pid %ErrorLevel%
}
Return

;;;; (D) Document Viewer / Excel
>#d::
Process,Exist,SumatraPDF.exe
if (ErrorLevel <> 0) {
    WinActivate, ahk_pid %ErrorLevel%
} else {
    Process,Exist,excel.exe
    if (ErrorLevel <> 0) {
        WinActivate, ahk_pid %ErrorLevel%
    }
}
Return

;;;; (R) IDEA
>#r:: #6
;; Process,Exist,idea64.exe
;; if (ErrorLevel <> 0) {
;;     WinActivate,ahk_pid %ErrorLevel%
;; } else {
;;     Run, "C:\Program Files\JetBrains\IntelliJ IDEA\bin\idea64.exe",,, pid
;;     WinWait, ahk_pid %pid%
;;     WinActivate, ahk_pid %pid%
;; }
;; Return

;;;; (F) Mailer (Outlook)
>#f:: #7
;; Process,Exist,outlook.exe
;; if (ErrorLoevel <> 0) {
;;     WinActivate,ahk_pid %ErrorLevel%
;; } else {
;;     Run, outlook.exe,,, pid
;;     WinWait, ahk_pid %pid%
;;     WinActivate, ahk_pid %pid%
;; }
;; Return

;;;; (T) (Microsoft TODO)
>#t:: #8

;;;; (G) (Google Calendar)
>#g:: #9
