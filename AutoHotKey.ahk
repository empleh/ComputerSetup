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

!1::ToggleWinMinimize("Firefox")

!2::ToggleWinMinimize("Microsoft Visual Studio")

!3::ToggleWinMinimize("SQL Server Management")

!5::ToggleWinMinimize("Clover")

!4::ToggleWinMinimize("Chrome")

!Q::ToggleWinMinimize("Outlook")

!W::ToggleWinMinimize("iTunes")

!E::ToggleWinMinimize("Firebug")

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

Insert::

While, 1
{
 WinWaitActive, Rename ahk_class #32770
 send y
}


; Note: From now on whenever you run AutoHotkey directly, this script
; will be loaded.  So feel free to customize it to suit your needs.

; Please read the QUICK-START TUTORIAL near the top of the help file.
; It explains how to perform common automation tasks such as sending
; keystrokes and mouse clicks.  It also explains more about hotkeys.

