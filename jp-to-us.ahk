; #     Win (Windows logo key).
; !     Alt
; ^     Control
; +     Shift
; <     Use the left key of the pair.
; >     Use the right key of the pair.

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
VKF4::Send,{``}    ;         /     -> `
+VKF4::Send,{~}    ; Shift + /     -> ~
+2::Send,{@}       ; Shift + 2         ["] -> @
+6::Send,{^}       ; Shift + 6         [&] -> ^
+7::Send,{&}       ; Shift + 7         ['] -> &
+8::Send,{*}       ; Shift + 8         [(] -> *
+9::Send,{(}       ; Shift + 9         [)] -> (
+0::Send,{)}       ; Shift + 0         [ ] -> )
+-::Send,{_}       ; Shift + -         [=] -> _
^::Send,{=}        ;                   [^] -> =
+^::Send,{+}       ;                   [^] -> +

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
@::[              ;                   [@] -> [
+@::{             ; Shift + @         [`] -> {
[::]              ;                   [[] -> ]
+[::Send,{}}      ; Shift + [         [{] -> }

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
+;::Send,{:}      ; Shift + ;         [+] -> ;
:::Send,{'}       ;                   [:] -> '
*::Send,{"}       ; Shift + :         [*] -> "
]::\              ;                   []] -> \
+]::|             ;                   []] -> |

