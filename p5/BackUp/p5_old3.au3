;*****************************************
;p5.au3 by Stefano
;Created with ISN AutoIt Studio v. 0.97 BETA
;*****************************************
#include "Forms\p5.isf"

;Options
Opt("GUIOnEventMode", 1) ;Enable OnEvent functions notifications.

GUISetState(@SW_SHOW, $p5)  ;Shows a previously hidden window form
GUISetOnEvent($GUI_EVENT_CLOSE, "chiudi", $p5) ;dialog box being closed (either by defined button or system menu).

While 1
	Sleep(20)
		
WEnd

Func chiudi() ; se cliccato il tasto "chiudi"
	Exit
EndFunc   ;==>chiudi

Func baffo1_click() 
	ConsoleWrite ($hbaffo1 &@CRLF) 
	ConsoleWrite (GUICtrlRead($hbaffo1) &@CRLF) 
	If (GUICtrlRead($hbaffo1) = $GUI_CHECKED) Then
		ConsoleWrite ("BAFFATO" &@CRLF)
	EndIf
	
EndFunc   ;==>baffo1_click
