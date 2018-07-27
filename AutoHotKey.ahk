; IMPORTANT INFO ABOUT GETTING STARTED: Lines that start with a
; semicolon, such as this one, are comments.  They are not executed.

; This script has a special filename and path because it is automatically
; launched when you run the program directly.  Also, any text file whose
; name ends in .ahk is associated with the program, which means that it
; can be launched simply by double-clicking it.  You can have as many .ahk
; files as you want, located in any folder.  You can also run more than
; one ahk file simultaneously and each will get its own tray icon.

; SAMPLE HOTKEYS: Below are two sample hotkeys.  The first is Win+Z and it
; launches a web site in the default browser.  The second is Control+Alt+N
; and it launches a new Notepad window (or activates an existing one).  To
; try out these hotkeys, run AutoHotkey again, which will load this file.

#z::Run www.autohotkey.com

^!n::
IfWinExist Untitled - Notepad
	WinActivate
else
	Run Notepad
return

ToggleFireFoxDevToolBox(){
   WinGet, id, list, , , Program Manager
   Loop, %id%
   {
    this_id := id%A_Index%
    WinGetClass, this_class, ahk_id %this_id%
    WinGetTitle, this_title, ahk_id %this_id%
    
    If (this_class = "MozillaWindowClass"){
    toExclude = Firefox
      IfNotInString this_title, %toExclude% 
      {
         ToggleWinMinimize(this_title)
      } 
    }
   } 
}

ToggleWinMinimize(TheWindowTitle)
{
SetTitleMatchMode,2
DetectHiddenWindows, Off
IfWinActive, %TheWindowTitle%
{
   WinActivateBottom, %TheWindowTitle%
   Return
}
Else
{
   IfWinExist, %TheWindowTitle%
   {
     WinGet, winid, ID, %TheWindowTitle%
     DllCall("SwitchToThisWindow", "UInt", winid, "UInt", 1)
   }
}
Return
}

ToggleByProcess(processName)
{
SetTitleMatchMode,2
DetectHiddenWindows, Off

WinGetTitle, process_title, ahk_exe %processName%
WinGet, winid, ID, %process_title%
DllCall("SwitchToThisWindow", "UInt", winid, "UInt", 1)

Return
}

!9:: 
   WinGetClass, class, A
   WinGetTitle, title, A
   WinGet, process, ProcessName, A
   WinGetTitle, process_title, ahk_exe %process%
   MsgBox, The active window's class is "%class%" and Title is %title% and Process is %process% and Title from Process is %process_title%.

!W::ToggleByProcess("vivaldi.exe")

!Q::ToggleByProcess("vivaldi.exe")

!2::ToggleWinMinimize("Microsoft Visual Studio")

!4::ToggleWinMinimize("SQL Server Management")

!3::ToggleWinMinimize("WebStorm")

!1::ToggleWinMinimize("Internet Explorer")

!5::ToggleWinMinimize("Chrome")

!E::ToggleFireFoxDevToolBox()

!D::ToggleWinMinimize("Developer Tools")

!G::ToggleWinMinimize("GitKraken")

!P::ToggleWinMinimize("Postman")

!C::ToggleWinMinimize("Visual Studio Code")

#Left::Browser_Back
#Right::Browser_Forward

+#Up::
    WinGetActiveTitle, Title
    WinRestore, %Title%
   WinMove, %Title%,,0,30,2160, 1890
return

+#Down::
    WinGetActiveTitle, Title
    WinRestore, %Title%
   WinMove, %Title%,,0,30,500, 500
return

::cl::
SEND console.log();
SEND {LEFT}{LEFT}
return

::emailw::
SEND christian.peters@fcsamerica.com
return

::emailg::
SEND christian.peters@gmail.com
return

::{{shrug}}::
SendInput, ¯\_(ツ)_/¯
return

::{{lenny}}::
SendInput, ( ͡° ͜ʖ ͡°)
return

::{{takemyenergy}}::
SendInput, ༼ つ ◕_◕ ༽つ
return

::{{yeah}}::
SendInput, ( •_•)
Send, +{Enter}
SendInput, ( •_•)>⌐■-■
Send, +{Enter}
SendInput, (⌐■_■)
return

;::enterprise::
;                                   _______
; ___.--------._____________,------' -----.`----._
; \                           `  -  .  _         /\
;  `.__________                           `  -  |  |                 __,---"-._
;              `-----------.______             ,'_/  ________,------'___________`----.___________
;                                 `-----.____,'      \===========================================/
;                                       |   :|        >--------------.----------.---------------'
;                                       /   :|   _,--'          ,--'  `--.__.--'
;                                      /   : |--'______________/_
;                                ,---,'    :  \__________________`--.
;                               `__________                        |/|
;                                          `------._               |\|
;                                                    `--._________,-'
;return


::gd::GETDATE()

Insert::

::jsStack::var e = new Error('dummy');`rvar stack = e.stack;`rconsole.log(stack);


; Note: From now on whenever you run AutoHotkey directly, this script
; will be loaded.  So feel free to customize it to suit your needs.

; Please read the QUICK-START TUTORIAL near the top of the help file.
; It explains how to perform common automation tasks such as sending
; keystrokes and mouse clicks.  It also explains more about hotkeys.
