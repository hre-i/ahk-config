; # Win (Windows logo key).
; ! Alt
; ^ Control
; + Shift
; < Use the left key of the pair.
; > Use the right key of the pair.

F11 & 1::Send {Blind}{F1}
F11 & 2::Send {Blind}{F2}
F11 & 3::Send {Blind}{F3}
F11 & 4::Send {Blind}{F4}
F11 & 5::Send {Blind}{F5}

F11 & 6::Send {Blind}{F6}
F11 & 7::Send {Blind}{F7}
F11 & 8::Send {Blind}{F8}
F11 & 9::Send {Blind}{F9}
F11 & 0::Send {Blind}{F10}

;;;; Cursor Move

F11 & i::Send {Blind}{PgUp}
F11 & o::Send {Blind}{PgDn}

F11 & h::Send {Blind}{Left}
F11 & j::Send {Blind}{Down}
F11 & k::Send {Blind}{Up}
F11 & l::Send {Blind}{Right}

F11 & ,::Send {Blind}{Home}
F11 & .::Send {Blind}{End}

F11 & n::Send {Blind}{Insert}
F11 & m::Send {Blind}{Delete}
F11 & u::Send {Blind}{AppsKey}

;;;

F11 & p::Send ^{NumpadAdd}
F11 & Space::Send {F7}
