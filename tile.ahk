; # Win (Windows logo key).
; ! Alt
; ^ Control
; + Shift
; < Use the left key of the pair.
; > Use the right key of the pair.

;;;; Centering / Side
F12 & Space::
WinGet, name, ProcessName, A
if (name == "mintty.exe") {
    winTile(0, "c", "a", 0.8, 1)
} else if (name == "msedge.exe") {
    winTile(0, "c", "a", 0.8, 1)
} else {
    winTile(0, "l", "a", 1, 1)
}
Return

;;;; 1/2
F12 & h:: winTile(0, "l", "a", .5, 1)
F12 & j:: winTile(0, "a", "b", 1, .5)
F12 & k:: winTile(0, "a", "t", 1, .5)
F12 & l:: winTile(0, "r", "a", .5, 1)

;;;; 1/4
F12 & q:: winTile(0, "l", "t", .5, .5)
F12 & w:: winTile(0, "r", "t", .5, .5)
F12 & a:: winTile(0, "l", "b", .5, .5)
F12 & s:: winTile(0, "r", "b", .5, .5)

;;;; 7:4
F12 & 1:: winTile(0, "l", "a", .65, 1)
F12 & 2:: winTile(0, "r", "a", .40, 1)
F12 & 3:: winTile(0, "l", "a", .40, 1)
F12 & 4:: winTile(0, "r", "a", .65, 1)

;;;; Second Monitor

;;;; 1/2 Second Monitor
F12 & Left::  winTile(1, "l", "a", .5, 1)
F12 & Down::  winTile(1, "a", "b", 1, .5)
F12 & Up::    winTile(1, "a", "t", 1, .5)
F12 & Right:: winTile(1, "r", "a", .5, 1)

;;;; 1/4 Second Monitor
F12 & e:: winTile(1, "l", "t", .5, .5)
F12 & r:: winTile(1, "r", "t", .5, .5)
F12 & d:: winTile(1, "l", "b", .5, .5)
F12 & f:: winTile(1, "r", "b", .5, .5)

;;;; 1/3 Second Monitor
F12 & 8:: winTile(1, "a", "t", 1, .33)
F12 & 9:: winTile(1, "a", "c", 1, .33)
F12 & 0:: winTile(1, "a", "b", 1, .33)

F12 & m::
WinGet, name, ProcessName, A
if (name == "mintty.exe") {
    winTile(1, "c", "a", 0.8, 1)
} else if (name == "msedge.exe") {
    winTile(1, "c", "a", 0.8, 1)
} else {
    winTile(1, "l", "a", 1, 1)
}
Return

;;;; Maximize
F12 & n:: winTile(1, "a", "a", 1, 1)
