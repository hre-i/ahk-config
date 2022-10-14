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
    winTile(1, "l", "a", 1, 1)
} else {
    winTile(1, "c", "a", 0.7, 1)
}
Return

>!m::     winTile(1, "l", "a", 1, 1)
>!Enter:: winTile(0, "l", "a", 1, 1)

;;;; 1/2
>!h:: winTile(1, "l", "a", .5, 1)
>!j:: winTile(1, "a", "b", 1, .5)
>!k:: winTile(1, "a", "t", 1, .5)
>!l:: winTile(1, "r", "a", .5, 1)

;;;; 1/2 Second Monitor
>!Left::  winTile(0, "l", "a", .5, 1)
>!Down::  winTile(0, "a", "b", 1, .5)
>!Up::    winTile(0, "a", "t", 1, .5)
>!Right:: winTile(0, "r", "a", .5, 1)

;;;; 1/4
>!a:: winTile(1, "l", "t", .5, .5)
>!s:: winTile(1, "r", "t", .5, .5)
>!z:: winTile(1, "l", "b", .5, .5)
>!x:: winTile(1, "r", "b", .5, .5)

>!+a:: winTile(0, "l", "t", .5, .5)
>!+s:: winTile(0, "r", "t", .5, .5)
>!+z:: winTile(0, "l", "b", .5, .5)
>!+x:: winTile(0, "r", "b", .5, .5)

;;;; 6:4
>!1:: winTile(1, "l", "a", .30, 1)
>!2:: winTile(1, "l", "a", .70, 1)
>!3:: winTile(1, "r", "a", .70, 1)
>!4:: winTile(1, "r", "a", .30, 1)
>!+1:: winTile(0, "l", "a", .40, 1)
>!+2:: winTile(0, "r", "a", .60, 1)
>!+3:: winTile(0, "l", "a", .60, 1)
>!+4:: winTile(0, "r", "a", .40, 1)

;;;; 1/3 縦
>!+8:: winTile(1, "a", "t", 1, .33)
>!+9:: winTile(1, "a", "c", 1, .33)
>!+0:: winTile(1, "a", "b", 1, .33)
>!8:: winTile(0, "a", "t", 1, .33)
>!9:: winTile(0, "a", "c", 1, .33)
>!0:: winTile(0, "a", "b", 1, .33)
>!=:: winTile(0, "a", "t", 1, .33)
>!]:: winTile(0, "a", "c", 1, .33)
>!\:: winTile(0, "a", "b", 1, .33)
