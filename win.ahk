; #     Win (Windows logo key).
; !     Alt
; ^     Control
; +     Shift
; <     Use the left key of the pair.
; >     Use the right key of the pair.

;;;; Window Control by Right+Win
>#m:: WinMaximize
>#h:: WinMinimize
>#j:: AltTab
>#k:: ShiftAltTab

;;;; explorer/msedge/outlook/mintty 以外は閉じる
#q:: Send "!{F4}"
