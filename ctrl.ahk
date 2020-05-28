; # Win (Windows logo key).
; ! Alt
; ^ Control
; + Shift
; < Use the left key of the pair.
; > Use the right key of the pair.

;; ^.::Send {vk1Csc089}    ; Ctrl + . -> Henkan
;; ^,::Send {vk1Dsc07B}    ; Ctrl + , -> Muhenkan

^m::Send {Enter}        ; Ctrl + m -> Enter

^h::
If (WinActive("ahk_class mintty")) {
    Send ^h
} Else {
    Send {Backspace}    ; Ctrl + h -> Backspace
}
Return

Help:: Send ^h          ; Help        -> Ctrl + h
NumpadEnter:: Send ^m   ; NumpadEnter -> Ctrl + m

^F9::
Return

^F8::
Return

^,::Send ^{F9}
^.::Send ^{F8}
