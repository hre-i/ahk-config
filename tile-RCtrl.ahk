; # Win (Windows logo key).
; ! Alt
; ^ Control
; + Shift
; < Use the left key of the pair.
; > Use the right key of the pair.

global SecondMonitorId

;;;; Centering
>^Space:: winTile(-1, "c", "a", .8, 1)
>^m::     winTile(SecondMonitorId, "c", "a", 0.8, 1)

;;;; 1/2
>^h:: winTile(-1, "l", "a", .5, 1)
>^j:: winTile(-1, "a", "b", 1, .5)
>^k:: winTile(-1, "a", "t", 1, .5)
>^l:: winTile(-1, "r", "a", .5, 1)

;;;; 1/4
>^q:: winTile(-1, "l", "t", .5, .5)
>^w:: winTile(-1, "r", "t", .5, .5)
>^a:: winTile(-1, "l", "b", .5, .5)
>^s:: winTile(-1, "r", "b", .5, .5)

;;;; 7:4
>^1:: winTile(-1, "l", "a", .65, 1)
>^2:: winTile(-1, "r", "a", .40, 1)
>^3:: winTile(-1, "l", "a", .40, 1)
>^4:: winTile(-1, "r", "a", .65, 1)

;;;; 1/2 Second Monitor
>^Left::  winTile(SecondMonitorId, "l", "a", .5, 1)
>^Down::  winTile(SecondMonitorId, "a", "b", 1, .5)
>^Up::    winTile(SecondMonitorId, "a", "t", 1, .5)
>^Right:: winTile(SecondMonitorId, "r", "a", .5, 1)

;;;; 1/4 Second Monitor
>^Home:: winTile(SecondMonitorId, "l", "t", .5, .5)
>^PgUp:: winTile(SecondMonitorId, "r", "t", .5, .5)
>^End::  winTile(SecondMonitorId, "l", "b", .5, .5)
>^PgDn:: winTile(SecondMonitorId, "r", "b", .5, .5)

;;;; 1/3 Second Monitor
>^8:: winTile(SecondMonitorId, "a", "t", 1, .33)
>^9:: winTile(SecondMonitorId, "a", "c", 1, .33)
>^0:: winTile(SecondMonitorId, "a", "b", 1, .33)
