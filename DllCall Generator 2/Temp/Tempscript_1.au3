#include <IE.au3>
ClipPut("...clipboard unchanged...")

DllCall("ole32.dll", "long", "OleInitialize", "ptr", 0)
$oIE = _IECreate('https://msdn.microsoft.com/en-us/library/aa364935%28VS.85%29.aspx', 0, 1, 1)
$oLink = _IELinkGetCollection($oIE, 1)
If IsObj($oLink) Then
    If _IEAction($oLink, "focus") Then
;~ 		$oWindow = $oIE.document.parentWindow
;~ 		_IEAction($oWindow, "blur")
        If _IEAction($oIE, "selectall") Then
            If _IEAction($oIE, "copy") Then
                ConsoleWrite("Debug: Success: " & @LF & ClipGet() & @LF)
            Else
                ConsoleWrite("Debug: Failed to copy." & @LF)
            EndIf
        Else
            ConsoleWrite("Debug: Failed to select." & @LF)
        EndIf
    Else
        ConsoleWrite("Debug: Failed to get focus." & @LF)
    EndIf
Else
    ConsoleWrite("Debug: Failed to get link object." & @LF)
EndIf

_IEQuit($oIE)
