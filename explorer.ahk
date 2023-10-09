; # Win (Windows logo key).
; ! Alt
; ^ Control
; + Shift
; < Use the left key of the pair.
; > Use the right key of the pair.
;;;;

; Focus on the file pane on the Explorer

#ifWinActive ahk_class CabinetWClass ahk_exe Explorer.EXE

!f::
ControlFocus,DirectUIHWND2,A
;Send,{Space}
return

!d::
ControlFocus,SysTreeView321,A
;Send,{Space}
return

#ifWinActive 
