#NoEnv
#Persistent
#SingleInstance

StringCaseSense On

; App launchers (win + a, key)
#include apps.ahk

; Directories (win + d, key)
#include dir.ahk

; Some quick text replacements
#include text-replacement.ahk

; Volume using ctrl + shift + mousewheel
#include volume.ahk

; Window tiling using win + hjkl
#include window-tile.ahk

; App-specific portable shortcuts
#include photoshop.ahk

; Cycle window
#include vendor\cycleWindow\Thumbnail lib.ahk
#include vendor\cycleWindow\cycleWindow.ahk
LWin & Tab::cycleCurrentWindow()
Alt & Tab::cycleWindow()


; Reload script (ctrl + alt + r)
^!r::Reload
^!e::Run %A_ScriptDir%\..\gVim\gVimPortable.exe %A_ScriptDir%\main.ahk

; Close window (win + shift + c)
#+c::Send !{F4}

; Always on top
; #a:: Winset, AlwaysOnTop, Toggle, A

; Map capslock to escape
Esc::Capslock
Capslock::Esc

; Vim-like arrows
Capslock & j::Send {Down}
Capslock & k::Send {Up}
Capslock & h::Send {Left}
Capslock & l::Send {Right}
