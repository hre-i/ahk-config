; # Win (Windows logo key).
; ! Alt
; ^ Control
; + Shift
; < Use the left key of the pair.
; > Use the right key of the pair.

SC079 & 1::Send "!{F1}"
SC079 & 2::Send "{Blind}{F2}"
SC079 & 3::Send "{Blind}{F3}"
SC079 & 4::Send "{Blind}{F4}"
SC079 & 5::Send "{Blind}{F5}"

SC079 & 6::Send "{Blind}{F6}"
SC079 & 7::Send "{Blind}{F7}"
SC079 & 8::Send "{Blind}{F8}"
SC079 & 9::Send "{Blind}{F9}"
SC079 & 0::Send "{Blind}{F10}"
SC079 & -::Send "{Blind}{F11}"
SC079 & +::Send "{Blind}{F12}"

; #HotIf WinActive("ahk_class CabinetWClass")
; SC079 & i::Send "+^{Tab}"
; SC079 & o::Send "^{Tab}"
; #ifWinActive

SC079 & i::Send "{Blind}{PgUp}"
SC079 & o::Send "{Blind}{PgDn}"

SC079 & h::Send "{Blind}{Left}"
SC079 & j::Send "{Blind}{Down}"
SC079 & k::Send "{Blind}{Up}"
SC079 & l::Send "{Blind}{Right}"

SC079 & ,::Send "{Blind}{Home}"
SC079 & .::Send "{Blind}{End}"

SC079 & n::Send "{Blind}{Insert}"
SC079 & m::Send "{Blind}{Delete}"
SC079 & u::Send "{Blind}{AppsKey}"

; Ctrl+NumpadAdd は Exploer の幅調整で使う
SC079 & p::Send "{Blind}{NumpadAdd}"

; 変換単体で Backspace
; SC079::Send "{Backspace}"

;;;;
;SC079::Send "{vk1Dsc079} ;; 変換"
;SC07B::Send "{vk1Dsc07B} ;; 無変換"

SC07B:: {               ;; 無変換 を押したら Esc も押したことにする
  Send "{vk1Dsc07B}"
  Send "{Esc}"
}

SC079 & Tab::Send "+{Tab}"
;SC079 & z::Send "+^{Tab}"
;SC079 & x::Send "^{Tab}"
