; WindowPadX

#include vendor\WindowPad\WindowPad.ahk

WindowPad_Init()

#m::
Input key, L1 T1 C ; Limit 1 char, Timeout 1 sec, Case-sensitive
if (key == "h")
  WindowPadMove(-1, 0,  0.5, 1.0, "")
if (key == "H")
  WindowPadMove(-1, -1,  0.5, 0.5, "")
if (key == "j")
  WindowPadMove(0, +1,  1.0, 0.5, "")
if (key == "J")
  WindowPadMove(-1, +1,  0.5, 0.5, "")
if (key == "k")
  WindowPadMove(0, -1,  1.0, 0.5, "")
if (key == "K")
  WindowPadMove(+1, -1,  0.5, 0.5, "")
if (key == "l")
  WindowPadMove(+1, 0,  0.5, 1.0, "")
if (key == "L")
  WindowPadMove(+1, +1,  0.5, 0.5, "")
if (key == ";")
  WindowScreenMove(Next, "")
Return
