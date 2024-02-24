; # Win (Windows logo key).
; ! Alt
; ^ Control
; + Shift
; < Use the left key of the pair.
; > Use the right key of the pair.

;;;; Centering
>!m::
winTile(0, "c", "a", 1, 1)
Send,#{Up}
Return

>!Space::
winTile(0, "c", "a", 0.6, 1)
Return

>!Enter::
winTile(1, "l", "a", 1, 1)
Send,#{Up}
Return

;;;; 1/2
>!h::
winTile(0, "l", "a", .5, 1)
;Send,#{Left}
Return

>!l::
winTile(0, "r", "a", .5, 1)
;Send,#{Right}
Return

>!k:: winTile(0, "a", "t", 1, .5)
>!j:: winTile(0, "a", "b", 1, .5)

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
>!e:: winTile(0, "l", "t", .5, .5)
>!r:: winTile(0, "r", "t", .5, .5)
>!d:: winTile(0, "l", "b", .5, .5)
>!f:: winTile(0, "r", "b", .5, .5)

>!a:: winTile(0, "l", "t", .5, .5)
>!s:: winTile(0, "r", "t", .5, .5)
>!z:: winTile(0, "l", "b", .5, .5)
>!x:: winTile(0, "r", "b", .5, .5)

>!+a:: winTile(1, "l", "t", .5, .5)
>!+s:: winTile(1, "r", "t", .5, .5)
>!+z:: winTile(1, "l", "b", .5, .5)
>!+x:: winTile(1, "r", "b", .5, .5)

;;;; 7:3
>!1:: winTile(0, "l", "a", .70, 1)
>!2:: winTile(0, "r", "a", .70, 1)
>!3:: winTile(0, "l", "a", .30, 1)
>!4:: winTile(0, "r", "a", .30, 1)
>!+1:: winTile(1, "l", "a", .30, 1)
>!+2:: winTile(1, "r", "a", .70, 1)
>!+3:: winTile(1, "l", "a", .70, 1)
>!+4:: winTile(1, "r", "a", .30, 1)

;;;; 1/3 縦
>!8:: winTile(1, "a", "t", 1, .33)
>!9:: winTile(1, "a", "c", 1, .33)
>!0:: winTile(1, "a", "b", 1, .33)
>!=:: winTile(1, "a", "t", 1, .33)
>!]:: winTile(1, "a", "c", 1, .33)
>!\:: winTile(1, "a", "b", 1, .33)
>!+8:: winTile(2, "a", "t", 1, .33)
>!+9:: winTile(2, "a", "c", 1, .33)
>!+0:: winTile(2, "a", "b", 1, .33)
>!+=:: winTile(2, "a", "t", 1, .33)
>!+]:: winTile(2, "a", "c", 1, .33)
>!+\:: winTile(2, "a", "b", 1, .33)

;;;; 2/3 縦
>![:: winTile(1, "a", "t", 1, .66)
>!':: winTile(1, "a", "b", 1, .66)
