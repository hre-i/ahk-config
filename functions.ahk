;;;;
;;;; Move and Resize Window
;;;;
;;;; mid ... Monitor Number
;;;; pW ... Position of X (l ... Left / r ... Right  / c .. Centering / Other ... Maximize)
;;;; pH ... Position of Y (t ... Top  / b ... Bottom / c .. Centering / Other ... Maximize)
;;;; dW ... Rate of Width
;;;; dH ... Rate of Height
;;;;

winTile(mid, pW, pH, dW, dH) {

;;SysGet, MonitorCount, MonitorCount
;;SysGet, MonitorPrimary, MonitorPrimary
;;MsgBox, Monitor Count:`t%MonitorCount%`nPrimary Monitor:`t%MonitorPrimary%

    ;; Get Monitor Information
    SysGet, Primary, MonitorPrimary
    If (mid == 0) {
        SysGet, Mon, MonitorWorkArea, %Primary%
    } Else {
        if (Primary == 1) {
            if (mid == 1) {
                SysGet, Mon, MonitorWorkArea, 2
            } else {
                SysGet, Mon, MonitorWorkArea, 3
            }
        } else if (Primary == 2) {
            if (mid == 1) {
                SysGet, Mon, MonitorWorkArea, 1
            } else {
                SysGet, Mon, MonitorWorkArea, 3
            }
        } else if (Primary == 3) {
            if (mid == 1) {
                SysGet, Mon, MonitorWorkArea, 1
            } else {
                SysGet, Mon, MonitorWorkArea, 2
            }
        }
    }

    ;; Get active window id.
    WinGet, activeWindowID, ID, A

    x := MonLeft
    y := MonTop
    w := MonRight - MonLeft
    h := MonBottom - MonTop
    mw := MonRight - MonLeft
    mh := MonBottom - MonTop

    ;; Get width and height of the window.
    If (pH == "t" || pH == "b" || pH == "c") {
        h := mh * dH
    } Else {
        h := mh
    }
    If (pW == "l" || pW == "r" || pW == "c") {
        w := mw * dW
    } Else {
        w := mw
    }

    ;; Get top-left position of the window.
    If (pW == "r") {
        x := MonRight - w
    } Else If (pW == "c") {
	      x := MonLeft + (mw - w)/2
    } Else {
        x := MonLeft
    }
    If (pH == "b") {
        y := MonBottom - h
    } Else If (pH == "c") {
        y := MonTop + (mh - h)/2
    } Else {
        y := MonTop
    }

    ;; MsgBox WinMove,ahk_id %activeWindowID%, , %x%, %y%, %w%, %h%, %mw%, %mh%
    ;; WinRestore,ahk_id %activeWindowID%
    WinMove,ahk_id %activeWindowID%, , %x%, %y%, %w%, %h%
    WinRestore,ahk_id %activeWindowID%
    WinMove,ahk_id %activeWindowID%, , %x%, %y%, %w%, %h%
}
