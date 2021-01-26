; # Win (Windows logo key).
; ! Alt
; ^ Control
; + Shift
; < Use the left key of the pair.
; > Use the right key of the pair.

;;;; Centering / Side
>!Space::
WinGet, name, ProcessName, A
if (name == "excel.exe") {
    winTile(0, "l", "a", 1, 1)
} else {
    winTile(0, "c", "a", 0.8, 1)
}
Return

>!Enter::
WinGet, name, ProcessName, A
winTile(1, "l", "a", 1, 1)
Return

;;;; 1/2
>!h:: winTile(0, "l", "a", .5, 1)
>!j:: winTile(0, "a", "b", 1, .5)
>!k:: winTile(0, "a", "t", 1, .5)
>!l:: winTile(0, "r", "a", .5, 1)

;;;; 1/2 Second Monitor
>!Left::  winTile(1, "l", "a", .5, 1)
>!Down::  winTile(1, "a", "b", 1, .5)
>!Up::    winTile(1, "a", "t", 1, .5)
>!Right:: winTile(1, "r", "a", .5, 1)

;;;; 1/2 Third Monitor
>!+Left::  winTile(2, "l", "a", .5, 1)
>!+Down::  winTile(2, "a", "b", 1, .5)
>!+Up::    winTile(2, "a", "t", 1, .5)
>!+Right:: winTile(2, "r", "a", .5, 1)

;;;; 1/4
>!q:: winTile(0, "l", "t", .5, .5)
>!w:: winTile(0, "r", "t", .5, .5)
>!a:: winTile(0, "l", "b", .5, .5)
>!s:: winTile(0, "r", "b", .5, .5)
>!+q:: winTile(1, "l", "t", .5, .5)
>!+w:: winTile(1, "r", "t", .5, .5)
>!+a:: winTile(1, "l", "b", .5, .5)
>!+s:: winTile(1, "r", "b", .5, .5)

;;;; 6:4
>!1:: winTile(0, "l", "a", .40, 1)
>!2:: winTile(0, "r", "a", .60, 1)
>!3:: winTile(0, "l", "a", .60, 1)
>!4:: winTile(0, "r", "a", .40, 1)
>!+1:: winTile(1, "l", "a", .40, 1)
>!+2:: winTile(1, "r", "a", .60, 1)
>!+3:: winTile(1, "l", "a", .60, 1)
>!+4:: winTile(1, "r", "a", .40, 1)

;;;; 1/3 縦
>!+8:: winTile(0, "a", "t", 1, .33)
>!+9:: winTile(0, "a", "c", 1, .33)
>!+0:: winTile(0, "a", "b", 1, .33)
>!8:: winTile(1, "a", "t", 1, .33)
>!9:: winTile(1, "a", "c", 1, .33)
>!0:: winTile(1, "a", "b", 1, .33)
>!=:: winTile(1, "a", "t", 1, .33)
>!]:: winTile(1, "a", "c", 1, .33)
>!\:: winTile(1, "a", "b", 1, .33)

>!m::
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
>!n:: winTile(1, "a", "a", 1, 1)
