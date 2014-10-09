AppDir = %A_ScriptDir%\..

#d::
Input key, L1 T1 C ; Limit 1 char, Timeout 1 sec, Case-sensitive

; Show Desktop. Not directory, but default behaviour of win+d
if (key == "d")
  Run shell:::{3080F90D-D7AD-11D9-BD98-0000947B0257}

if (key == "a")
  Run explorer.exe %AppDir%\

if (key == "h")
  Run explorer.exe %AppDir%\..\htdocs

; root
if (key == "r")
  Run explorer.exe %AppDir%\..\

Return
