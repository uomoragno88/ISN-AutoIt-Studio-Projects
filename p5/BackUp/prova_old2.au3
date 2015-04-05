;prova.au3
Func prova($hTest, $hchiudi)
	local $spippo
	$spippo = "pippo"
	GUICtrlSetData($hText, $spippo)
	GUICtrlSetState($hchiudi, $GUI_FOCUS)
	
	;Options
Opt("GUIOnEventMode", 1) ;Enable OnEvent functions notifications.

;~ GUISetState(@SW_SHOW, $p5) ;Shows a previously hidden window form
;~ GUISetOnEvent($GUI_EVENT_CLOSE, "chiudi", $p5) ;dialog box being closed (either by defined button or system menu).

While 1
	Sleep(20)
	
WEnd

Func Prosegui_click() ; se cliccato il tasto "chiudi"

EndFunc   ;==>chiudi
	
;~ 	MsgBox(262144, 'Debug line ~' & @ScriptLineNumber, 'Selection:' & @lf & '$spippo' & @lf & @lf & 'Return:' & @lf & $spippo) ;### Debug MSGBOX
EndFunc   ;==>prova

