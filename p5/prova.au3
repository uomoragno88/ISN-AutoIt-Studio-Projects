;prova.au3
Func prova($p5, $hTest, $hchiudi)
	local $spippo
	$spippo = "pippo"
	GUICtrlSetData($hText, $spippo)
	GUICtrlSetState($hchiudi, $GUI_FOCUS)
	
	GUISetState(@SW_SHOW, $p5)
	; Switch to GetMessage mode
	Local $iOnEventMode = Opt("GUIOnEventMode", 0), $iMsg

	While 1

		$iMsg = GUIGetMsg() ; Variable needed to check which "Copy" button was pressed
;~ ConsoleWrite('@@ Debug(' & @ScriptLineNumber & ') : $iMsg = ' & $iMsg & @crlf & '>Error code: ' & @error & @crlf) ;### Debug Console
		Switch $iMsg
			Case $hProsegui
				ExitLoop

		EndSwitch
	WEnd

	; Clear up

	Opt("GUIOnEventMode", 1) ; Reset original GUI mode

EndFunc   ;==>prova

