; Launch apps (win + a, key)

#a::
Input key, L1 T1 C ; Limit 1 char, Timeout 1 sec, Case-sensitive

AppDir = %A_ScriptDir%\..

if (key == "b")
  Run %AppDir%\Bvckup 2\bvckup2.bat, %AppDir%\Bvckup 2

if (key == "c") {
  IfExist, C:\Program Files (x86)\Google\Chrome\Application\chrome.exe
    Run C:\Program Files (x86)\Google\Chrome\Application\chrome.exe
  Else
    Run %AppDir%\GoogleChrome\GoogleChromePortable.exe
}

if (key == "C")
  Run %AppDir%\Colorette\Colorette.exe

if (key == "e")
  Run %AppDir%\emacs\runemacs.bat, %AppDir%\emacs

if (key == "d")
  Run %AppDir%\DropboxPortableAHK\DropboxPortableAHK.exe, %AppDir%\DropboxPortableAHK

if (key == "f")
  Run %AppDir%\Firefox\FirefoxPortable.exe

if (key == "F")
  Run %AppDir%\FileZilla\FileZillaPortable.exe

if (key == "g")
  Run %AppDir%\licecap\licecap.exe

if (key == "j")
  Run %AppDir%\JDownloader v2.0\JDownloader2.exe

if (key == "l")
  Run %AppDir%\Listary\Listary.exe

if (key == "p")
  Run %AppDir%\PuTTYtray\putty.exe
  ;Run %AppDir%\PuTTYtray\putty.exe -load dodi.local

if (key == "P")
  Run %AppDir%\PhpStorm\PhpStorm.bat, %AppDir%\PhpStorm

if (key == "o")
  Run %AppDir%\OneNote\OneNotePortable.exe

if (key == "s")
  Run %AppDir%\Skype\SkypePortable.exe
  
; screenshot
if (key == "S")
  Run %AppDir%\fscapture\FSCapture.exe

; rename
if (key == "r")
  Run %AppDir%\AntRenamer\AntRenamerPortable.exe

if (key == "T")
  Run %AppDir%\TreeSizeFree\TreeSizeFree.exe

; terminal
if (key == "t") { 
  ; If Explorer is active, run Cmder with it's current directory
  if (WinActive("ahk_class CabinetWClass")) {
    ControlGetText, _Path, toolbarwindow323, ahk_class CabinetWClass
    StringReplace, _Path, _Path,% "Address: ",% ""
    Run %AppDir%\cmder\Cmder.exe "%_Path%"
  }
  else { 
    Run %AppDir%\cmder\Cmder.exe
  }
} 

if (key == "V")
  Run %AppDir%\VLCPortable\VLCPortable.exe

if (key == "v")
  Run %AppDir%\gVim\gVimPortable.exe

; usb-eject
if (key == "u")
  Run %AppDir%\USBDiskEjector\USB_Disk_Eject.exe  
  
if (key == "x") {
  if WinExist("ahk_class ThunderRT6FormDC")
    WinActivate
  else
    Run %AppDir%\xyplorer\XYplorer.exe
}

if (key == "X")
  Run %AppDir%\XAMPP\xampp-control.exe

if (key == "y")
  Run %AppDir%\YNAB\YNABPortable.exe


Return
