#NoTrayIcon

;++++++++++++++++++++++++++++++++++++++++++++++++++++++
SetCapsLockState, AlwaysOff


;CapsLock::return ;same text

CapsLock & RAlt::
if getkeystate("capslock","t")
    SetCapsLockState, AlwaysOff
	;MsgBox 'getkeystate("capslock","t")' TRUE
else
    SetCapsLockState, AlwaysOn
	;MsgBox 'getkeystate("capslock","t")' FALSE.
return
;++++++++++++++++++++++++++++++++++++++++++++++++++++++
Capslock & LWin:: Send, {#CapsLock}

CapsLock & i::
if GetKeyState("Shift", "D")
    if GetKeyState("Alt", "D")
        Send +^{Up}
    else if GetKeyState("Ctrl", "D")
        Send +!{Up}
    else
        Send +{Up}
else if GetKeyState("Ctrl", "D")
    if (GetKeyState("Alt", "D"))
        Send !^{Up}
    else
        Send !{Up}
else if GetKeyState("Alt", "D")
    Send ^{Up}
else if GetKeyState("LWin", "D")
    Send <#{Up}
else
    Send {Up}
return

CapsLock & k::
if GetKeyState("Shift", "D")
    if GetKeyState("Alt", "D")
        Send +^{Down}
    else if GetKeyState("Ctrl", "D")
        Send +!{Down}
    else
        Send +{Down}
else if GetKeyState("Ctrl", "D")
    if (GetKeyState("Alt", "D"))
        Send !^{Down}
    else
        Send !{Down}
else if GetKeyState("Alt", "D")
    Send ^{Down}
else if GetKeyState("LWin", "D")
    Send <#{Down}
else
    Send {Down}
return

CapsLock & j::
if GetKeyState("Shift", "D")
    if GetKeyState("Alt", "D")
        Send +^{Left}
    else if GetKeyState("Ctrl", "D")
        Send +!{Left}
    else
        Send +{Left}
else if GetKeyState("Ctrl", "D")
    if (GetKeyState("Alt", "D"))
        Send !^{Left}
    else
        Send !{Left}
else if GetKeyState("Alt", "D")
    Send ^{Left}
else if GetKeyState("LWin", "D")
    Send <#{Left}
else
    Send {Left}
return

CapsLock & l::
if GetKeyState("Shift", "D")
    if GetKeyState("Alt", "D")
        Send +^{Right}
    else if GetKeyState("Ctrl", "D")
        Send +!{Right}
    else
        Send +{Right}
else if GetKeyState("Ctrl", "D")
    if (GetKeyState("Alt", "D"))
        Send !^{Right}
    else
        Send !{Right}
else if GetKeyState("Alt", "D")
    Send ^{Right}
else if GetKeyState("LWin", "D")
    Send <#{Right}
else
    Send {Right}
return

CapsLock & u::
if GetKeyState("Shift", "D")
    if GetKeyState("Alt", "D")
        Send +^{Home}
    else if GetKeyState("Ctrl", "D")
        Send +!{Home}
    else
        Send +{Home}
else if GetKeyState("Ctrl", "D")
    if (GetKeyState("Alt", "D"))
        Send !^{Home}
    else
        Send !{Home}
else if GetKeyState("Alt", "D")
    Send ^{Home}
else
    Send {Home}
return

CapsLock & o::
if GetKeyState("Shift", "D")
    if GetKeyState("Alt", "D")
        Send +^{End}
    else if GetKeyState("Ctrl", "D")
        Send +!{End}
    else
        Send +{End}
else if GetKeyState("Ctrl", "D")
    if (GetKeyState("Alt", "D"))
        Send !^{End}
    else
        Send !{End}
else if GetKeyState("Alt", "D")
    Send ^{End}
else
    Send {End}
return

CapsLock & y::
if GetKeyState("Shift", "D")
    if GetKeyState("Alt", "D")
        Send +^{PgUp}
    else if GetKeyState("Ctrl", "D")
        Send +!{PgUp}
    else
        Send +{PgUp}
else if GetKeyState("Ctrl", "D")
    if (GetKeyState("Alt", "D"))
        Send !^{PgUp}
    else
        Send !{PgUp}
else if GetKeyState("Alt", "D")
    Send ^{PgUp}
else
    Send {PgUp}
return

CapsLock & h::
if GetKeyState("Shift", "D")
    if GetKeyState("Alt", "D")
        Send +^{PgDn}
    else if GetKeyState("Ctrl", "D")
        Send +!{PgDn}
    else
        Send +{PgDn}
else if GetKeyState("Ctrl", "D")
    if (GetKeyState("Alt", "D"))
        Send !^{PgDn}
    else
        Send !{PgDn}
else if GetKeyState("Alt", "D")
    Send ^{PgDn}
else
    Send {PgDn}
return
													
CapsLock::
+CapsLock::	; Shift+CapsLock
!CapsLock::	; Alt+CapsLock
^CapsLock::	; Ctrl+CapsLock
;#CapsLock::	; Win+CapsLock
^!CapsLock::	; Ctrl+Alt+CapsLock
^!#CapsLock::	; Ctrl+Alt+Win+CapsLock

return
