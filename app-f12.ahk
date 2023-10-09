; # Win (Windows logo key).
; ! Alt
; ^ Control
; + Shift
; < Use the left key of the pair.
; > Use the right key of the pair.
;;;;

f12 & a::
WinActivate,ahk_class CabinetWClass
Return

f12 & w::^#2

f12 & s::
Process,Exist,wezterm-gui.exe
if (ErrorLevel <> 0) {
    WinActivate,ahk_pid %ErrorLevel%
} else {
    Send,^#3
}
Return

f12 & r::
Process,Exist,thunderbird.exe
if (ErrorLevel <> 0) {
    WinActivate,ahk_pid %ErrorLevel%
} else {
    Send,^#4
}
Return

f12 & c::^#5

f12 & e::^#6

f12 & t::^#7

f12 & d::^#8
; f12 & d::
; Process,Exist,vcxsrv.exe
; if (ErrorLevel <> 0) {
;     WinActivate,ahk_pid %ErrorLevel%
; } else {
;     Send,^#7
; }
; Return

f12 & f::^#9

f12 & g::^#0
