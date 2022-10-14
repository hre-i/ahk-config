; # Win (Windows logo key).
; ! Alt
; ^ Control
; + Shift
; < Use the left key of the pair.
; > Use the right key of the pair.
;;;;

;RWin  & a::^#1
SC079 & a::
WinActivate,ahk_class CabinetWClass
Return

;RWin  & w::^#2
SC079 & w::^#2

;RWin  & s::^#3
SC079 & s::
Process,Exist,wezterm-gui.exe
if (ErrorLevel <> 0) {
    WinActivate,ahk_pid %ErrorLevel%
} else {
    Send,^#3
}
Return

;RWin  & r::^#4
SC079 & r::
Process,Exist,thunderbird.exe
if (ErrorLevel <> 0) {
    WinActivate,ahk_pid %ErrorLevel%
} else {
    Send,^#4
}
Return

;RWin  & c::^#5
SC079 & c::^#5

;RWin  & e::^#6
SC079 & e::^#6

;RWin  & t::^#7
SC079 & t::^#7

;RWin  & d::^#8
SC079 & d::
Process,Exist,vcxsrv.exe
if (ErrorLevel <> 0) {
    WinActivate,ahk_pid %ErrorLevel%
} else {
    Send,^#8
}
Return

;RWin  & f::^#9
SC079 & f::^#9

;RWin  & g::^#0
SC079 & g::^#0
