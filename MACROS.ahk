#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Numpad0 / NumpadIns	0 / Insert
; Numpad1 / NumpadEnd	1 / End
; Numpad2 / NumpadDown	2 / ↓
; Numpad3 / NumpadPgDn	3 / PageDown
; Numpad4 / NumpadLeft	4 / ←
; Numpad5 / NumpadClear	5 / typically does nothing
; Numpad6 / NumpadRight	6 / →
; Numpad7 / NumpadHome	7 / Home
; Numpad8 / NumpadUp	8 / ↑
; Numpad9 / NumpadPgUp	9 / PageUp
; NumpadDot / NumpadDel	. / Delete
; NumLock	NumLock (number lock key). While the Ctrl key is held down, the NumLock key produces the key code of Pause, so use ^Pause in hotkeys instead of ^NumLock.
; NumpadDiv	/ (division)
; NumpadMult	* (multiplication)
; NumpadAdd	+ (addition)
; NumpadSub	- (subtraction)
; NumpadEnter
; !	Sends the Alt key. 
;    For example, Send, This is text!a would send the keys "This is text" and then press Alt+A. Note: !A produces a different effect in some programs than !a. This is because !A presses Alt+Shift+A and !a presses Alt+A. If in doubt, use lowercase.
; +	Sends the Shift key. 
;    For example, Send, +abC would send the text "AbC", and Send, !+a would press Alt+Shift+A.
; ^	Sends the Control (Ctrl) key. 
;    For example, Send, ^!a would press Ctrl+Alt+A, and Send, ^{Home} would send Ctrl+Home. Note: ^A produces a different effect in some programs than ^a. This is because ^A presses Ctrl+Shift+A and ^a presses Ctrl+A. If in doubt, use lowercase.
; #	Sends the Win key (the key with the Windows logo) 
;    Ttherefore Send #e would hold down the Win key and then press the letter "e".
; #IfWinActive Untitled - Paint
; :*:btw::by the way


;Create GUI
Gui +LastFound -Resize -MaximizeBox -MinimizeBox
Gui, Add, Text, , MACRO Keys
Gui, Add, DropDownList, vmacroOverlay grefreshControlVars, 01||02|03|04|05
; Gui, Add, CheckBox, vtest, Test?


;Keep handle
GuiHandle := WinExist()

;Show GUI
Gui, Show
return


; --------------
GuiEscape:
    Gui, Minimize
    return

GuiClose:
    ExitApp


refreshControlVars:
    Gui, Submit, NoHide
    return

; --------------

; ----
Numpad0::
    switch macroOverlay
    {
    case "01":
        MsgBox, "g"
        return
    case "02":
        MsgBox, "f"
        return
    default:
        return
    }

; ----
; NumpadIns::
;     MsgBox, "NumpadIns"
;     return

; ; ----
; Numpad1::
;     MsgBox, "Numpad1"
;     return

; ; ----
; NumpadEnd::
;     MsgBox, "NumpadEnd"
;     return

; ; ----
; Numpad2::
;     MsgBox, "Numpad2"
;     return

; ; ----
; NumpadDown::
;     MsgBox, "NumpadDown"
;     return

; ; ----
; Numpad3::
;     MsgBox, "Numpad3"
;     return

; ; ----
; NumpadPgDn::
;     MsgBox, "NumpadPgDn"
;     return

; ; ----
; Numpad4::
;     MsgBox, "Numpad4"
;     return

; ; ----
; NumpadLeft::
;     MsgBox, "NumpadLeft"
;     return

; ; ----
; Numpad5::
;     MsgBox, "Numpad5"
;     return

; ; ----
; NumpadClear::
;     MsgBox, "NumpadClear"
;     return

; ; ----
; Numpad6::
;     MsgBox, "Numpad6"
;     return

; ; ----
; NumpadRight::
;     MsgBox, "NumpadRight"
;     return

; ; ----
; Numpad7::
;     MsgBox, "Numpad7"
;     return

; ; ----
; NumpadHome::
;     MsgBox, "NumpadHome"
;     return

; ; ----
; Numpad8::
;     MsgBox, "Numpad8"
;     return

; ; ----
; NumpadUp::
;     MsgBox, "NumpadUp"
;     return

; ; ----
; Numpad9::
;     MsgBox, "Numpad9"
;     return

; ; ----
; NumpadPgUp::
;     MsgBox, "NumpadPgUp"
;     return

; ; ----
; NumpadDot::
;     MsgBox, "NumpadDot"
;     return

; ; ----
; NumpadDel::
;     MsgBox, "NumpadDel"
;     return

; ; ----
; ;NumLock::
; ;    MsgBox, "NumLock"
; ;    return

; ; ----
; NumpadDiv::
;     MsgBox, "NumpadDiv"
;     return

; ; ----
; NumpadMult::
;     MsgBox, "NumpadMult"
;     return

; ; ----
; NumpadAdd::
;     MsgBox, "NumpadAdd"
;     return

; ; ----
; NumpadSub::
;     MsgBox, "NumpadSub"
;     return

; ; ----
; NumpadEnter::
;     MsgBox, "NumpadEnter"
;     return