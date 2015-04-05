;*****************************************
;p5.au3 by Stefano
;Created with ISN AutoIt Studio v. 0.97 BETA
;*****************************************
#include "Forms\p5.isf"

Global $s_provenienza
$s_provenienza = "EBAY"
Global $s_ambiente
$s_ambiente = "PRODUZIONE"

GUICtrlSetState($hEbay_Image, $GUI_SHOW)
GUICtrlSetState($hAmazon_Image, $GUI_HIDE)
GUICtrlSetState($hProduzione_Image, $GUI_SHOW)
GUICtrlSetState($hTest_Image, $GUI_HIDE)

;Options
Opt("GUIOnEventMode", 1) ;Enable OnEvent functions notifications.

GUISetState(@SW_SHOW, $p5) ;Shows a previously hidden window form
GUISetOnEvent($GUI_EVENT_CLOSE, "chiudi", $p5) ;dialog box being closed (either by defined button or system menu).

While 1
	Sleep(20)
	
WEnd

Func chiudi() ; se cliccato il tasto "chiudi"
	ConsoleWrite($s_provenienza & @CRLF)
	ConsoleWrite($s_ambiente & @CRLF)
	Exit
EndFunc   ;==>chiudi

Func Produzione_click()
;~ 	ConsoleWrite($hProduzione & @CRLF)
;~ 	ConsoleWrite(GUICtrlRead($hProduzione) & @CRLF)
	If(GUICtrlRead($hProduzione) = $GUI_CHECKED) Then
		$s_ambiente = "PRODUZIONE"
		GUICtrlSetState($hProduzione_Image, $GUI_SHOW)
		GUICtrlSetState($hTest_Image, $GUI_HIDE)		
	EndIf
EndFunc   ;==>Produzione_click

Func Test_click()
	;ConsoleWrite($hProduzione & @CRLF)
	;ConsoleWrite(GUICtrlRead($hProduzione) & @CRLF)
	If(GUICtrlRead($hTest) = $GUI_CHECKED) Then
		$s_ambiente = "TEST"
		GUICtrlSetState($hProduzione_Image, $GUI_HIDE)
		GUICtrlSetState($hTest_Image, $GUI_SHOW)		
	EndIf
EndFunc   ;==>Test_click

Func Test_Banca_click()
	;ConsoleWrite($hProduzione & @CRLF)
	;ConsoleWrite(GUICtrlRead($hProduzione) & @CRLF)
	If(GUICtrlRead($hTest_Banca) = $GUI_CHECKED) Then
		$s_ambiente = "TESTBANCA"
		GUICtrlSetState($hProduzione_Image, $GUI_HIDE)
		GUICtrlSetState($hTest_Image, $GUI_SHOW)				
	EndIf
EndFunc   ;==>Test_Banca_click

Func Ebay_click()
	;ConsoleWrite($hProduzione & @CRLF)
	;ConsoleWrite(GUICtrlRead($hProduzione) & @CRLF)
	If(GUICtrlRead($hEbay) = $GUI_CHECKED) Then
		$s_provenienza = "EBAY"
		GUICtrlSetState($hEbay_Image, $GUI_SHOW)
		GUICtrlSetState($hAmazon_Image, $GUI_HIDE)

	EndIf
EndFunc   ;==>Ebay_click

Func Amazon_click()
	;ConsoleWrite($hProduzione & @CRLF)
	;ConsoleWrite(GUICtrlRead($hProduzione) & @CRLF)
	If(GUICtrlRead($hAmazon) = $GUI_CHECKED) Then
		$s_provenienza = "AMAZON"
		ConsoleWrite('@@ Debug(' & @ScriptLineNumber & ') : $s_provenienza = ' & $s_provenienza & @crlf & '>Error code: ' & @error & @crlf) ;### Debug Console
		GUICtrlSetState($hEbay_Image, $GUI_HIDE)
		GUICtrlSetState($hAmazon_Image, $GUI_SHOW)
		
	EndIf
EndFunc   ;==>Amazon_click

Func baffo1_click()
	ConsoleWrite($hbaffo1 & @CRLF)
	ConsoleWrite(GUICtrlRead($hbaffo1) & @CRLF)
	If(GUICtrlRead($hbaffo1) = $GUI_CHECKED) Then
		ConsoleWrite("BAFFATO" & @CRLF)
	EndIf
	
EndFunc   ;==>baffo1_click
