; # Win (Windows logo key).
; ! Alt
; ^ Control
; + Shift
; < Use the left key of the pair.
; > Use the right key of the pair.

^m::Send,{Enter}        ; Ctrl + m -> Enter

LControl & h::
If (WinActive("ahk_class mintty")) {
    Send ^h
} Else {
    Send {Backspace}    ; Ctrl + h -> Backspace
}
Return

;; 拡大鏡ショートカットの無効化
;#=::
;Return
