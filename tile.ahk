; # Win (Windows logo key).
; ! Alt
; ^ Control
; + Shift
; < Use the left key of the pair.
; > Use the right key of the pair.

global SecondMonitorId

;;;; Centering / Side
F12 & Space::
WinGet, name, ProcessName, A
if (name == "mintty.exe") {
    winTile(-1, "c", "a", 0.8, 1)
} else if (name == "msedge.exe") {
    winTile(-1, "c", "a", 0.8, 1)
} else {
    winTile(-1, "l", "a", 1, 1)
}
Return

F12 & m::
WinGet, name, ProcessName, A
if (name == "mintty.exe") {
    winTile(SecondMonitorId, "c", "a", 0.8, 1)
} else if (name == "msedge.exe") {
    winTile(SecondMonitorId1, "c", "a", 0.8, 1)
} else {
    winTile(SecondMonitorId1, "l", "a", 1, 1)
}
Return

;;;; Maximize
F12 & n:: winTile(SecondMonitorId, "a", "a", 1, 1)

;;;; 1/2
F12 & h:: winTile(-1, "l", "a", .5, 1)
F12 & j:: winTile(-1, "a", "b", 1, .5)
F12 & k:: winTile(-1, "a", "t", 1, .5)
F12 & l:: winTile(-1, "r", "a", .5, 1)

;;;; 1/4
F12 & q:: winTile(-1, "l", "t", .5, .5)
F12 & w:: winTile(-1, "r", "t", .5, .5)
F12 & a:: winTile(-1, "l", "b", .5, .5)
F12 & s:: winTile(-1, "r", "b", .5, .5)

;;;; 7:4
F12 & 1:: winTile(-1, "l", "a", .65, 1)
F12 & 2:: winTile(-1, "r", "a", .40, 1)
F12 & 3:: winTile(-1, "l", "a", .40, 1)
F12 & 4:: winTile(-1, "r", "a", .65, 1)

;;;; 1/2 Second Monitor
F12 & Left::  winTile(SecondMonitorId, "l", "a", .5, 1)
F12 & Down::  winTile(SecondMonitorId, "a", "b", 1, .5)
F12 & Up::    winTile(SecondMonitorId, "a", "t", 1, .5)
F12 & Right:: winTile(SecondMonitorId, "r", "a", .5, 1)

;;;; 1/4 Second Monitor
F12 & PgUp:: winTile(SecondMonitorId, "l", "t", .5, .5)
F12 & PgDn:: winTile(SecondMonitorId, "r", "t", .5, .5)
F12 & Home:: winTile(SecondMonitorId, "l", "b", .5, .5)
F12 & End::  winTile(SecondMonitorId, "r", "b", .5, .5)

;;;; 1/3 Second Monitor
F12 & 8:: winTile(SecondMonitorId, "a", "t", 1, .33)
F12 & 9:: winTile(SecondMonitorId, "a", "c", 1, .33)
F12 & 0:: winTile(SecondMonitorId, "a", "b", 1, .33)
