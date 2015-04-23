#include <IE.au3>
ClipPut("...clipboard unchanged...")

$oIE = _IECreate('http://www.google.com', 0, 1, 1)
If _IEAction($oIE, "selectall") Then
    If _IEAction($oIE, "copy") Then
        ConsoleWrite("Debug: Success: " & @LF & ClipGet() & @LF)
    Else
        ConsoleWrite("Debug: Failed to copy." & @LF)
    EndIf
Else
    ConsoleWrite("Debug: Failed to select." & @LF)
EndIf
