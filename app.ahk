; # Win (Windows logo key).
; ! Alt
; ^ Control
; + Shift
; < Use the left key of the pair.
; > Use the right key of the pair.
;;;;

SC079 & a::     ; Explorer
WinActivate,ahk_class CabinetWClass
Return

SC079 & w::^#2 ; Web browser (edge)
SC079 & s::^#3 ; Terminal (WezTerm)
SC079 & r::^#4 ; Mail (Thunderbird)
SC079 & t::^#5 ; Teams
SC079 & v::^#6 ; ToDo
SC079 & c::^#7 ; Calendar (Outlook)
SC079 & e::^#8 ; App1
SC079 & d::^#9 ; App2
SC079 & f::^#0 ; App3

RWin & a::^#1   ; Launch explorer
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
