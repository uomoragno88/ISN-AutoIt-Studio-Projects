#include <misc.au3>
#include <Array.au3>
#include <IE.au3>
HotKeySet("{ESC}", "Close")
;~ Local $TOOLS[10]
;~ Global Enum $output1,$output2,$output3,$output4
;~ $TOOLS[1] = "one"
;~ $TOOLS[2] = "two"
#include <GUIConstantsEx.au3>
Opt("GUIOnEventMode", 1)
DllCall("ole32.dll", "long", "OleInitialize", "ptr", 0)
Global $GUI = GUICreate("Embedded IE Test", 640, 480, -1, -1)
GUISetOnEvent($GUI_EVENT_CLOSE, "Close")
Global $oIE = ObjCreate("Shell.Explorer.2")
GUICtrlCreateObj($oIE, 0, 0, 640, 480)
GUISetState(@SW_SHOW)
$oIE.navigate("https://msdn.microsoft.com/en-us/library/aa364935%28VS.85%29.aspx")
While 1
    sleep(100)
WEnd
Func Close()
    ControlClick("Embedded IE Test", "", "[CLASS:Internet Explorer_Server; INSTANCE:1]")
    Sleep(200)
    Send("^a")
    Sleep(200)
    Send("^c")
    Run(@WindowsDir & "\notepad.exe")
    WinWaitActive("[CLASS:Notepad]", "", 3)
    ControlSetText("[CLASS:Notepad]", "", "[CLASS:Edit; INSTANCE:1]", ClipGet() )
 ;   Run("Notepad.exe")
 ;   WinWait("Untitled - Notepad")
 ;   WinActivate("Untitled - Notepad")
 ;   Sleep(200)
 ;   Send("^v")
    Exit
EndFunc