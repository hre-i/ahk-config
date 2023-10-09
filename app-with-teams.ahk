; # Win (Windows logo key).
; ! Alt
; ^ Control
; + Shift
; < Use the left key of the pair.
; > Use the right key of the pair.
;;;;

SC079 & a::
WinActivate,ahk_class CabinetWClass
Return

SC079 & w::^#2

SC079 & s::^#3
;Process,Exist,wezterm-gui.exe
;if (ErrorLevel <> 0) {
;    WinActivate,ahk_pid %ErrorLevel%
;} else {
;    Send,^#3
;}
;Return

SC079 & r::^#4
;Process,Exist,thunderbird.exe
;if (ErrorLevel <> 0) {
;    WinActivate,ahk_pid %ErrorLevel%
;} else {
;    Send,^#4
;}
;Return

;;;; Teams 無し
;SC079 & c::^#5
;SC079 & e::^#6
;SC079 & d::^#7
;SC079 & f::^#8
;SC079 & v::^#9

;;;; Thunderbird+Teams+Outlook
SC079 & t::^#5
SC079 & c::^#6
SC079 & v::^#7
SC079 & e::^#8
SC079 & d::^#9
SC079 & f::^#0

;;;; Outlook+Teams-Thunderbird
;SC079 & t::^#5
;SC079 & e::^#6
;SC079 & d::^#7
;SC079 & f::^#8
;SC079 & v::^#9
;SC079 & g::^#9

RWin & a::^#1
RWin & w::Return
RWin & s::Return
RWin & e::Return
RWin & d::Return
RWin & r::Return
RWin & f::Return
RWin & t::Return
RWin & g::Return

LWin & f::Return ; Ignore feedback

#IfWinActive ahk_exe wezterm-gui.exe
RWin & c::Send,+^c
RWin & x::Send,+^x
RWin & v::Send,+^v
#IfWinActive
