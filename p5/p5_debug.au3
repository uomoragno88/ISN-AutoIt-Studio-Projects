;*****************************************
;p5.au3 by Stefano
;Created with ISN AutoIt Studio v. 0.97 BETA
;*****************************************
#include "dbug.au3"

#include "Forms\p5.isf"
#include "prova.au3"

#include "debug.au3"

Execute(Dbug(12))
Global $s_provenienza
Execute(Dbug(13))
Global $s_ambiente

;Options
Execute(Dbug(16))
Opt("GUIOnEventMode", 1) ;Enable OnEvent functions notifications.

Execute(Dbug(18))
GUISetState(@SW_SHOW, $p5) ;Shows a previously hidden window form
Execute(Dbug(19))
GUISetOnEvent($GUI_EVENT_CLOSE, "chiudi", $p5) ;dialog box being closed (either by defined button or system menu).

Execute(Dbug(21))
While 1
Execute(Dbug(22))
	Sleep(20)
Execute(Dbug(23))
	
Execute(Dbug(24))
WEnd

Execute(Dbug(26))
Func chiudi() ; se cliccato il tasto "chiudi"
Execute(Dbug(27))
	ConsoleWrite($s_provenienza)
Execute(Dbug(28))
	Exit
Execute(Dbug(29))
EndFunc   ;==>chiudi

Execute(Dbug(31))
Func Produzione_click()
Execute(Dbug(32))
	ConsoleWrite($hProduzione & @CRLF)
Execute(Dbug(33))
	ConsoleWrite(GUICtrlRead($hProduzione) & @CRLF)
Execute(Dbug(34))
	If(GUICtrlRead($hProduzione) = $GUI_CHECKED) Then
Execute(Dbug(35))
		$s_provenienza = "PRODUZIONE"
Execute(Dbug(36))
	EndIf
Execute(Dbug(37))
EndFunc

Execute(Dbug(39))
Func Test_click()
	;ConsoleWrite($hProduzione & @CRLF)
	;ConsoleWrite(GUICtrlRead($hProduzione) & @CRLF)
Execute(Dbug(42))
	If(GUICtrlRead($hTest) = $GUI_CHECKED) Then
Execute(Dbug(43))
		$s_provenienza = "TEST"
Execute(Dbug(44))
	EndIf
Execute(Dbug(45))
EndFunc

Execute(Dbug(47))
Func Test_Banca_click()
	;ConsoleWrite($hProduzione & @CRLF)
	;ConsoleWrite(GUICtrlRead($hProduzione) & @CRLF)
Execute(Dbug(50))
	If(GUICtrlRead($hTest_Banca) = $GUI_CHECKED) Then
Execute(Dbug(51))
		$s_provenienza = "TESTBANCA"
Execute(Dbug(52))
		prova($p5, $hTest, $hchiudi)
		ConsoleWrite('@@ Debug(' & @ScriptLineNumber & ') : $s_provenienza = ' & $s_provenienza & @crlf & '>Error code: ' & @error & @crlf) ;### Debug Console
Execute(Dbug(54))
	EndIf
Execute(Dbug(55))
EndFunc
Execute(Dbug(56))
	
Execute(Dbug(57))
Func baffo1_click()
Execute(Dbug(58))
	ConsoleWrite($hbaffo1 & @CRLF)
Execute(Dbug(59))
	ConsoleWrite(GUICtrlRead($hbaffo1) & @CRLF)
Execute(Dbug(60))
	If(GUICtrlRead($hbaffo1) = $GUI_CHECKED) Then
Execute(Dbug(61))
		ConsoleWrite("BAFFATO" & @CRLF)
Execute(Dbug(62))
	EndIf
Execute(Dbug(63))
	
Execute(Dbug(64))
EndFunc   ;==>baffo1_click
