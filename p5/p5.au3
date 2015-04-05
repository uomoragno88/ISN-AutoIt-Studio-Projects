;*****************************************
;p5.au3 by Stefano
;Created with ISN AutoIt Studio v. 0.97 BETA
;*****************************************
#include "dbug.au3"

#include "Forms\p5.isf"
#include "prova.au3"



Global $s_provenienza
Global $s_ambiente

;Options
Opt("GUIOnEventMode", 1) ;Enable OnEvent functions notifications.

GUISetState(@SW_SHOW, $p5) ;Shows a previously hidden window form
GUISetOnEvent($GUI_EVENT_CLOSE, "chiudi", $p5) ;dialog box being closed (either by defined button or system menu).

While 1
	Sleep(20)
	
WEnd

Func chiudi() ; se cliccato il tasto "chiudi"
	ConsoleWrite($s_provenienza)
	Exit
EndFunc   ;==>chiudi

Func Produzione_click()
	ConsoleWrite($hProduzione & @CRLF)
	ConsoleWrite(GUICtrlRead($hProduzione) & @CRLF)
	If(GUICtrlRead($hProduzione) = $GUI_CHECKED) Then
		$s_provenienza = "PRODUZIONE"
	EndIf
EndFunc

Func Test_click()
	;ConsoleWrite($hProduzione & @CRLF)
	;ConsoleWrite(GUICtrlRead($hProduzione) & @CRLF)
	If(GUICtrlRead($hTest) = $GUI_CHECKED) Then
		$s_provenienza = "TEST"
	EndIf
EndFunc

Func Test_Banca_click()
	;ConsoleWrite($hProduzione & @CRLF)
	;ConsoleWrite(GUICtrlRead($hProduzione) & @CRLF)
	If(GUICtrlRead($hTest_Banca) = $GUI_CHECKED) Then
		$s_provenienza = "TESTBANCA"
		prova($p5, $hTest, $hchiudi)
		ConsoleWrite('@@ Debug(' & @ScriptLineNumber & ') : $s_provenienza = ' & $s_provenienza & @crlf & '>Error code: ' & @error & @crlf) ;### Debug Console
	EndIf
EndFunc
	
Func baffo1_click()
	ConsoleWrite($hbaffo1 & @CRLF)
	ConsoleWrite(GUICtrlRead($hbaffo1) & @CRLF)
	If(GUICtrlRead($hbaffo1) = $GUI_CHECKED) Then
		ConsoleWrite("BAFFATO" & @CRLF)
	EndIf
	
EndFunc   ;==>baffo1_click
