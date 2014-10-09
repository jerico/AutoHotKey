; Photoshop
#IfWinActive, ahk_class Photoshop

^#l::MouseClick,WheelDown,,,10,0,D,R
^#h::MouseClick,WheelUp,,,10,0,D,R

; Win + S, key
#s::
Input key, L1 T1 C ; Limit 1 char, Timeout 1 sec, Case-sensitive
; Duplicate
if (key == "d")
  SendInput, !{i}{d}{Enter}

; Trim transparent
if (key == "t") 
  SendInput, !{i}{r}!{a}{Enter}

; Trim bottom pixel
if (key == "T") 
  SendInput, !{i}{r}!{m}{Enter}

; Copy layer style
if (key == "c")
  SendInput, !{l}{y}{c}

; Paste layer style
if (key == "v")
  SendInput, !{l}{y}{p}

; Rotate clock wise
if (key == "r")
  SendInput, !{i}{g}{9}

; Rotate counter clock wise
if (key == "R")
  SendInput, !{i}{g}{0}

; Close without saving
if (key == "w") {
  SendInput, ^{w}
  Sleep 300
  SendInput, !{n}
}

; Save
if (key == "s") {
  SendInput, ^+{s}
  Sleep 1000
  SendInput, {Enter}
  Sleep 1000
  SendInput, {Enter}
  Sleep 1000
  SendInput, ^{w}
}
; Crop trim straighten
if (key == "x")
  SendInput, !{f}{u}{Down}{Down}{Down}{Enter}
Return
#IfWinActive
