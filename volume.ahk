#include vendor\Vista Audio Control\VA.ahk

; Volumouse (ctrl + shift + scroll volume)
^+WheelUp::VA_SetMasterVolume(VA_GetMasterVolume() + 5)
^+WheelDown::VA_SetMasterVolume(VA_GetMasterVolume() - 5)

; Media keys
#f5::Send {Media_Play_Pause}
#f6::Send {Media_Stop}
#f7::Send {Media_Prev}
#f8::Send {Media_Next}
