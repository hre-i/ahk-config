; #     Win (Windows logo key).
; !     Alt
; ^     Control
; +     Shift
; <     Use the left key of the pair.
; >     Use the right key of the pair.

;;;; Window Control by Right+Win
>#m:: WinMaximize,A
>#h:: WinMinimize,A
>#j:: AltTab
>#k:: ShiftAltTab

;;;; explorer/msedge/outlook/mintty 以外は閉じる
#q::
WinGet, name, ProcessName, A
;MsgBox %name%
if (name = "explorer.exe") {
    WinMinimize,A
}
else if (name = "msedge.exe") {
    WinMinimize,A
}
else if (name = "outlook.exe") {
    WinMinimize,A
}
else if (name = "mintty.exe") {
    WinMinimize,A
}
else {
    Send !{F4}
}
Return

^w::
WinGet, name, ProcessName, A
if (name = "explorer.exe") {
    WinMinimize,A
}
else if (name = "outlook.exe") {
    WinMinimize,A
}
else {
    Send ^w
}
Return
