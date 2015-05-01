#include "ff.au3"

DllCall("ole32.dll", "long", "OleInitialize", "ptr", 0)

Local $stesto, $iret
Local $winHandle = WinGetHandle ("Gestisci i tuoi ordini - Mozilla Firefox") 
WinActivate($winHandle)
	Sleep(200)
	Send("^a")
	Sleep(200)
	Send("^c")
	$sMSDNPage = ClipGet()
;~ $iret = _FFWindowSelect("")
;~ 	if @error Then
;~ 		MsgBox(64, "pp", "pp")
;~ 	EndIf
;~ $stesto = _FFReadText()
MsgBox(262144,'Debug line ~' & @ScriptLineNumber,'Selection:' & @lf & '$stesto' & @lf & @lf & 'Return:' & @lf &$stesto) ;### Debug MSGBOX



