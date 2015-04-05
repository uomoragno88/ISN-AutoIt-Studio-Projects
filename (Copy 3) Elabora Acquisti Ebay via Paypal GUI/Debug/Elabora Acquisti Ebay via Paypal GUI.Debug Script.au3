Global $AutoItDebugger_Paused = 0
Global $AutoItDebugger_Quit = 0
Global $AutoItDebugger_Error
Global $AutoItDebugger_Extended
Global $AutoItDebuggerCommandWindowName = ""
Global $AutoItDebuggerCommandWindow
Global $AutoItDebuggerCommandWindowListbox
OnAutoItExitRegister("AutoIt_Debugger_OnAutoItExit")
AutoIt_Debugger_CreateMessageWindow()
$TempOriginalFileBeingDebuggedFileName = "Elabora Acquisti Ebay via Paypal GUI.au3"
$TempOriginalFileBeingDebuggedFileFolder = "H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI"
$TempOriginalFileBeingDebuggedFilePath = "H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3"
AutoIt_Debugger_LoadFile("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3")
AutoIt_Debugger_DebugFile(@ScriptFullPath)

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 1, False))
#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 1, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 2, False))
#AutoIt3Wrapper_Icon=Images\paypal.ico
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 2, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 3, False))
#AutoIt3Wrapper_UseX64=n
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 3, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 4, False))
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 4, False, @error, @extended))
; #AutoIt3Wrapper_UseX64=n perche' le librerie sono a 32bit


SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 7, False))
Global $oMyError = ObjEvent("AutoIt.Error", "MyErrFunc")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 7, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("oMyError")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oMyError", $oMyError))


SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 9, False))
#Include "H:\autoit_3_3_12\install\Include\File.au3"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 9, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 10, False))
#Include "H:\autoit_3_3_12\install\Include\Misc.au3"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 10, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 11, False))
#Include "H:\autoit_3_3_12\install\Include\Clipboard.au3"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 11, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 12, False))
#Include "H:\autoit_3_3_12\install\Include\WindowsConstants.au3"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 12, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 13, False))
#Include "H:\autoit_3_3_12\install\Include\Array.au3"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 13, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 14, False))
#Include "H:\autoit_3_3_12\install\Include\StringConstants.au3"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 14, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 15, False))
#Include "H:\autoit_3_3_12\install\Include\MsgBoxConstants.au3"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 15, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 16, False))
#Include "H:\autoit_3_3_12\user_include\CSV_Function.au3"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 16, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 17, False))
#Include "H:\autoit_3_3_12\user_include\AccessConstants.au3"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 17, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 18, False))
#Include "H:\autoit_3_3_12\user_include\ExtMsgBox.au3"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 18, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 19, False))
#Include "H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Forms\GUI_Form.isf"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 19, False, @error, @extended))


SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 21, False))
_ExtMsgBoxSet(0, 0, Default, Default, 11, "Calibri")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 21, False, @error, @extended))


SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 23, False))
Global $s_provenienza
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 23, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_provenienza")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_provenienza", $s_provenienza))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 24, False))
$s_provenienza = "PAYPAL"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 24, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_provenienza")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_provenienza", $s_provenienza))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 25, False))
Global $s_ambiente
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 25, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ambiente")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ambiente", $s_ambiente))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 26, False))
$s_ambiente = "PRODUZIONE"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 26, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ambiente")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ambiente", $s_ambiente))


SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 28, False))
GUICtrlSetState($hPaypal_Image, $GUI_SHOW)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 28, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("hPaypal_Image")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$hPaypal_Image", $hPaypal_Image))
If SetError(@error, @extended, IsDeclared("GUI_SHOW")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$GUI_SHOW", $GUI_SHOW))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 29, False))
GUICtrlSetState($hProduzione_Image, $GUI_SHOW)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 29, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("hProduzione_Image")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$hProduzione_Image", $hProduzione_Image))
If SetError(@error, @extended, IsDeclared("GUI_SHOW")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$GUI_SHOW", $GUI_SHOW))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 30, False))
GUICtrlSetState($hTest_Image, $GUI_HIDE)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 30, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("hTest_Image")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$hTest_Image", $hTest_Image))
If SetError(@error, @extended, IsDeclared("GUI_HIDE")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$GUI_HIDE", $GUI_HIDE))

;Options

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 33, False))
Opt("GUIOnEventMode", 1) ;Enable OnEvent functions notifications.
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 33, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 34, False))
GUISetState(@SW_SHOW, $GUI_Form) ;Shows a previously hidden window form
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 34, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("GUI_Form")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$GUI_Form", $GUI_Form))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 35, False))
GUISetOnEvent($GUI_EVENT_CLOSE, "Chiudi_click", $GUI_Form) ;dialog box being closed (either by defined button or system menu).
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 35, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("GUI_EVENT_CLOSE")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$GUI_EVENT_CLOSE", $GUI_EVENT_CLOSE))
If SetError(@error, @extended, IsDeclared("GUI_Form")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$GUI_Form", $GUI_Form))


SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 37, False))
While 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 37, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 38, False))
	Sleep(20)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 38, False, @error, @extended))
	

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 40, False))
WEnd
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 40, False, @error, @extended))


SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 42, False))
Func Chiudi_click() ; se cliccato il tasto "chiudi"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 42, False, @error, @extended))


SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 44, False))
	Exit
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 44, False, @error, @extended))
EndFunc   ;==>Chiudi_click


SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 47, False))
Func Produzione_click()
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 47, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 48, False))
	If(GUICtrlRead($hProduzione) = $GUI_CHECKED) Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 48, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("hProduzione")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$hProduzione", $hProduzione))
If SetError(@error, @extended, IsDeclared("GUI_CHECKED")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$GUI_CHECKED", $GUI_CHECKED))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 49, False))
		$s_ambiente = "PRODUZIONE"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 49, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ambiente")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ambiente", $s_ambiente))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 50, False))
		GUICtrlSetState($hProduzione_Image, $GUI_SHOW)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 50, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("hProduzione_Image")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$hProduzione_Image", $hProduzione_Image))
If SetError(@error, @extended, IsDeclared("GUI_SHOW")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$GUI_SHOW", $GUI_SHOW))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 51, False))
		GUICtrlSetState($hTest_Image, $GUI_HIDE)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 51, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("hTest_Image")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$hTest_Image", $hTest_Image))
If SetError(@error, @extended, IsDeclared("GUI_HIDE")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$GUI_HIDE", $GUI_HIDE))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 52, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 52, False, @error, @extended))
EndFunc   ;==>Produzione_click


SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 55, False))
Func Test_click()
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 55, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 56, False))
	If(GUICtrlRead($hTest) = $GUI_CHECKED) Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 56, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("hTest")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$hTest", $hTest))
If SetError(@error, @extended, IsDeclared("GUI_CHECKED")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$GUI_CHECKED", $GUI_CHECKED))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 57, False))
		$s_ambiente = "TEST"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 57, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ambiente")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ambiente", $s_ambiente))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 58, False))
		GUICtrlSetState($hProduzione_Image, $GUI_HIDE)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 58, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("hProduzione_Image")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$hProduzione_Image", $hProduzione_Image))
If SetError(@error, @extended, IsDeclared("GUI_HIDE")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$GUI_HIDE", $GUI_HIDE))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 59, False))
		GUICtrlSetState($hTest_Image, $GUI_SHOW)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 59, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("hTest_Image")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$hTest_Image", $hTest_Image))
If SetError(@error, @extended, IsDeclared("GUI_SHOW")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$GUI_SHOW", $GUI_SHOW))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 60, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 60, False, @error, @extended))
EndFunc   ;==>Test_click


SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 63, False))
Func Test_Banca_click()
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 63, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 64, False))
	If(GUICtrlRead($hTest_Banca) = $GUI_CHECKED) Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 64, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("hTest_Banca")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$hTest_Banca", $hTest_Banca))
If SetError(@error, @extended, IsDeclared("GUI_CHECKED")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$GUI_CHECKED", $GUI_CHECKED))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 65, False))
		$s_ambiente = "TESTBANCA"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 65, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ambiente")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ambiente", $s_ambiente))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 66, False))
		GUICtrlSetState($hProduzione_Image, $GUI_HIDE)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 66, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("hProduzione_Image")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$hProduzione_Image", $hProduzione_Image))
If SetError(@error, @extended, IsDeclared("GUI_HIDE")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$GUI_HIDE", $GUI_HIDE))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 67, False))
		GUICtrlSetState($hTest_Image, $GUI_SHOW)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 67, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("hTest_Image")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$hTest_Image", $hTest_Image))
If SetError(@error, @extended, IsDeclared("GUI_SHOW")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$GUI_SHOW", $GUI_SHOW))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 68, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 68, False, @error, @extended))
EndFunc   ;==>Test_Banca_click


SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 71, False))
Func Paypal_click()
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 71, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 72, False))
	If(GUICtrlRead($hPaypal) = $GUI_CHECKED) Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 72, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("hPaypal")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$hPaypal", $hPaypal))
If SetError(@error, @extended, IsDeclared("GUI_CHECKED")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$GUI_CHECKED", $GUI_CHECKED))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 73, False))
		$s_provenienza = "PAYPAL"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 73, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_provenienza")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_provenienza", $s_provenienza))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 74, False))
		GUICtrlSetState($hPaypal_Image, $GUI_SHOW)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 74, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("hPaypal_Image")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$hPaypal_Image", $hPaypal_Image))
If SetError(@error, @extended, IsDeclared("GUI_SHOW")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$GUI_SHOW", $GUI_SHOW))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 75, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 75, False, @error, @extended))
EndFunc   ;==>Paypal_click


SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 78, False))
Func Prosegui_click()
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 78, False, @error, @extended))
	Select
		Case $s_provenienza = "PAYPAL"

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 81, False))
			ConsoleWrite($s_provenienza & @CRLF)
SetError(@error, @extended, AutoIt_Debugger_SendConsoleWrite($s_provenienza & @CRLF))
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 81, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_provenienza")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_provenienza", $s_provenienza))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 82, False))
			ConsoleWrite($s_ambiente & @CRLF)
SetError(@error, @extended, AutoIt_Debugger_SendConsoleWrite($s_ambiente & @CRLF))
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 82, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ambiente")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ambiente", $s_ambiente))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 83, False))
			Tratta_Paypal($GUI_Form)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 83, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("GUI_Form")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$GUI_Form", $GUI_Form))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 84, False))
		Case Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 84, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 85, False))
			Exit
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 85, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 86, False))
	EndSelect
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 86, False, @error, @extended))
EndFunc   ;==>Prosegui_click


SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 89, False))
Func Tratta_Paypal($GUI_Form)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 89, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("GUI_Form")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$GUI_Form", $GUI_Form))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 90, False))
	Local $o_Con, $o_Rs
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 90, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_Con")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_Con", $o_Con))
If SetError(@error, @extended, IsDeclared("o_Rs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_Rs", $o_Rs))
	;DATA========================================================
	Select
		Case $s_ambiente = "TEST"

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 94, False))
			Local $s_dbname = "h:\archivi_test\bilancio.accdb"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 94, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_dbname")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_dbname", $s_dbname))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 95, False))
		Case $s_ambiente = "PRODUZIONE"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 95, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ambiente")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ambiente", $s_ambiente))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 96, False))
			Local $s_dbname = "G:\ilgrandeblek\archivi\bilancio.accdb"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 96, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_dbname")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_dbname", $s_dbname))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 97, False))
		Case $s_ambiente = "TESTBANCA"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 97, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ambiente")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ambiente", $s_ambiente))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 98, False))
			Local $s_dbname = "c:\users\s522733\documents\work\archivi\bilancio.accdb"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 98, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_dbname")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_dbname", $s_dbname))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 99, False))
		Case Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 99, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 100, False))
			Exit
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 100, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 101, False))
	EndSelect
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 101, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 102, False))
	Local $s_Tablename = "Q_ACQUISTI"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 102, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_Tablename")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Tablename", $s_Tablename))
	;CONNECT=====================================================

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 104, False))
	AccessConnectConn($s_dbname, $o_Con, 0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 104, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_dbname")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_dbname", $s_dbname))
If SetError(@error, @extended, IsDeclared("o_Con")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_Con", $o_Con))


SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 106, False))
	Global $rKey = "HKCU\Control Panel\International", $sDecimal = RegRead($rKey, "sDecimal"), $sThousands = RegRead($rKey, "sThousand") ; _StringAddThousandsSep
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 106, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("rKey")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$rKey", $rKey))
If SetError(@error, @extended, IsDeclared("sDecimal")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sDecimal", $sDecimal))
If SetError(@error, @extended, IsDeclared("rKey")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$rKey", $rKey))
If SetError(@error, @extended, IsDeclared("sThousands")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sThousands", $sThousands))
If SetError(@error, @extended, IsDeclared("rKey")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$rKey", $rKey))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 107, False))
	Global $ItemArray, $ItemLines, $HowManyColumns, $OldProgress, $List, $Progress
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 107, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))
If SetError(@error, @extended, IsDeclared("ItemLines")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemLines", $ItemLines))
If SetError(@error, @extended, IsDeclared("HowManyColumns")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$HowManyColumns", $HowManyColumns))
If SetError(@error, @extended, IsDeclared("OldProgress")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$OldProgress", $OldProgress))
If SetError(@error, @extended, IsDeclared("List")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$List", $List))
If SetError(@error, @extended, IsDeclared("Progress")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$Progress", $Progress))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 108, False))
	Global $SetColumnWidths = True ;			Sets optimum column widths automatically, roughly doubles total time
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 108, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("SetColumnWidths")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$SetColumnWidths", $SetColumnWidths))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 109, False))
	Global $Delimiter ;							Parts of europe typically default to semicolon, thanks to UEZ!
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 109, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("Delimiter")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$Delimiter", $Delimiter))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 110, False))
	Global $Font = "Comic Sans MS", $Underline = False, $UnderValue
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 110, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("Font")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$Font", $Font))
If SetError(@error, @extended, IsDeclared("Underline")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$Underline", $Underline))
If SetError(@error, @extended, IsDeclared("UnderValue")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$UnderValue", $UnderValue))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 111, False))
	Global $FontSize = 9, $FontWeight = 400 ;	Do NOT change these values
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 111, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("FontSize")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$FontSize", $FontSize))
If SetError(@error, @extended, IsDeclared("FontWeight")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$FontWeight", $FontWeight))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 112, False))
	If $Underline Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 112, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("Underline")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$Underline", $Underline))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 113, False))
		$UnderValue = 4
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 113, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("UnderValue")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$UnderValue", $UnderValue))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 114, False))
	Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 114, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 115, False))
		$UnderValue = 0
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 115, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("UnderValue")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$UnderValue", $UnderValue))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 116, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 116, False, @error, @extended))


SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 118, False))
	$File = FileOpenDialog("Select a TXT File", @DesktopDir, "TAB Files (*.txt)")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 118, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("File")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$File", $File))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 119, False))
	$Input = FileRead($File)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 119, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("Input")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$Input", $Input))
If SetError(@error, @extended, IsDeclared("File")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$File", $File))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 120, False))
	$Delimiter = @TAB
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 120, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("Delimiter")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$Delimiter", $Delimiter))


SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 122, False))
	$ItemArray = _CSVSplit($Input, $Delimiter)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 122, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))
If SetError(@error, @extended, IsDeclared("Input")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$Input", $Input))
If SetError(@error, @extended, IsDeclared("Delimiter")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$Delimiter", $Delimiter))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 123, False))
	_ArrayDisplay($ItemArray)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 123, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 124, False))
	$ItemLines = UBound($ItemArray)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 124, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("ItemLines")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemLines", $ItemLines))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 125, False))
	$HowManyColumns = UBound($ItemArray, 2)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 125, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("HowManyColumns")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$HowManyColumns", $HowManyColumns))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))
;~ ======================
	
	; determino se esiste almeno un record relativo a pagamenti
	; inviati per acquisto merce pagat con paypal
	; il file cvs scaricato � con i dati pi� recenti in alto
	; per cui lo leggo in senso inverso

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 132, False))
	Local $s_work, $i_row, $i_max_row
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 132, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work", $s_work))
If SetError(@error, @extended, IsDeclared("i_row")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_row", $i_row))
If SetError(@error, @extended, IsDeclared("i_max_row")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_max_row", $i_max_row))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 133, False))
	Local $i_almeno1, $s_work_tipo, $s_work_cod_oggetto
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 133, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_almeno1")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_almeno1", $i_almeno1))
If SetError(@error, @extended, IsDeclared("s_work_tipo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_tipo", $s_work_tipo))
If SetError(@error, @extended, IsDeclared("s_work_cod_oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_cod_oggetto", $s_work_cod_oggetto))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 134, False))
	$i_max_row = $ItemLines - 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 134, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_max_row")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_max_row", $i_max_row))
If SetError(@error, @extended, IsDeclared("ItemLines")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemLines", $ItemLines))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 135, False))
	$i_almeno1 = 0
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 135, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_almeno1")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_almeno1", $i_almeno1))
	

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 137, False))
	For $i_row = $i_max_row To 1 Step -1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 137, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_row")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_row", $i_row))
If SetError(@error, @extended, IsDeclared("i_max_row")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_max_row", $i_max_row))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 138, False))
		$s_works_tipo = $ItemArray[$i_row][4]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 138, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_works_tipo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_works_tipo", $s_works_tipo))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))
If SetError(@error, @extended, IsDeclared("i_row")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_row", $i_row))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 139, False))
		$s_work_cod_oggetto = $ItemArray[$i_row][17]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 139, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_cod_oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_cod_oggetto", $s_work_cod_oggetto))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))
If SetError(@error, @extended, IsDeclared("i_row")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_row", $i_row))
		Select
			Case $s_works_tipo = "Pagamento con procedura rapida inviato"

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 142, False))
				If $s_work_cod_oggetto <> "" Then ; e' un acquisto ebay
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 142, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_cod_oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_cod_oggetto", $s_work_cod_oggetto))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 143, False))
					$i_almeno1 = 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 143, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_almeno1")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_almeno1", $i_almeno1))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 144, False))
					ExitLoop
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 144, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 145, False))
				EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 145, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 146, False))
		EndSelect
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 146, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 147, False))
	Next
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 147, False, @error, @extended))
	

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 149, False))
	If $i_almeno1 Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 149, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_almeno1")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_almeno1", $i_almeno1))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 150, False))
	Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 150, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 151, False))
		$sMsg = "Non ci sono acquisti da registrare! Elaborazione abortita"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 151, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("sMsg")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sMsg", $sMsg))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 152, False))
		$iRetValue = _ExtMsgBox($EMB_ICONSTOP, "OK", "Errore", $sMsg)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 152, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("iRetValue")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iRetValue", $iRetValue))
If SetError(@error, @extended, IsDeclared("EMB_ICONSTOP")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$EMB_ICONSTOP", $EMB_ICONSTOP))
If SetError(@error, @extended, IsDeclared("sMsg")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sMsg", $sMsg))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 153, False))
		Exit
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 153, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 154, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 154, False, @error, @extended))
	
	; tratto gli ACQUISTI

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 157, False))
	Global $i_sw_PBL
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 157, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_sw_PBL")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_sw_PBL", $i_sw_PBL))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 158, False))
	Global $i_sw_EUR
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 158, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_sw_EUR")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_sw_EUR", $i_sw_EUR))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 159, False))
	Global $i_sw_acq
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 159, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_sw_acq")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_sw_acq", $i_sw_acq))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 160, False))
	Global $s_work_ID_transazione
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 160, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_ID_transazione")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_ID_transazione", $s_work_ID_transazione))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 161, False))
	Global $s_work_ID_transazione_di_riferimento
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 161, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_ID_transazione_di_riferimento")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_ID_transazione_di_riferimento", $s_work_ID_transazione_di_riferimento))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 162, False))
	Global $s_work_Data
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 162, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_Data")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_Data", $s_work_Data))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 163, False))
	Global $s_work_Nome
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 163, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_Nome")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_Nome", $s_work_Nome))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 164, False))
	Global $s_work_Email
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 164, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_Email")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_Email", $s_work_Email))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 165, False))
	Global $s_work_URL_Oggetto
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 165, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_URL_Oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_URL_Oggetto", $s_work_URL_Oggetto))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 166, False))
	Global $s_work_Numero_oggetto
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 166, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_Numero_oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_Numero_oggetto", $s_work_Numero_oggetto))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 167, False))
	Global $s_work_Campo_opzionale
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 167, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_Campo_opzionale")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_Campo_opzionale", $s_work_Campo_opzionale))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 168, False))
	Global $s_work_Valuta
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 168, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_Valuta")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_Valuta", $s_work_Valuta))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 169, False))
	Global $s_work_Importo_netto
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 169, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_Importo_netto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_Importo_netto", $s_work_Importo_netto))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 170, False))
	Global $s_ACQUISTI_ID_ACQ, $s_ACQUISTI_ANNO_CONTABILE, $s_ACQUISTI_DOC_DI_CARICO_NUMERO
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 170, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_ID_ACQ")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_ID_ACQ", $s_ACQUISTI_ID_ACQ))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_ANNO_CONTABILE")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_ANNO_CONTABILE", $s_ACQUISTI_ANNO_CONTABILE))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_DOC_DI_CARICO_NUMERO")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_DOC_DI_CARICO_NUMERO", $s_ACQUISTI_DOC_DI_CARICO_NUMERO))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 171, False))
	Global $s_ACQUISTI_DOC_DI_CARICO_DATA, $s_ACQUISTI_DESCRIZIONE, $s_ACQUISTI_NUMERO_PEZZI
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 171, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_DOC_DI_CARICO_DATA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_DOC_DI_CARICO_DATA", $s_ACQUISTI_DOC_DI_CARICO_DATA))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_DESCRIZIONE")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_DESCRIZIONE", $s_ACQUISTI_DESCRIZIONE))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_NUMERO_PEZZI")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_NUMERO_PEZZI", $s_ACQUISTI_NUMERO_PEZZI))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 172, False))
	Global $s_ACQUISTI_DATA_ACQUISTO, $s_ACQUISTI_FORNITORE, $s_ACQUISTI_VALUTA
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 172, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_DATA_ACQUISTO")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_DATA_ACQUISTO", $s_ACQUISTI_DATA_ACQUISTO))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_FORNITORE")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_FORNITORE", $s_ACQUISTI_FORNITORE))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_VALUTA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_VALUTA", $s_ACQUISTI_VALUTA))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 173, False))
	Global $s_ACQUISTI_IMPORTO_ACQ_VALUTA, $s_ACQUISTI_SEH_ACQ_VALUTA, $s_ACQUISTI_CTV_ACQ_EURO, $s_ACQUISTI_IVA_DAZIO_ACQ_EURO
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 173, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_IMPORTO_ACQ_VALUTA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_IMPORTO_ACQ_VALUTA", $s_ACQUISTI_IMPORTO_ACQ_VALUTA))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_SEH_ACQ_VALUTA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_SEH_ACQ_VALUTA", $s_ACQUISTI_SEH_ACQ_VALUTA))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_CTV_ACQ_EURO")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_CTV_ACQ_EURO", $s_ACQUISTI_CTV_ACQ_EURO))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_IVA_DAZIO_ACQ_EURO")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_IVA_DAZIO_ACQ_EURO", $s_ACQUISTI_IVA_DAZIO_ACQ_EURO))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 174, False))
	Global $s_ACQUISTI_CODICE_UNIVOCO_PAYPAL, $s_ACQUISTI_DATA_PAGAMENTO, $s_ACQUISTI_PAGAMENTO_A_MEZZO
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 174, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_CODICE_UNIVOCO_PAYPAL")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_CODICE_UNIVOCO_PAYPAL", $s_ACQUISTI_CODICE_UNIVOCO_PAYPAL))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_DATA_PAGAMENTO")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_DATA_PAGAMENTO", $s_ACQUISTI_DATA_PAGAMENTO))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_PAGAMENTO_A_MEZZO")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_PAGAMENTO_A_MEZZO", $s_ACQUISTI_PAGAMENTO_A_MEZZO))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 175, False))
	Global $s_ACQUISTI_DESCRIZIONE_VALUTA
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 175, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_DESCRIZIONE_VALUTA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_DESCRIZIONE_VALUTA", $s_ACQUISTI_DESCRIZIONE_VALUTA))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 176, False))
	Global $s_CALCOLATO_TOTALE_ACQ_VALUTA
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 176, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_CALCOLATO_TOTALE_ACQ_VALUTA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_CALCOLATO_TOTALE_ACQ_VALUTA", $s_CALCOLATO_TOTALE_ACQ_VALUTA))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 177, False))
	Global $s_CALCOLATO_TOTALE_ACQ_EURO
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 177, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_CALCOLATO_TOTALE_ACQ_EURO")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_CALCOLATO_TOTALE_ACQ_EURO", $s_CALCOLATO_TOTALE_ACQ_EURO))


SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 179, False))
	$s_ACQUISTI_SEH_ACQ_VALUTA = "0,00"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 179, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_SEH_ACQ_VALUTA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_SEH_ACQ_VALUTA", $s_ACQUISTI_SEH_ACQ_VALUTA))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 180, False))
	$s_CALCOLATO_TOTALE_ACQ_VALUTA = "0,00"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 180, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_CALCOLATO_TOTALE_ACQ_VALUTA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_CALCOLATO_TOTALE_ACQ_VALUTA", $s_CALCOLATO_TOTALE_ACQ_VALUTA))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 181, False))
	$s_CALCOLATO_TOTALE_ACQ_EURO = "0,00"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 181, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_CALCOLATO_TOTALE_ACQ_EURO")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_CALCOLATO_TOTALE_ACQ_EURO", $s_CALCOLATO_TOTALE_ACQ_EURO))
	

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 183, False))
	Local $a_riepilogo_acquisti[20]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 183, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("a_riepilogo_acquisti")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$a_riepilogo_acquisti", $a_riepilogo_acquisti))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 184, False))
	Local $i_contatore_acquisti
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 184, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_contatore_acquisti")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_contatore_acquisti", $i_contatore_acquisti))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 185, False))
	$i_contatore_acquisti = 0
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 185, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_contatore_acquisti")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_contatore_acquisti", $i_contatore_acquisti))


SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 187, False))
	For $i_row = $i_max_row To 1 Step -1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 187, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_row")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_row", $i_row))
If SetError(@error, @extended, IsDeclared("i_max_row")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_max_row", $i_max_row))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 188, False))
		$s_works_tipo = $ItemArray[$i_row][4]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 188, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_works_tipo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_works_tipo", $s_works_tipo))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))
If SetError(@error, @extended, IsDeclared("i_row")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_row", $i_row))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 189, False))
		$s_works_tariffe = $ItemArray[$i_row][8]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 189, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_works_tariffe")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_works_tariffe", $s_works_tariffe))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))
If SetError(@error, @extended, IsDeclared("i_row")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_row", $i_row))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 190, False))
		$s_works_tariffe = StringReplace($s_works_tariffe, ",", ".")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 190, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_works_tariffe")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_works_tariffe", $s_works_tariffe))
If SetError(@error, @extended, IsDeclared("s_works_tariffe")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_works_tariffe", $s_works_tariffe))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 191, False))
		$s_work_cod_oggetto = $ItemArray[$i_row][17]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 191, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_cod_oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_cod_oggetto", $s_work_cod_oggetto))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))
If SetError(@error, @extended, IsDeclared("i_row")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_row", $i_row))
		Select
			Case $s_works_tipo = "Conversione di valuta"

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 194, False))
				$s_work_ID_transazione_di_riferimento = $ItemArray[$i_row][31]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 194, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_ID_transazione_di_riferimento")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_ID_transazione_di_riferimento", $s_work_ID_transazione_di_riferimento))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))
If SetError(@error, @extended, IsDeclared("i_row")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_row", $i_row))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 195, False))
				$s_work_Valuta = $ItemArray[$i_row][6]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 195, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_Valuta")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_Valuta", $s_work_Valuta))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))
If SetError(@error, @extended, IsDeclared("i_row")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_row", $i_row))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 196, False))
				$s_work_Importo_netto = $ItemArray[$i_row][9]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 196, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_Importo_netto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_Importo_netto", $s_work_Importo_netto))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))
If SetError(@error, @extended, IsDeclared("i_row")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_row", $i_row))
				Select
					Case $s_work_Valuta = "EUR"

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 199, False))
						$s_ACQUISTI_CTV_ACQ_EURO = StringReplace($s_work_Importo_netto, "-", "")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 199, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_CTV_ACQ_EURO")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_CTV_ACQ_EURO", $s_ACQUISTI_CTV_ACQ_EURO))
If SetError(@error, @extended, IsDeclared("s_work_Importo_netto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_Importo_netto", $s_work_Importo_netto))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 200, False))
					Case $s_work_Valuta <> "EUR"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 200, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_Valuta")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_Valuta", $s_work_Valuta))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 201, False))
						$s_ACQUISTI_VALUTA = $s_work_Valuta
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 201, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_VALUTA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_VALUTA", $s_ACQUISTI_VALUTA))
If SetError(@error, @extended, IsDeclared("s_work_Valuta")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_Valuta", $s_work_Valuta))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 202, False))
						$s_ACQUISTI_IMPORTO_ACQ_VALUTA = $s_work_Importo_netto
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 202, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_IMPORTO_ACQ_VALUTA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_IMPORTO_ACQ_VALUTA", $s_ACQUISTI_IMPORTO_ACQ_VALUTA))
If SetError(@error, @extended, IsDeclared("s_work_Importo_netto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_Importo_netto", $s_work_Importo_netto))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 203, False))
				EndSelect
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 203, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 204, False))
			Case $s_works_tipo = "Pagamento con procedura rapida inviato"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 204, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_works_tipo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_works_tipo", $s_works_tipo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 205, False))
				If $ItemArray[$i_row][3] = "Pitney Bowes Limited" Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 205, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))
If SetError(@error, @extended, IsDeclared("i_row")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_row", $i_row))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 206, False))
					$i_sw_PBL = 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 206, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_sw_PBL")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_sw_PBL", $i_sw_PBL))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 207, False))
					$i_sw_acq = 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 207, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_sw_acq")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_sw_acq", $i_sw_acq))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 208, False))
				ElseIf $s_work_cod_oggetto <> "" Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 208, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_cod_oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_cod_oggetto", $s_work_cod_oggetto))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 209, False))
					$i_sw_acq = 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 209, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_sw_acq")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_sw_acq", $i_sw_acq))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 210, False))
					$i_sw_PBL = 0
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 210, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_sw_PBL")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_sw_PBL", $i_sw_PBL))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 211, False))
				Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 211, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 212, False))
					$i_sw_acq = 0
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 212, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_sw_acq")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_sw_acq", $i_sw_acq))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 213, False))
					$i_sw_PBL = 0
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 213, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_sw_PBL")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_sw_PBL", $i_sw_PBL))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 214, False))
				EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 214, False, @error, @extended))
				

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 216, False))
				If $i_sw_acq Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 216, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_sw_acq")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_sw_acq", $i_sw_acq))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 217, False))
					$s_work_Valuta = $ItemArray[$i_row][6]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 217, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_Valuta")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_Valuta", $s_work_Valuta))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))
If SetError(@error, @extended, IsDeclared("i_row")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_row", $i_row))
					Select
						Case $s_work_Valuta = "EUR"

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 220, False))
							$i_sw_EUR = 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 220, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_sw_EUR")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_sw_EUR", $i_sw_EUR))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 221, False))
							$s_work_Importo_netto = $ItemArray[$i_row][9]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 221, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_Importo_netto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_Importo_netto", $s_work_Importo_netto))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))
If SetError(@error, @extended, IsDeclared("i_row")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_row", $i_row))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 222, False))
							$s_ACQUISTI_CTV_ACQ_EURO = StringReplace($s_work_Importo_netto, "-", "")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 222, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_CTV_ACQ_EURO")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_CTV_ACQ_EURO", $s_ACQUISTI_CTV_ACQ_EURO))
If SetError(@error, @extended, IsDeclared("s_work_Importo_netto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_Importo_netto", $s_work_Importo_netto))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 223, False))
							$s_ACQUISTI_VALUTA = $s_work_Valuta
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 223, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_VALUTA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_VALUTA", $s_ACQUISTI_VALUTA))
If SetError(@error, @extended, IsDeclared("s_work_Valuta")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_Valuta", $s_work_Valuta))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 224, False))
							$s_ACQUISTI_IMPORTO_ACQ_VALUTA = $s_ACQUISTI_CTV_ACQ_EURO
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 224, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_IMPORTO_ACQ_VALUTA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_IMPORTO_ACQ_VALUTA", $s_ACQUISTI_IMPORTO_ACQ_VALUTA))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_CTV_ACQ_EURO")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_CTV_ACQ_EURO", $s_ACQUISTI_CTV_ACQ_EURO))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 225, False))
						Case Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 225, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 226, False))
							$i_sw_EUR = 0
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 226, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_sw_EUR")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_sw_EUR", $i_sw_EUR))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 227, False))
					EndSelect
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 227, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 228, False))
				EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 228, False, @error, @extended))


SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 230, False))
				If $i_sw_acq Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 230, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_sw_acq")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_sw_acq", $i_sw_acq))
					Select
						Case Not $i_sw_EUR

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 233, False))
							$s_work_ID_transazione = $ItemArray[$i_row][12]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 233, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_ID_transazione")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_ID_transazione", $s_work_ID_transazione))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))
If SetError(@error, @extended, IsDeclared("i_row")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_row", $i_row))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 234, False))
							If $s_work_ID_transazione = $s_work_ID_transazione_di_riferimento Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 234, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_ID_transazione")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_ID_transazione", $s_work_ID_transazione))
If SetError(@error, @extended, IsDeclared("s_work_ID_transazione_di_riferimento")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_ID_transazione_di_riferimento", $s_work_ID_transazione_di_riferimento))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 235, False))
							Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 235, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 236, False))
								$sMsg = "Disallineamento record di input! Elaborazione abortita"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 236, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("sMsg")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sMsg", $sMsg))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 237, False))
								$iRetValue = _ExtMsgBox($EMB_ICONSTOP, "OK", "Errore", $sMsg)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 237, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("iRetValue")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iRetValue", $iRetValue))
If SetError(@error, @extended, IsDeclared("EMB_ICONSTOP")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$EMB_ICONSTOP", $EMB_ICONSTOP))
If SetError(@error, @extended, IsDeclared("sMsg")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sMsg", $sMsg))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 238, False))
								Exit
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 238, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 239, False))
							EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 239, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 240, False))
					EndSelect
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 240, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 241, False))
					$s_work_Nome = $ItemArray[$i_row][3]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 241, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_Nome")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_Nome", $s_work_Nome))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))
If SetError(@error, @extended, IsDeclared("i_row")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_row", $i_row))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 242, False))
					$s_work_Email = $ItemArray[$i_row][11]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 242, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_Email")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_Email", $s_work_Email))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))
If SetError(@error, @extended, IsDeclared("i_row")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_row", $i_row))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 243, False))
					$s_work_URL_oggetto = $ItemArray[$i_row][27]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 243, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_URL_oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_URL_oggetto", $s_work_URL_oggetto))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))
If SetError(@error, @extended, IsDeclared("i_row")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_row", $i_row))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 244, False))
					$s_ACQUISTI_DOC_DI_CARICO_DATA = $ItemArray[$i_row][0]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 244, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_DOC_DI_CARICO_DATA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_DOC_DI_CARICO_DATA", $s_ACQUISTI_DOC_DI_CARICO_DATA))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))
If SetError(@error, @extended, IsDeclared("i_row")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_row", $i_row))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 245, False))
					$s_ACQUISTI_DATA_ACQUISTO = $ItemArray[$i_row][0]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 245, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_DATA_ACQUISTO")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_DATA_ACQUISTO", $s_ACQUISTI_DATA_ACQUISTO))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))
If SetError(@error, @extended, IsDeclared("i_row")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_row", $i_row))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 246, False))
					$s_ACQUISTI_DATA_PAGAMENTO = $ItemArray[$i_row][0]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 246, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_DATA_PAGAMENTO")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_DATA_PAGAMENTO", $s_ACQUISTI_DATA_PAGAMENTO))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))
If SetError(@error, @extended, IsDeclared("i_row")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_row", $i_row))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 247, False))
					$s_ACQUISTI_DESCRIZIONE = $ItemArray[$i_row][16]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 247, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_DESCRIZIONE")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_DESCRIZIONE", $s_ACQUISTI_DESCRIZIONE))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))
If SetError(@error, @extended, IsDeclared("i_row")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_row", $i_row))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 248, False))
					$s_ACQUISTI_FORNITORE = $ItemArray[$i_row][3]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 248, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_FORNITORE")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_FORNITORE", $s_ACQUISTI_FORNITORE))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))
If SetError(@error, @extended, IsDeclared("i_row")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_row", $i_row))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 249, False))
					$s_ACQUISTI_CODICE_UNIVOCO_PAYPAL = $ItemArray[$i_row][12]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 249, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_CODICE_UNIVOCO_PAYPAL")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_CODICE_UNIVOCO_PAYPAL", $s_ACQUISTI_CODICE_UNIVOCO_PAYPAL))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))
If SetError(@error, @extended, IsDeclared("i_row")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_row", $i_row))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 250, False))
					$s_ACQUISTI_PAGAMENTO_A_MEZZO = "PAYPAL"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 250, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_PAGAMENTO_A_MEZZO")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_PAGAMENTO_A_MEZZO", $s_ACQUISTI_PAGAMENTO_A_MEZZO))
					; vedi se Pitney Bowes Limited
					Select
						Case $i_sw_PBL

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 254, False))
							$s_ACQUISTI_FORNITORE = $ItemArray[$i_row][3]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 254, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_FORNITORE")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_FORNITORE", $s_ACQUISTI_FORNITORE))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))
If SetError(@error, @extended, IsDeclared("i_row")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_row", $i_row))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 255, False))
							$s_ACQUISTI_DESCRIZIONE = "S.& H."
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 255, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_DESCRIZIONE")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_DESCRIZIONE", $s_ACQUISTI_DESCRIZIONE))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 256, False))
							$s_ACQUISTI_DOC_DI_CARICO_DATA = $ItemArray[$i_row][0]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 256, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_DOC_DI_CARICO_DATA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_DOC_DI_CARICO_DATA", $s_ACQUISTI_DOC_DI_CARICO_DATA))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))
If SetError(@error, @extended, IsDeclared("i_row")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_row", $i_row))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 257, False))
							$s_ACQUISTI_DATA_ACQUISTO = $ItemArray[$i_row][0]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 257, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_DATA_ACQUISTO")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_DATA_ACQUISTO", $s_ACQUISTI_DATA_ACQUISTO))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))
If SetError(@error, @extended, IsDeclared("i_row")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_row", $i_row))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 258, False))
							$s_ACQUISTI_DATA_PAGAMENTO = $ItemArray[$i_row][0]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 258, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_DATA_PAGAMENTO")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_DATA_PAGAMENTO", $s_ACQUISTI_DATA_PAGAMENTO))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))
If SetError(@error, @extended, IsDeclared("i_row")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_row", $i_row))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 259, False))
							If $i_sw_PBL Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 259, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_sw_PBL")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_sw_PBL", $i_sw_PBL))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 260, False))
							Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 260, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 261, False))
								$sMsg = "Disallineamento record di input! Elaborazione abortita"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 261, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("sMsg")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sMsg", $sMsg))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 262, False))
								$iRetValue = _ExtMsgBox($EMB_ICONSTOP, "OK", "Errore", $sMsg)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 262, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("iRetValue")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iRetValue", $iRetValue))
If SetError(@error, @extended, IsDeclared("EMB_ICONSTOP")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$EMB_ICONSTOP", $EMB_ICONSTOP))
If SetError(@error, @extended, IsDeclared("sMsg")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sMsg", $sMsg))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 263, False))
								Exit
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 263, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 264, False))
							EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 264, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 265, False))
					EndSelect
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 265, False, @error, @extended))
					; recupero dati dall'ultimo record inserito

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 267, False))
					Local $s_query
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 267, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_query")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_query", $s_query))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 268, False))
					$s_query = "SELECT * FROM " & $s_Tablename & ""
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 268, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_query")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_query", $s_query))
If SetError(@error, @extended, IsDeclared("s_Tablename")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Tablename", $s_Tablename))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 269, False))
					$i_cod_ritorno = RecordSearchLast($s_dbname, $s_query, $o_Con)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 269, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_cod_ritorno")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_cod_ritorno", $i_cod_ritorno))
If SetError(@error, @extended, IsDeclared("s_dbname")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_dbname", $s_dbname))
If SetError(@error, @extended, IsDeclared("s_query")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_query", $s_query))
If SetError(@error, @extended, IsDeclared("o_Con")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_Con", $o_Con))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 270, False))
					If Not $i_cod_ritorno Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 270, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_cod_ritorno")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_cod_ritorno", $i_cod_ritorno))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 271, False))
						Exit
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 271, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 272, False))
					EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 272, False, @error, @extended))
					; incremento $s_ACQUISTI_ID_ACQ, $s_ACQUISTI_DOC_DI_CARICO_NUMERO

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 274, False))
					$s_ACQUISTI_DOC_DI_CARICO_NUMERO = $s_ACQUISTI_DOC_DI_CARICO_NUMERO + 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 274, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_DOC_DI_CARICO_NUMERO")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_DOC_DI_CARICO_NUMERO", $s_ACQUISTI_DOC_DI_CARICO_NUMERO))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_DOC_DI_CARICO_NUMERO")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_DOC_DI_CARICO_NUMERO", $s_ACQUISTI_DOC_DI_CARICO_NUMERO))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 275, False))
					Global $s_work_ID_ACQ = IncrementaID_ACQ($s_ACQUISTI_ID_ACQ, $s_ACQUISTI_DATA_ACQUISTO)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 275, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_ID_ACQ")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_ID_ACQ", $s_work_ID_ACQ))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_ID_ACQ")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_ID_ACQ", $s_ACQUISTI_ID_ACQ))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_DATA_ACQUISTO")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_DATA_ACQUISTO", $s_ACQUISTI_DATA_ACQUISTO))
					; recupero ID fornitore

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 277, False))
					$s_work_Nome = "'" & $s_work_Nome & "'"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 277, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_Nome")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_Nome", $s_work_Nome))
If SetError(@error, @extended, IsDeclared("s_work_Nome")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_Nome", $s_work_Nome))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 278, False))
					$s_query = "SELECT * FROM FORNITORI WHERE COD_FORNITORE =" & $s_work_Nome & ""
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 278, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_query")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_query", $s_query))
If SetError(@error, @extended, IsDeclared("s_work_Nome")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_Nome", $s_work_Nome))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 279, False))
					$s_ACQUISTI_FORNITORE = RicercaID_Fornitore($s_dbname, $s_query, $o_Con)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 279, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_FORNITORE")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_FORNITORE", $s_ACQUISTI_FORNITORE))
If SetError(@error, @extended, IsDeclared("s_dbname")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_dbname", $s_dbname))
If SetError(@error, @extended, IsDeclared("s_query")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_query", $s_query))
If SetError(@error, @extended, IsDeclared("o_Con")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_Con", $o_Con))
					; recupero descizione valuta

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 281, False))
					$s_work_Valuta = "'" & $s_work_Valuta & "'"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 281, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_Valuta")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_Valuta", $s_work_Valuta))
If SetError(@error, @extended, IsDeclared("s_work_Valuta")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_Valuta", $s_work_Valuta))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 282, False))
					$s_query = "SELECT * FROM VALUTE WHERE ID_VALUTA =" & $s_work_Valuta & ""
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 282, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_query")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_query", $s_query))
If SetError(@error, @extended, IsDeclared("s_work_Valuta")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_Valuta", $s_work_Valuta))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 283, False))
					$s_ACQUISTI_VALUTA = RicercaDescr_Valuta($s_dbname, $s_query, $o_Con)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 283, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_VALUTA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_VALUTA", $s_ACQUISTI_VALUTA))
If SetError(@error, @extended, IsDeclared("s_dbname")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_dbname", $s_dbname))
If SetError(@error, @extended, IsDeclared("s_query")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_query", $s_query))
If SetError(@error, @extended, IsDeclared("o_Con")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_Con", $o_Con))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 284, False))
					$s_work_Valuta = StringReplace($s_work_Valuta, "'", "")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 284, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_Valuta")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_Valuta", $s_work_Valuta))
If SetError(@error, @extended, IsDeclared("s_work_Valuta")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_Valuta", $s_work_Valuta))

					; campi calcolati

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 287, False))
 					$s_CALCOLATO_TOTALE_ACQ_VALUTA = StringReplace($s_ACQUISTI_IMPORTO_ACQ_VALUTA, ",", ".") 							 + StringReplace($s_ACQUISTI_SEH_ACQ_VALUTA, ",", ".")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 287, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_CALCOLATO_TOTALE_ACQ_VALUTA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_CALCOLATO_TOTALE_ACQ_VALUTA", $s_CALCOLATO_TOTALE_ACQ_VALUTA))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_IMPORTO_ACQ_VALUTA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_IMPORTO_ACQ_VALUTA", $s_ACQUISTI_IMPORTO_ACQ_VALUTA))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_SEH_ACQ_VALUTA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_SEH_ACQ_VALUTA", $s_ACQUISTI_SEH_ACQ_VALUTA))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 289, False))
					$s_CALCOLATO_TOTALE_ACQ_VALUTA = StringReplace($s_CALCOLATO_TOTALE_ACQ_VALUTA, ".", ",")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 289, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_CALCOLATO_TOTALE_ACQ_VALUTA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_CALCOLATO_TOTALE_ACQ_VALUTA", $s_CALCOLATO_TOTALE_ACQ_VALUTA))
If SetError(@error, @extended, IsDeclared("s_CALCOLATO_TOTALE_ACQ_VALUTA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_CALCOLATO_TOTALE_ACQ_VALUTA", $s_CALCOLATO_TOTALE_ACQ_VALUTA))
					; imposto il form

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 291, False))
					GUICtrlSetData($h_ID_ACQ_DATA, $s_work_ID_ACQ)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 291, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("h_ID_ACQ_DATA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$h_ID_ACQ_DATA", $h_ID_ACQ_DATA))
If SetError(@error, @extended, IsDeclared("s_work_ID_ACQ")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_ID_ACQ", $s_work_ID_ACQ))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 292, False))
					GUICtrlSetData($h_ANNO_CONTABILE_DATA, $s_ACQUISTI_ANNO_CONTABILE)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 292, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("h_ANNO_CONTABILE_DATA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$h_ANNO_CONTABILE_DATA", $h_ANNO_CONTABILE_DATA))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_ANNO_CONTABILE")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_ANNO_CONTABILE", $s_ACQUISTI_ANNO_CONTABILE))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 293, False))
					GUICtrlSetData($h_DOCUMENTO_DI_CARICO_DATA, $s_ACQUISTI_DOC_DI_CARICO_NUMERO)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 293, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("h_DOCUMENTO_DI_CARICO_DATA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$h_DOCUMENTO_DI_CARICO_DATA", $h_DOCUMENTO_DI_CARICO_DATA))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_DOC_DI_CARICO_NUMERO")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_DOC_DI_CARICO_NUMERO", $s_ACQUISTI_DOC_DI_CARICO_NUMERO))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 294, False))
					GUICtrlSetData($h_DOCUMENTO_DI_CARICO_DATA_DATA, $s_ACQUISTI_DATA_ACQUISTO)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 294, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("h_DOCUMENTO_DI_CARICO_DATA_DATA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$h_DOCUMENTO_DI_CARICO_DATA_DATA", $h_DOCUMENTO_DI_CARICO_DATA_DATA))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_DATA_ACQUISTO")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_DATA_ACQUISTO", $s_ACQUISTI_DATA_ACQUISTO))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 295, False))
					GUICtrlSetData($h_DESCRIZIONE_DATA, $s_ACQUISTI_DESCRIZIONE)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 295, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("h_DESCRIZIONE_DATA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$h_DESCRIZIONE_DATA", $h_DESCRIZIONE_DATA))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_DESCRIZIONE")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_DESCRIZIONE", $s_ACQUISTI_DESCRIZIONE))
;~ 					GUICtrlSetData($h_NUMERO_PEZZI, $s_work_ID_ACQ)

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 297, False))
					If $i_sw_PBL Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 297, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_sw_PBL")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_sw_PBL", $i_sw_PBL))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 298, False))
						GUICtrlSetData($h_NUMERO_PEZZI, 1)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 298, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("h_NUMERO_PEZZI")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$h_NUMERO_PEZZI", $h_NUMERO_PEZZI))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 299, False))
					EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 299, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 300, False))
					GUICtrlSetData($h_DATA_ACQUISTO_DATA, $s_ACQUISTI_DATA_ACQUISTO)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 300, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("h_DATA_ACQUISTO_DATA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$h_DATA_ACQUISTO_DATA", $h_DATA_ACQUISTO_DATA))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_DATA_ACQUISTO")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_DATA_ACQUISTO", $s_ACQUISTI_DATA_ACQUISTO))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 301, False))
					GUICtrlSetData($h_FORNITORE_DATA, $ItemArray[$i_row][3])
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 301, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("h_FORNITORE_DATA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$h_FORNITORE_DATA", $h_FORNITORE_DATA))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))
If SetError(@error, @extended, IsDeclared("i_row")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_row", $i_row))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 302, False))
					GUICtrlSetData($h_VALUTA_DATA, $s_ACQUISTI_VALUTA)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 302, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("h_VALUTA_DATA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$h_VALUTA_DATA", $h_VALUTA_DATA))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_VALUTA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_VALUTA", $s_ACQUISTI_VALUTA))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 303, False))
					GUICtrlSetData($h_IMP_IN_VALUTA_DATA, $s_ACQUISTI_IMPORTO_ACQ_VALUTA)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 303, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("h_IMP_IN_VALUTA_DATA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$h_IMP_IN_VALUTA_DATA", $h_IMP_IN_VALUTA_DATA))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_IMPORTO_ACQ_VALUTA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_IMPORTO_ACQ_VALUTA", $s_ACQUISTI_IMPORTO_ACQ_VALUTA))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 304, False))
					GUICtrlSetData($h_SHE_IN_VALUTA_DATA, $s_ACQUISTI_SEH_ACQ_VALUTA)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 304, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("h_SHE_IN_VALUTA_DATA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$h_SHE_IN_VALUTA_DATA", $h_SHE_IN_VALUTA_DATA))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_SEH_ACQ_VALUTA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_SEH_ACQ_VALUTA", $s_ACQUISTI_SEH_ACQ_VALUTA))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 305, False))
					GUICtrlSetData($h_TOT_IN_VALUTA_DATA, $s_CALCOLATO_TOTALE_ACQ_VALUTA)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 305, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("h_TOT_IN_VALUTA_DATA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$h_TOT_IN_VALUTA_DATA", $h_TOT_IN_VALUTA_DATA))
If SetError(@error, @extended, IsDeclared("s_CALCOLATO_TOTALE_ACQ_VALUTA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_CALCOLATO_TOTALE_ACQ_VALUTA", $s_CALCOLATO_TOTALE_ACQ_VALUTA))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 306, False))
					GUICtrlSetData($h_CTV_IN_EURO_DATA, $s_ACQUISTI_CTV_ACQ_EURO)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 306, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("h_CTV_IN_EURO_DATA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$h_CTV_IN_EURO_DATA", $h_CTV_IN_EURO_DATA))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_CTV_ACQ_EURO")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_CTV_ACQ_EURO", $s_ACQUISTI_CTV_ACQ_EURO))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 307, False))
					GUICtrlSetData($h_CODICE_PAYPAL_DATA, $s_ACQUISTI_CODICE_UNIVOCO_PAYPAL)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 307, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("h_CODICE_PAYPAL_DATA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$h_CODICE_PAYPAL_DATA", $h_CODICE_PAYPAL_DATA))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_CODICE_UNIVOCO_PAYPAL")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_CODICE_UNIVOCO_PAYPAL", $s_ACQUISTI_CODICE_UNIVOCO_PAYPAL))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 308, False))
					GUICtrlSetData($h_DATA_PAGAMENTO_DATA, $s_ACQUISTI_DATA_PAGAMENTO)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 308, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("h_DATA_PAGAMENTO_DATA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$h_DATA_PAGAMENTO_DATA", $h_DATA_PAGAMENTO_DATA))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_DATA_PAGAMENTO")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_DATA_PAGAMENTO", $s_ACQUISTI_DATA_PAGAMENTO))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 309, False))
					GUICtrlSetData($h_MEZZO_PAGAMENTO_DATA, $s_ACQUISTI_PAGAMENTO_A_MEZZO)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 309, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("h_MEZZO_PAGAMENTO_DATA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$h_MEZZO_PAGAMENTO_DATA", $h_MEZZO_PAGAMENTO_DATA))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_PAGAMENTO_A_MEZZO")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_PAGAMENTO_A_MEZZO", $s_ACQUISTI_PAGAMENTO_A_MEZZO))
					; Switch to GetMessage mode

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 311, False))
					Local $iOnEventMode = Opt("GUIOnEventMode", 0), $iMsg
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 311, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("iOnEventMode")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iOnEventMode", $iOnEventMode))
If SetError(@error, @extended, IsDeclared("iMsg")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iMsg", $iMsg))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 312, False))
					While 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 312, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 313, False))
						$iMsg = GUIGetMsg() ; Variable needed to check which "Copy" button was pressed
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 313, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("iMsg")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iMsg", $iMsg))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 314, False))
						Switch $iMsg
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 314, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("iMsg")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iMsg", $iMsg))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 315, False))
							Case $hProsegui
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 315, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("hProsegui")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$hProsegui", $hProsegui))
;~ 								ExitLoop

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 317, False))
							Case $h_Apri_URL
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 317, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("h_Apri_URL")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$h_Apri_URL", $h_Apri_URL))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 318, False))
								ShellExecute($s_work_URL_oggetto)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 318, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_URL_oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_URL_oggetto", $s_work_URL_oggetto))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 319, False))
								ContinueLoop
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 319, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 320, False))
							Case $hSalta
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 320, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("hSalta")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$hSalta", $hSalta))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 321, False))
								ExitLoop
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 321, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 322, False))
							Case $hChiudi
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 322, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("hChiudi")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$hChiudi", $hChiudi))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 323, False))
								Exit
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 323, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 324, False))
							Case $hCopia
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 324, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("hCopia")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$hCopia", $hCopia))
;~ 								ExitLoop

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 326, False))
							Case $hInserisci
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 326, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("hInserisci")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$hInserisci", $hInserisci))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 327, False))
								$s_ACQUISTI_NUMERO_PEZZI = GUICtrlRead($h_NUMERO_PEZZI)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 327, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_NUMERO_PEZZI")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_NUMERO_PEZZI", $s_ACQUISTI_NUMERO_PEZZI))
If SetError(@error, @extended, IsDeclared("h_NUMERO_PEZZI")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$h_NUMERO_PEZZI", $h_NUMERO_PEZZI))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 328, False))
								If $s_ACQUISTI_NUMERO_PEZZI = "" Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 328, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_NUMERO_PEZZI")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_NUMERO_PEZZI", $s_ACQUISTI_NUMERO_PEZZI))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 329, False))
									$sMsg = "Digita numero pezzi e quindi premi Inserisci per proseguire"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 329, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("sMsg")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sMsg", $sMsg))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 330, False))
									$iRetValue = _ExtMsgBox($EMB_ICONSTOP, "OK", "Errore", $sMsg)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 330, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("iRetValue")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iRetValue", $iRetValue))
If SetError(@error, @extended, IsDeclared("EMB_ICONSTOP")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$EMB_ICONSTOP", $EMB_ICONSTOP))
If SetError(@error, @extended, IsDeclared("sMsg")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sMsg", $sMsg))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 331, False))
									ContinueLoop
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 331, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 332, False))
								EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 332, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 333, False))
								$s_query = "SELECT * FROM ACQUISTI"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 333, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_query")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_query", $s_query))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 334, False))
								$i_cod_ritorno = RegistraAcquisto($s_dbname, $s_query, $o_Con)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 334, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_cod_ritorno")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_cod_ritorno", $i_cod_ritorno))
If SetError(@error, @extended, IsDeclared("s_dbname")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_dbname", $s_dbname))
If SetError(@error, @extended, IsDeclared("s_query")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_query", $s_query))
If SetError(@error, @extended, IsDeclared("o_Con")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_Con", $o_Con))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 335, False))
								If Not $i_cod_ritorno Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 335, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_cod_ritorno")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_cod_ritorno", $i_cod_ritorno))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 336, False))
									$sMsg = "Errore in fase registrazione acquisti! Elaborazione abortita"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 336, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("sMsg")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sMsg", $sMsg))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 337, False))
									$iRetValue = _ExtMsgBox($EMB_ICONSTOP, "OK", "Errore", $sMsg)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 337, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("iRetValue")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iRetValue", $iRetValue))
If SetError(@error, @extended, IsDeclared("EMB_ICONSTOP")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$EMB_ICONSTOP", $EMB_ICONSTOP))
If SetError(@error, @extended, IsDeclared("sMsg")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sMsg", $sMsg))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 338, False))
									Exit
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 338, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 339, False))
								EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 339, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 340, False))
								$s_query = "SELECT * FROM MOVIMENTI"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 340, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_query")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_query", $s_query))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 341, False))
								$i_cod_ritorno = RegistraMovimento($s_dbname, $s_query, $o_Con)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 341, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_cod_ritorno")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_cod_ritorno", $i_cod_ritorno))
If SetError(@error, @extended, IsDeclared("s_dbname")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_dbname", $s_dbname))
If SetError(@error, @extended, IsDeclared("s_query")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_query", $s_query))
If SetError(@error, @extended, IsDeclared("o_Con")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_Con", $o_Con))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 342, False))
								If Not $i_cod_ritorno Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 342, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_cod_ritorno")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_cod_ritorno", $i_cod_ritorno))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 343, False))
									$sMsg = "Errore in fase registrazione movimenti! Elaborazione abortita"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 343, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("sMsg")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sMsg", $sMsg))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 344, False))
									$iRetValue = _ExtMsgBox($EMB_ICONSTOP, "OK", "Errore", $sMsg)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 344, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("iRetValue")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iRetValue", $iRetValue))
If SetError(@error, @extended, IsDeclared("EMB_ICONSTOP")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$EMB_ICONSTOP", $EMB_ICONSTOP))
If SetError(@error, @extended, IsDeclared("sMsg")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sMsg", $sMsg))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 345, False))
									Exit
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 345, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 346, False))
								EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 346, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 347, False))
								If $i_cod_ritorno Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 347, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_cod_ritorno")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_cod_ritorno", $i_cod_ritorno))
;~ 								aggiorna contatore acquisti elaborati

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 349, False))
									$a_riepilogo_acquisti[$i_contatore_acquisti + 1] = $s_work_ID_ACQ
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 349, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("a_riepilogo_acquisti")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$a_riepilogo_acquisti", $a_riepilogo_acquisti))
If SetError(@error, @extended, IsDeclared("i_contatore_acquisti")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_contatore_acquisti", $i_contatore_acquisti))
If SetError(@error, @extended, IsDeclared("s_work_ID_ACQ")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_ID_ACQ", $s_work_ID_ACQ))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 350, False))
									$i_contatore_acquisti = $i_contatore_acquisti + 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 350, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_contatore_acquisti")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_contatore_acquisti", $i_contatore_acquisti))
If SetError(@error, @extended, IsDeclared("i_contatore_acquisti")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_contatore_acquisti", $i_contatore_acquisti))
;~ 									azzera numero pezzi

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 352, False))
									GUICtrlSetData($h_NUMERO_PEZZI, "")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 352, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("h_NUMERO_PEZZI")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$h_NUMERO_PEZZI", $h_NUMERO_PEZZI))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 353, False))
									ExitLoop
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 353, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 354, False))
								EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 354, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 355, False))
						EndSwitch
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 355, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 356, False))
					WEnd
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 356, False, @error, @extended))
					; Clear up

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 358, False))
					Opt("GUIOnEventMode", 1) ; Reset original GUI mode
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 358, False, @error, @extended))
					

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 360, False))
				EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 360, False, @error, @extended))


SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 362, False))
		EndSelect
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 362, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 363, False))
	Next
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 363, False, @error, @extended))
	
;~ =========================

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 366, False))
	AccessCloseConn($o_Con)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 366, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_Con")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_Con", $o_Con))
	

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 368, False))
	$a_riepilogo_acquisti[0] = "ACQUISTI AGGIORNATI=" & $i_contatore_acquisti
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 368, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("a_riepilogo_acquisti")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$a_riepilogo_acquisti", $a_riepilogo_acquisti))
If SetError(@error, @extended, IsDeclared("i_contatore_acquisti")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_contatore_acquisti", $i_contatore_acquisti))


SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 370, False))
	_ArrayDisplay($a_riepilogo_acquisti)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 370, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("a_riepilogo_acquisti")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$a_riepilogo_acquisti", $a_riepilogo_acquisti))

	; ripristino dei valori iniziali

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 373, False))
	$s_provenienza = "PAYPAL"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 373, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_provenienza")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_provenienza", $s_provenienza))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 374, False))
	$s_ambiente = "PRODUZIONE"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 374, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ambiente")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ambiente", $s_ambiente))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 375, False))
	GUICtrlSetState($hPaypal_Image, $GUI_SHOW)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 375, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("hPaypal_Image")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$hPaypal_Image", $hPaypal_Image))
If SetError(@error, @extended, IsDeclared("GUI_SHOW")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$GUI_SHOW", $GUI_SHOW))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 376, False))
	GUICtrlSetState($hProduzione_Image, $GUI_SHOW)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 376, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("hProduzione_Image")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$hProduzione_Image", $hProduzione_Image))
If SetError(@error, @extended, IsDeclared("GUI_SHOW")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$GUI_SHOW", $GUI_SHOW))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 377, False))
	GUICtrlSetState($hTest_Image, $GUI_HIDE)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 377, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("hTest_Image")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$hTest_Image", $hTest_Image))
If SetError(@error, @extended, IsDeclared("GUI_HIDE")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$GUI_HIDE", $GUI_HIDE))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 378, False))
	GUICtrlSetState($hProduzione, $GUI_CHECKED)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 378, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("hProduzione")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$hProduzione", $hProduzione))
If SetError(@error, @extended, IsDeclared("GUI_CHECKED")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$GUI_CHECKED", $GUI_CHECKED))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 379, False))
	GUICtrlSetState($hPaypal, $GUI_CHECKED)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 379, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("hPaypal")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$hPaypal", $hPaypal))
If SetError(@error, @extended, IsDeclared("GUI_CHECKED")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$GUI_CHECKED", $GUI_CHECKED))
	; imposto il form

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 381, False))
	GUICtrlSetData($h_ID_ACQ_DATA, "")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 381, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("h_ID_ACQ_DATA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$h_ID_ACQ_DATA", $h_ID_ACQ_DATA))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 382, False))
	GUICtrlSetData($h_ANNO_CONTABILE_DATA, "")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 382, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("h_ANNO_CONTABILE_DATA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$h_ANNO_CONTABILE_DATA", $h_ANNO_CONTABILE_DATA))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 383, False))
	GUICtrlSetData($h_DOCUMENTO_DI_CARICO_DATA, "")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 383, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("h_DOCUMENTO_DI_CARICO_DATA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$h_DOCUMENTO_DI_CARICO_DATA", $h_DOCUMENTO_DI_CARICO_DATA))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 384, False))
	GUICtrlSetData($h_DOCUMENTO_DI_CARICO_DATA_DATA, "")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 384, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("h_DOCUMENTO_DI_CARICO_DATA_DATA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$h_DOCUMENTO_DI_CARICO_DATA_DATA", $h_DOCUMENTO_DI_CARICO_DATA_DATA))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 385, False))
	GUICtrlSetData($h_DESCRIZIONE_DATA, "")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 385, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("h_DESCRIZIONE_DATA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$h_DESCRIZIONE_DATA", $h_DESCRIZIONE_DATA))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 386, False))
	GUICtrlSetData($h_NUMERO_PEZZI, "")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 386, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("h_NUMERO_PEZZI")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$h_NUMERO_PEZZI", $h_NUMERO_PEZZI))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 387, False))
	GUICtrlSetData($h_DATA_ACQUISTO_DATA, "")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 387, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("h_DATA_ACQUISTO_DATA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$h_DATA_ACQUISTO_DATA", $h_DATA_ACQUISTO_DATA))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 388, False))
	GUICtrlSetData($h_FORNITORE_DATA, "")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 388, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("h_FORNITORE_DATA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$h_FORNITORE_DATA", $h_FORNITORE_DATA))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 389, False))
	GUICtrlSetData($h_VALUTA_DATA, "")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 389, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("h_VALUTA_DATA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$h_VALUTA_DATA", $h_VALUTA_DATA))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 390, False))
	GUICtrlSetData($h_IMP_IN_VALUTA_DATA, "")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 390, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("h_IMP_IN_VALUTA_DATA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$h_IMP_IN_VALUTA_DATA", $h_IMP_IN_VALUTA_DATA))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 391, False))
	GUICtrlSetData($h_SHE_IN_VALUTA_DATA, "")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 391, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("h_SHE_IN_VALUTA_DATA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$h_SHE_IN_VALUTA_DATA", $h_SHE_IN_VALUTA_DATA))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 392, False))
	GUICtrlSetData($h_TOT_IN_VALUTA_DATA, "")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 392, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("h_TOT_IN_VALUTA_DATA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$h_TOT_IN_VALUTA_DATA", $h_TOT_IN_VALUTA_DATA))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 393, False))
	GUICtrlSetData($h_CTV_IN_EURO_DATA, "")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 393, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("h_CTV_IN_EURO_DATA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$h_CTV_IN_EURO_DATA", $h_CTV_IN_EURO_DATA))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 394, False))
	GUICtrlSetData($h_CODICE_PAYPAL_DATA, "")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 394, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("h_CODICE_PAYPAL_DATA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$h_CODICE_PAYPAL_DATA", $h_CODICE_PAYPAL_DATA))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 395, False))
	GUICtrlSetData($h_DATA_PAGAMENTO_DATA, "")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 395, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("h_DATA_PAGAMENTO_DATA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$h_DATA_PAGAMENTO_DATA", $h_DATA_PAGAMENTO_DATA))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 396, False))
	GUICtrlSetData($h_MEZZO_PAGAMENTO_DATA, "")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 396, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("h_MEZZO_PAGAMENTO_DATA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$h_MEZZO_PAGAMENTO_DATA", $h_MEZZO_PAGAMENTO_DATA))

;~ 	Exit
EndFunc   ;==>Tratta_Paypal


SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 401, False))
Func AccessConnectConn($s_dbname, ByRef $o_adoCon, $i_adoMDB = 1)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 401, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_dbname")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_dbname", $s_dbname))
If SetError(@error, @extended, IsDeclared("o_adoCon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoCon", $o_adoCon))
If SetError(@error, @extended, IsDeclared("i_adoMDB")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_adoMDB", $i_adoMDB))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 402, False))
	$o_adoCon = ObjCreate("ADODB.Connection")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 402, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoCon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoCon", $o_adoCon))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 403, False))
	If Not $i_adoMDB Then $o_adoCon.Open("Provider=Microsoft.ACE.OLEDB.12.0; Data Source=" & $s_dbname & ";")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 403, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_adoMDB")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_adoMDB", $i_adoMDB))
If SetError(@error, @extended, IsDeclared("o_adoCon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoCon", $o_adoCon))
If SetError(@error, @extended, IsDeclared("s_dbname")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_dbname", $s_dbname))
	;If $i_adoMDB Then $o_adoCon.Open ("Driver={Microsoft Access Driver (*.mdb)};Dbq=" & $s_dbname")

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 405, False))
	Return $o_adoCon
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 405, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoCon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoCon", $o_adoCon))
EndFunc   ;==>AccessConnectConn


SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 408, False))
Func MyErrFunc()
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 408, False, @error, @extended))
	;#cs

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 410, False))
	$HexNumber = Hex($oMyError.number, 8)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 410, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("HexNumber")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$HexNumber", $HexNumber))
If SetError(@error, @extended, IsDeclared("oMyError")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oMyError", $oMyError))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 411, False))
 	MsgBox(0, "AutoItCOM Test", "We intercepted a COM Error !" & @CRLF & @CRLF & 			"err.description is: " & @TAB & $oMyError.description & @CRLF & 			"err.windescription:" & @TAB & $oMyError.windescription & @CRLF & 			"err.number is: " & @TAB & $HexNumber & @CRLF & 			"err.lastdllerror is: " & @TAB & $oMyError.lastdllerror & @CRLF & 			"err.scriptline is: " & @TAB & $oMyError.scriptline & @CRLF & 			"err.source is: " & @TAB & $oMyError.source & @CRLF & 			"err.helpfile is: " & @TAB & $oMyError.helpfile & @CRLF & 			"err.helpcontext is: " & @TAB & $oMyError.helpcontext 			)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 411, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("oMyError")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oMyError", $oMyError))
If SetError(@error, @extended, IsDeclared("oMyError")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oMyError", $oMyError))
If SetError(@error, @extended, IsDeclared("HexNumber")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$HexNumber", $HexNumber))
If SetError(@error, @extended, IsDeclared("oMyError")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oMyError", $oMyError))
If SetError(@error, @extended, IsDeclared("oMyError")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oMyError", $oMyError))
If SetError(@error, @extended, IsDeclared("oMyError")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oMyError", $oMyError))
If SetError(@error, @extended, IsDeclared("oMyError")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oMyError", $oMyError))
If SetError(@error, @extended, IsDeclared("oMyError")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oMyError", $oMyError))
	;#ce

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 422, False))
	SetError(1) ; to check for after this function returns
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 422, False, @error, @extended))
EndFunc   ;==>MyErrFunc


SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 425, False))
Func RegistraAcquisto($s_dbname, $_query, ByRef $o_adoCon, $i_adoMDB = 1)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 425, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_dbname")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_dbname", $s_dbname))
If SetError(@error, @extended, IsDeclared("_query")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$_query", $_query))
If SetError(@error, @extended, IsDeclared("o_adoCon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoCon", $o_adoCon))
If SetError(@error, @extended, IsDeclared("i_adoMDB")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_adoMDB", $i_adoMDB))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 426, False))
	If Not IsObj($o_adoCon) Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 426, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoCon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoCon", $o_adoCon))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 427, False))
		AccessConnectConn($s_dbname, $o_adoCon)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 427, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_dbname")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_dbname", $s_dbname))
If SetError(@error, @extended, IsDeclared("o_adoCon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoCon", $o_adoCon))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 428, False))
		$i_NeedToCloseInFunc = 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 428, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_NeedToCloseInFunc")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_NeedToCloseInFunc", $i_NeedToCloseInFunc))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 429, False))
	Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 429, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 430, False))
		$i_NeedToCloseInFunc = 0
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 430, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_NeedToCloseInFunc")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_NeedToCloseInFunc", $i_NeedToCloseInFunc))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 431, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 431, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 432, False))
	$o_adoRs = ObjCreate("ADODB.Recordset")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 432, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 433, False))
	$o_adoRs.CursorType = $adOpenKeyset
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 433, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))
If SetError(@error, @extended, IsDeclared("adOpenKeyset")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$adOpenKeyset", $adOpenKeyset))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 434, False))
	$o_adoRs.LockType = $adLockOptimistic
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 434, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))
If SetError(@error, @extended, IsDeclared("adLockOptimistic")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$adLockOptimistic", $adLockOptimistic))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 435, False))
	$o_adoRs.Open($_query, $o_adoCon)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 435, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))
If SetError(@error, @extended, IsDeclared("_query")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$_query", $_query))
If SetError(@error, @extended, IsDeclared("o_adoCon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoCon", $o_adoCon))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 436, False))
	With $o_adoRs
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 436, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 437, False))
		If Not $o_adoRs.RecordCount Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 437, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 438, False))
			$sMsg = "Tabella ACQUISTI vuota. Elaborazione abortita"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 438, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("sMsg")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sMsg", $sMsg))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 439, False))
			$iRetValue = _ExtMsgBox($EMB_ICONSTOP, "OK", "Errore", $sMsg)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 439, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("iRetValue")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iRetValue", $iRetValue))
If SetError(@error, @extended, IsDeclared("EMB_ICONSTOP")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$EMB_ICONSTOP", $EMB_ICONSTOP))
If SetError(@error, @extended, IsDeclared("sMsg")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sMsg", $sMsg))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 440, False))
			Return SetError(1, 0, 0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 440, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 441, False))
		EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 441, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 442, False))
		$o_adoRs.AddNew
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 442, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 443, False))
		$o_adoRs.Fields("ID_ACQ") = $s_work_ID_ACQ
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 443, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))
If SetError(@error, @extended, IsDeclared("s_work_ID_ACQ")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_ID_ACQ", $s_work_ID_ACQ))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 444, False))
		$o_adoRs.Fields("ANNO_CONTABILE") = $s_ACQUISTI_ANNO_CONTABILE
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 444, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_ANNO_CONTABILE")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_ANNO_CONTABILE", $s_ACQUISTI_ANNO_CONTABILE))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 445, False))
		$o_adoRs.Fields("DOC_DI_CARICO_NUMERO") = $s_ACQUISTI_DOC_DI_CARICO_NUMERO
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 445, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_DOC_DI_CARICO_NUMERO")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_DOC_DI_CARICO_NUMERO", $s_ACQUISTI_DOC_DI_CARICO_NUMERO))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 446, False))
		$o_adoRs.Fields("DOC_DI_CARICO_DATA") = $s_ACQUISTI_DATA_ACQUISTO
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 446, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_DATA_ACQUISTO")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_DATA_ACQUISTO", $s_ACQUISTI_DATA_ACQUISTO))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 447, False))
		$o_adoRs.Fields("DESCRIZIONE") = $s_ACQUISTI_DESCRIZIONE
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 447, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_DESCRIZIONE")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_DESCRIZIONE", $s_ACQUISTI_DESCRIZIONE))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 448, False))
		$o_adoRs.Fields("NUMERO_PEZZI") = $s_ACQUISTI_NUMERO_PEZZI
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 448, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_NUMERO_PEZZI")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_NUMERO_PEZZI", $s_ACQUISTI_NUMERO_PEZZI))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 449, False))
		$o_adoRs.Fields("DATA_ACQUISTO") = $s_ACQUISTI_DATA_ACQUISTO
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 449, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_DATA_ACQUISTO")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_DATA_ACQUISTO", $s_ACQUISTI_DATA_ACQUISTO))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 450, False))
		$o_adoRs.Fields("FORNITORE") = $s_ACQUISTI_FORNITORE
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 450, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_FORNITORE")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_FORNITORE", $s_ACQUISTI_FORNITORE))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 451, False))
		$o_adoRs.Fields("VALUTA") = $s_work_Valuta
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 451, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))
If SetError(@error, @extended, IsDeclared("s_work_Valuta")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_Valuta", $s_work_Valuta))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 452, False))
		$o_adoRs.Fields("IMPORTO_ACQ_VALUTA") = $s_ACQUISTI_IMPORTO_ACQ_VALUTA
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 452, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_IMPORTO_ACQ_VALUTA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_IMPORTO_ACQ_VALUTA", $s_ACQUISTI_IMPORTO_ACQ_VALUTA))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 453, False))
		$o_adoRs.Fields("SEH_ACQ_VALUTA") = $s_ACQUISTI_SEH_ACQ_VALUTA
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 453, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_SEH_ACQ_VALUTA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_SEH_ACQ_VALUTA", $s_ACQUISTI_SEH_ACQ_VALUTA))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 454, False))
		$o_adoRs.Fields("CTV_ACQ_EURO") = $s_ACQUISTI_CTV_ACQ_EURO
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 454, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_CTV_ACQ_EURO")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_CTV_ACQ_EURO", $s_ACQUISTI_CTV_ACQ_EURO))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 455, False))
		$o_adoRs.Fields("CODICE_UNIVOCO_PAYPAL") = $s_ACQUISTI_CODICE_UNIVOCO_PAYPAL
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 455, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_CODICE_UNIVOCO_PAYPAL")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_CODICE_UNIVOCO_PAYPAL", $s_ACQUISTI_CODICE_UNIVOCO_PAYPAL))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 456, False))
		$o_adoRs.Fields("DATA_PAGAMENTO") = $s_ACQUISTI_DATA_PAGAMENTO
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 456, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_DATA_PAGAMENTO")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_DATA_PAGAMENTO", $s_ACQUISTI_DATA_PAGAMENTO))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 457, False))
		$o_adoRs.Fields("PAGAMENTO_A_MEZZO") = "1"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 457, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 458, False))
		If $i_sw_PBL Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 458, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_sw_PBL")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_sw_PBL", $i_sw_PBL))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 459, False))
			$o_adoRs.Fields("NOTE") = $s_ACQUISTI_DESCRIZIONE
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 459, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_DESCRIZIONE")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_DESCRIZIONE", $s_ACQUISTI_DESCRIZIONE))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 460, False))
		EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 460, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 461, False))
		$o_adoRs.Update
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 461, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))


SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 463, False))
	EndWith
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 463, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 464, False))
	$o_adoRs.Close
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 464, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 465, False))
	If $i_NeedToCloseInFunc Then $o_adoCon.Close
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 465, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_NeedToCloseInFunc")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_NeedToCloseInFunc", $i_NeedToCloseInFunc))
If SetError(@error, @extended, IsDeclared("o_adoCon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoCon", $o_adoCon))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 466, False))
	Return 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 466, False, @error, @extended))
EndFunc   ;==>RegistraAcquisto


SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 469, False))
Func RecordSearchLast($s_dbname, $_query, ByRef $o_adoCon, $i_adoMDB = 1)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 469, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_dbname")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_dbname", $s_dbname))
If SetError(@error, @extended, IsDeclared("_query")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$_query", $_query))
If SetError(@error, @extended, IsDeclared("o_adoCon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoCon", $o_adoCon))
If SetError(@error, @extended, IsDeclared("i_adoMDB")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_adoMDB", $i_adoMDB))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 470, False))
	If Not IsObj($o_adoCon) Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 470, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoCon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoCon", $o_adoCon))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 471, False))
		AccessConnectConn($s_dbname, $o_adoCon)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 471, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_dbname")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_dbname", $s_dbname))
If SetError(@error, @extended, IsDeclared("o_adoCon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoCon", $o_adoCon))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 472, False))
		$i_NeedToCloseInFunc = 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 472, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_NeedToCloseInFunc")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_NeedToCloseInFunc", $i_NeedToCloseInFunc))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 473, False))
	Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 473, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 474, False))
		$i_NeedToCloseInFunc = 0
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 474, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_NeedToCloseInFunc")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_NeedToCloseInFunc", $i_NeedToCloseInFunc))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 475, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 475, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 476, False))
	$o_adoRs = ObjCreate("ADODB.Recordset")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 476, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 477, False))
	$o_adoRs.CursorType = $adOpenKeyset
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 477, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))
If SetError(@error, @extended, IsDeclared("adOpenKeyset")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$adOpenKeyset", $adOpenKeyset))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 478, False))
	$o_adoRs.LockType = $adLockOptimistic
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 478, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))
If SetError(@error, @extended, IsDeclared("adLockOptimistic")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$adLockOptimistic", $adLockOptimistic))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 479, False))
	$o_adoRs.Open($_query, $o_adoCon)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 479, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))
If SetError(@error, @extended, IsDeclared("_query")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$_query", $_query))
If SetError(@error, @extended, IsDeclared("o_adoCon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoCon", $o_adoCon))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 480, False))
	With $o_adoRs
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 480, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 481, False))
		If Not $o_adoRs.RecordCount Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 481, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 482, False))
			$sMsg = "La tabella Acquisti � vuota. Elaborazione abortita"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 482, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("sMsg")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sMsg", $sMsg))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 483, False))
			$iRetValue = _ExtMsgBox($EMB_ICONSTOP, "OK", "Errore", $sMsg)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 483, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("iRetValue")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iRetValue", $iRetValue))
If SetError(@error, @extended, IsDeclared("EMB_ICONSTOP")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$EMB_ICONSTOP", $EMB_ICONSTOP))
If SetError(@error, @extended, IsDeclared("sMsg")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sMsg", $sMsg))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 484, False))
			Return SetError(1, 0, 0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 484, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 485, False))
		EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 485, False, @error, @extended))


SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 487, False))
		$o_adoRs.MoveLast
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 487, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 488, False))
		$s_ACQUISTI_ID_ACQ = $o_adoRs("ID_ACQ").Value
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 488, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_ID_ACQ")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_ID_ACQ", $s_ACQUISTI_ID_ACQ))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 489, False))
		$s_ACQUISTI_ANNO_CONTABILE = $o_adoRs("ANNO_CONTABILE").Value
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 489, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_ANNO_CONTABILE")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_ANNO_CONTABILE", $s_ACQUISTI_ANNO_CONTABILE))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 490, False))
		$s_ACQUISTI_DOC_DI_CARICO_NUMERO = $o_adoRs("DOC_DI_CARICO_NUMERO").Value
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 490, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_DOC_DI_CARICO_NUMERO")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_DOC_DI_CARICO_NUMERO", $s_ACQUISTI_DOC_DI_CARICO_NUMERO))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))


SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 492, False))
	EndWith
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 492, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 493, False))
	$o_adoRs.Close
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 493, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 494, False))
	If $i_NeedToCloseInFunc Then $o_adoCon.Close
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 494, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_NeedToCloseInFunc")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_NeedToCloseInFunc", $i_NeedToCloseInFunc))
If SetError(@error, @extended, IsDeclared("o_adoCon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoCon", $o_adoCon))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 495, False))
	Return 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 495, False, @error, @extended))
EndFunc   ;==>RecordSearchLast


SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 498, False))
Func IncrementaID_ACQ($s_ACQUISTI_ID_ACQ, $s_ACQUISTI_DATA_ACQUISTO)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 498, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_ID_ACQ")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_ID_ACQ", $s_ACQUISTI_ID_ACQ))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_DATA_ACQUISTO")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_DATA_ACQUISTO", $s_ACQUISTI_DATA_ACQUISTO))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 499, False))
	local $s_workID
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 499, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_workID")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_workID", $s_workID))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 500, False))
	local $s_workID_anno
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 500, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_workID_anno")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_workID_anno", $s_workID_anno))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 501, False))
	local $s_workID_mese
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 501, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_workID_mese")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_workID_mese", $s_workID_mese))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 502, False))
	local $s_workID_prog
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 502, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_workID_prog")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_workID_prog", $s_workID_prog))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 503, False))
	local $S_workData_mese
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 503, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("S_workData_mese")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$S_workData_mese", $S_workData_mese))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 504, False))
	local $S_workData_anno
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 504, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("S_workData_anno")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$S_workData_anno", $S_workData_anno))


SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 506, False))
	$s_workID_anno = StringLeft($s_ACQUISTI_ID_ACQ, 4)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 506, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_workID_anno")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_workID_anno", $s_workID_anno))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_ID_ACQ")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_ID_ACQ", $s_ACQUISTI_ID_ACQ))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 507, False))
	$s_workID_mese = StringMid($s_ACQUISTI_ID_ACQ, 5, 2)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 507, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_workID_mese")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_workID_mese", $s_workID_mese))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_ID_ACQ")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_ID_ACQ", $s_ACQUISTI_ID_ACQ))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 508, False))
	$s_workID_prog = StringRight($s_ACQUISTI_ID_ACQ, 2)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 508, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_workID_prog")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_workID_prog", $s_workID_prog))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_ID_ACQ")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_ID_ACQ", $s_ACQUISTI_ID_ACQ))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 509, False))
	$S_workData_mese = StringMid($s_ACQUISTI_DATA_ACQUISTO, 4, 2)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 509, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("S_workData_mese")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$S_workData_mese", $S_workData_mese))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_DATA_ACQUISTO")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_DATA_ACQUISTO", $s_ACQUISTI_DATA_ACQUISTO))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 510, False))
	$S_workData_anno = StringRight($s_ACQUISTI_DATA_ACQUISTO, 4)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 510, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("S_workData_anno")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$S_workData_anno", $S_workData_anno))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_DATA_ACQUISTO")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_DATA_ACQUISTO", $s_ACQUISTI_DATA_ACQUISTO))
	
	Select
		case $s_workID_anno = $S_workData_anno

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 514, False))
			If $s_workID_mese = $S_workData_mese Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 514, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_workID_mese")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_workID_mese", $s_workID_mese))
If SetError(@error, @extended, IsDeclared("S_workData_mese")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$S_workData_mese", $S_workData_mese))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 515, False))
				$s_workID_prog = $s_workID_prog + 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 515, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_workID_prog")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_workID_prog", $s_workID_prog))
If SetError(@error, @extended, IsDeclared("s_workID_prog")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_workID_prog", $s_workID_prog))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 516, False))
			Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 516, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 517, False))
				$s_workID_mese = $S_workData_mese
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 517, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_workID_mese")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_workID_mese", $s_workID_mese))
If SetError(@error, @extended, IsDeclared("S_workData_mese")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$S_workData_mese", $S_workData_mese))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 518, False))
				$s_workID_prog = "01"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 518, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_workID_prog")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_workID_prog", $s_workID_prog))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 519, False))
			EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 519, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 520, False))
		case $s_workID_anno <> $S_workData_anno
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 520, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_workID_anno")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_workID_anno", $s_workID_anno))
If SetError(@error, @extended, IsDeclared("S_workData_anno")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$S_workData_anno", $S_workData_anno))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 521, False))
			$s_workID_anno = $S_workData_anno
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 521, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_workID_anno")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_workID_anno", $s_workID_anno))
If SetError(@error, @extended, IsDeclared("S_workData_anno")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$S_workData_anno", $S_workData_anno))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 522, False))
			$s_workID_mese = $S_workData_mese
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 522, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_workID_mese")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_workID_mese", $s_workID_mese))
If SetError(@error, @extended, IsDeclared("S_workData_mese")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$S_workData_mese", $S_workData_mese))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 523, False))
			$s_workID_prog = "01"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 523, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_workID_prog")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_workID_prog", $s_workID_prog))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 524, False))
			$s_ACQUISTI_ANNO_CONTABILE = $S_workData_anno
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 524, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_ANNO_CONTABILE")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_ANNO_CONTABILE", $s_ACQUISTI_ANNO_CONTABILE))
If SetError(@error, @extended, IsDeclared("S_workData_anno")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$S_workData_anno", $S_workData_anno))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 525, False))
			$s_ACQUISTI_DOC_DI_CARICO_NUMERO = "01"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 525, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_DOC_DI_CARICO_NUMERO")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_DOC_DI_CARICO_NUMERO", $s_ACQUISTI_DOC_DI_CARICO_NUMERO))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 526, False))
			$sMsg = "Sono stati impostati i dati per un nuovo anno contabile"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 526, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("sMsg")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sMsg", $sMsg))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 527, False))
			$iRetValue = _ExtMsgBox($EMB_ICONINFO, "OK", "Informazione", $sMsg)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 527, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("iRetValue")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iRetValue", $iRetValue))
If SetError(@error, @extended, IsDeclared("EMB_ICONINFO")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$EMB_ICONINFO", $EMB_ICONINFO))
If SetError(@error, @extended, IsDeclared("sMsg")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sMsg", $sMsg))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 528, False))
	EndSelect
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 528, False, @error, @extended))
	

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 530, False))
	local $i_lung
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 530, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_lung")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_lung", $i_lung))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 531, False))
	$i_lung = StringLen($s_workID_mese)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 531, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_lung")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_lung", $i_lung))
If SetError(@error, @extended, IsDeclared("s_workID_mese")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_workID_mese", $s_workID_mese))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 532, False))
	If $i_lung < 2 Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 532, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_lung")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_lung", $i_lung))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 533, False))
		$s_workID_mese = "0" & $s_workID_mese
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 533, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_workID_mese")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_workID_mese", $s_workID_mese))
If SetError(@error, @extended, IsDeclared("s_workID_mese")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_workID_mese", $s_workID_mese))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 534, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 534, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 535, False))
	$i_lung = StringLen($s_workID_prog)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 535, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_lung")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_lung", $i_lung))
If SetError(@error, @extended, IsDeclared("s_workID_prog")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_workID_prog", $s_workID_prog))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 536, False))
	If $i_lung < 2 Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 536, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_lung")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_lung", $i_lung))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 537, False))
		$s_workID_prog = "0" & $s_workID_prog
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 537, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_workID_prog")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_workID_prog", $s_workID_prog))
If SetError(@error, @extended, IsDeclared("s_workID_prog")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_workID_prog", $s_workID_prog))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 538, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 538, False, @error, @extended))
	

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 540, False))
	$s_workID = $s_workID_anno & $s_workID_mese & $s_workID_prog
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 540, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_workID")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_workID", $s_workID))
If SetError(@error, @extended, IsDeclared("s_workID_anno")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_workID_anno", $s_workID_anno))
If SetError(@error, @extended, IsDeclared("s_workID_mese")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_workID_mese", $s_workID_mese))
If SetError(@error, @extended, IsDeclared("s_workID_prog")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_workID_prog", $s_workID_prog))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 541, False))
	Return $s_workID
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 541, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_workID")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_workID", $s_workID))
	
EndFunc   ;==>IncrementaID_ACQ


SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 545, False))
Func AccessCloseConn($o_adoCon)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 545, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoCon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoCon", $o_adoCon))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 546, False))
	$o_adoCon.Close
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 546, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoCon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoCon", $o_adoCon))
EndFunc   ;==>AccessCloseConn


SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 549, False))
Func RicercaID_Fornitore($s_dbname, $_query, ByRef $o_adoCon, $i_adoMDB = 1)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 549, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_dbname")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_dbname", $s_dbname))
If SetError(@error, @extended, IsDeclared("_query")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$_query", $_query))
If SetError(@error, @extended, IsDeclared("o_adoCon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoCon", $o_adoCon))
If SetError(@error, @extended, IsDeclared("i_adoMDB")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_adoMDB", $i_adoMDB))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 550, False))
	If Not IsObj($o_adoCon) Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 550, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoCon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoCon", $o_adoCon))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 551, False))
		AccessConnectConn($s_dbname, $o_adoCon)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 551, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_dbname")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_dbname", $s_dbname))
If SetError(@error, @extended, IsDeclared("o_adoCon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoCon", $o_adoCon))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 552, False))
		$i_NeedToCloseInFunc = 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 552, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_NeedToCloseInFunc")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_NeedToCloseInFunc", $i_NeedToCloseInFunc))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 553, False))
	Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 553, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 554, False))
		$i_NeedToCloseInFunc = 0
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 554, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_NeedToCloseInFunc")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_NeedToCloseInFunc", $i_NeedToCloseInFunc))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 555, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 555, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 556, False))
	$o_adoRs = ObjCreate("ADODB.Recordset")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 556, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 557, False))
	$o_adoRs.CursorType = $adOpenKeyset
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 557, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))
If SetError(@error, @extended, IsDeclared("adOpenKeyset")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$adOpenKeyset", $adOpenKeyset))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 558, False))
	$o_adoRs.LockType = $adLockOptimistic
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 558, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))
If SetError(@error, @extended, IsDeclared("adLockOptimistic")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$adLockOptimistic", $adLockOptimistic))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 559, False))
	$o_adoRs.Open($_query, $o_adoCon)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 559, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))
If SetError(@error, @extended, IsDeclared("_query")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$_query", $_query))
If SetError(@error, @extended, IsDeclared("o_adoCon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoCon", $o_adoCon))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 560, False))
	With $o_adoRs
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 560, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 561, False))
		If Not $o_adoRs.RecordCount Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 561, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 562, False))
			$sMsg = "Il fornitore non � censito!"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 562, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("sMsg")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sMsg", $sMsg))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 563, False))
			$iRetValue = _ExtMsgBox($EMB_ICONINFO, "OK", "Attenzione", $sMsg)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 563, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("iRetValue")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iRetValue", $iRetValue))
If SetError(@error, @extended, IsDeclared("EMB_ICONINFO")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$EMB_ICONINFO", $EMB_ICONINFO))
If SetError(@error, @extended, IsDeclared("sMsg")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sMsg", $sMsg))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 564, False))
			Return SetError(1, 0, 0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 564, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 565, False))
		EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 565, False, @error, @extended))


SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 567, False))
		$s_work_ID_FORNITORE = $o_adoRs("ID_FORNITORE").Value
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 567, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_ID_FORNITORE")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_ID_FORNITORE", $s_work_ID_FORNITORE))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))


SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 569, False))
	EndWith
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 569, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 570, False))
	$o_adoRs.Close
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 570, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 571, False))
	If $i_NeedToCloseInFunc Then $o_adoCon.Close
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 571, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_NeedToCloseInFunc")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_NeedToCloseInFunc", $i_NeedToCloseInFunc))
If SetError(@error, @extended, IsDeclared("o_adoCon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoCon", $o_adoCon))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 572, False))
	Return $s_work_ID_FORNITORE
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 572, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_ID_FORNITORE")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_ID_FORNITORE", $s_work_ID_FORNITORE))
EndFunc   ;==>RicercaID_Fornitore


SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 575, False))
Func RicercaDescr_Valuta($s_dbname, $_query, ByRef $o_adoCon, $i_adoMDB = 1)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 575, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_dbname")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_dbname", $s_dbname))
If SetError(@error, @extended, IsDeclared("_query")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$_query", $_query))
If SetError(@error, @extended, IsDeclared("o_adoCon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoCon", $o_adoCon))
If SetError(@error, @extended, IsDeclared("i_adoMDB")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_adoMDB", $i_adoMDB))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 576, False))
	If Not IsObj($o_adoCon) Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 576, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoCon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoCon", $o_adoCon))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 577, False))
		AccessConnectConn($s_dbname, $o_adoCon)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 577, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_dbname")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_dbname", $s_dbname))
If SetError(@error, @extended, IsDeclared("o_adoCon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoCon", $o_adoCon))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 578, False))
		$i_NeedToCloseInFunc = 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 578, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_NeedToCloseInFunc")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_NeedToCloseInFunc", $i_NeedToCloseInFunc))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 579, False))
	Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 579, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 580, False))
		$i_NeedToCloseInFunc = 0
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 580, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_NeedToCloseInFunc")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_NeedToCloseInFunc", $i_NeedToCloseInFunc))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 581, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 581, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 582, False))
	$o_adoRs = ObjCreate("ADODB.Recordset")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 582, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 583, False))
	$o_adoRs.CursorType = $adOpenKeyset
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 583, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))
If SetError(@error, @extended, IsDeclared("adOpenKeyset")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$adOpenKeyset", $adOpenKeyset))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 584, False))
	$o_adoRs.LockType = $adLockOptimistic
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 584, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))
If SetError(@error, @extended, IsDeclared("adLockOptimistic")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$adLockOptimistic", $adLockOptimistic))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 585, False))
	$o_adoRs.Open($_query, $o_adoCon)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 585, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))
If SetError(@error, @extended, IsDeclared("_query")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$_query", $_query))
If SetError(@error, @extended, IsDeclared("o_adoCon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoCon", $o_adoCon))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 586, False))
	With $o_adoRs
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 586, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 587, False))
		If Not $o_adoRs.RecordCount Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 587, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 588, False))
			$sMsg = "La valuta non e' censita. Elaborazione abortita"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 588, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("sMsg")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sMsg", $sMsg))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 589, False))
			$iRetValue = _ExtMsgBox($EMB_ICONSTOP, "OK", "Errore", $sMsg)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 589, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("iRetValue")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iRetValue", $iRetValue))
If SetError(@error, @extended, IsDeclared("EMB_ICONSTOP")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$EMB_ICONSTOP", $EMB_ICONSTOP))
If SetError(@error, @extended, IsDeclared("sMsg")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sMsg", $sMsg))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 590, False))
			Return SetError(1, 0, 0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 590, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 591, False))
		EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 591, False, @error, @extended))


SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 593, False))
		$s_work_DESCR_VALUTA = $o_adoRs("DESCRIZIONE_VALUTA").Value
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 593, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_DESCR_VALUTA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_DESCR_VALUTA", $s_work_DESCR_VALUTA))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))


SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 595, False))
	EndWith
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 595, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 596, False))
	$o_adoRs.Close
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 596, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 597, False))
	If $i_NeedToCloseInFunc Then $o_adoCon.Close
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 597, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_NeedToCloseInFunc")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_NeedToCloseInFunc", $i_NeedToCloseInFunc))
If SetError(@error, @extended, IsDeclared("o_adoCon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoCon", $o_adoCon))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 598, False))
	Return $s_work_DESCR_VALUTA
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 598, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_DESCR_VALUTA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_DESCR_VALUTA", $s_work_DESCR_VALUTA))
EndFunc   ;==>RicercaDescr_Valuta


SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 601, False))
Func RegistraMovimento($s_dbname, $_query, ByRef $o_adoCon, $i_adoMDB = 1)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 601, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_dbname")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_dbname", $s_dbname))
If SetError(@error, @extended, IsDeclared("_query")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$_query", $_query))
If SetError(@error, @extended, IsDeclared("o_adoCon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoCon", $o_adoCon))
If SetError(@error, @extended, IsDeclared("i_adoMDB")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_adoMDB", $i_adoMDB))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 602, False))
	If Not IsObj($o_adoCon) Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 602, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoCon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoCon", $o_adoCon))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 603, False))
		AccessConnectConn($s_dbname, $o_adoCon)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 603, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_dbname")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_dbname", $s_dbname))
If SetError(@error, @extended, IsDeclared("o_adoCon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoCon", $o_adoCon))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 604, False))
		$i_NeedToCloseInFunc = 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 604, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_NeedToCloseInFunc")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_NeedToCloseInFunc", $i_NeedToCloseInFunc))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 605, False))
	Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 605, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 606, False))
		$i_NeedToCloseInFunc = 0
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 606, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_NeedToCloseInFunc")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_NeedToCloseInFunc", $i_NeedToCloseInFunc))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 607, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 607, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 608, False))
	$o_adoRs = ObjCreate("ADODB.Recordset")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 608, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 609, False))
	$o_adoRs.CursorType = $adOpenKeyset
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 609, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))
If SetError(@error, @extended, IsDeclared("adOpenKeyset")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$adOpenKeyset", $adOpenKeyset))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 610, False))
	$o_adoRs.LockType = $adLockOptimistic
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 610, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))
If SetError(@error, @extended, IsDeclared("adLockOptimistic")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$adLockOptimistic", $adLockOptimistic))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 611, False))
	$o_adoRs.Open($_query, $o_adoCon)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 611, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))
If SetError(@error, @extended, IsDeclared("_query")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$_query", $_query))
If SetError(@error, @extended, IsDeclared("o_adoCon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoCon", $o_adoCon))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 612, False))
	With $o_adoRs
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 612, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 613, False))
		If Not $o_adoRs.RecordCount Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 613, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 614, False))
			$sMsg = "Tabella MOVIMENTI vuota. Elaborazione abortita"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 614, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("sMsg")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sMsg", $sMsg))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 615, False))
			$iRetValue = _ExtMsgBox($EMB_ICONSTOP, "OK", "Errore", $sMsg)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 615, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("iRetValue")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iRetValue", $iRetValue))
If SetError(@error, @extended, IsDeclared("EMB_ICONSTOP")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$EMB_ICONSTOP", $EMB_ICONSTOP))
If SetError(@error, @extended, IsDeclared("sMsg")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sMsg", $sMsg))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 616, False))
			Return SetError(1, 0, 0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 616, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 617, False))
		EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 617, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 618, False))
		$o_adoRs.AddNew
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 618, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 619, False))
		$o_adoRs.Fields("DATA_MOV") = $s_ACQUISTI_DATA_ACQUISTO
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 619, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_DATA_ACQUISTO")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_DATA_ACQUISTO", $s_ACQUISTI_DATA_ACQUISTO))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 620, False))
		$o_adoRs.Fields("CAUSALE") = "ACE"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 620, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 621, False))
		$o_adoRs.Fields("IMP_DARE") = $s_ACQUISTI_CTV_ACQ_EURO
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 621, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_CTV_ACQ_EURO")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_CTV_ACQ_EURO", $s_ACQUISTI_CTV_ACQ_EURO))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 622, False))
		$o_adoRs.Fields("RIFERIMENTO_ACQ") = $s_work_ID_ACQ
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 622, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))
If SetError(@error, @extended, IsDeclared("s_work_ID_ACQ")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_ID_ACQ", $s_work_ID_ACQ))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 623, False))
		If $i_sw_PBL Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 623, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_sw_PBL")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_sw_PBL", $i_sw_PBL))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 624, False))
			$o_adoRs.Fields("NOTE") = "S.& H."
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 624, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 625, False))
		EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 625, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 626, False))
		$o_adoRs.Update
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 626, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))


SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 628, False))
	EndWith
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 628, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 629, False))
	$o_adoRs.Close
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 629, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 630, False))
	If $i_NeedToCloseInFunc Then $o_adoCon.Close
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 630, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_NeedToCloseInFunc")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_NeedToCloseInFunc", $i_NeedToCloseInFunc))
If SetError(@error, @extended, IsDeclared("o_adoCon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoCon", $o_adoCon))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 631, False))
	Return 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 631, False, @error, @extended))
EndFunc   ;==>RegistraMovimento

Func AutoIt_Debugger_OnAutoItExit()
   AutoIt_Debugger_WaitForExit()
EndFunc

Func CheckForVariableChange($VariableName, $AutoItDebugger_ArrayIndexString,  $VariableValue)
   If $VariableName = "$oMyError" Then
      AutoIt_Debugger_GetVariableFromEvent("$oMyError", $oMyError, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_provenienza" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_provenienza", $s_provenienza, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_ambiente" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_ambiente", $s_ambiente, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$hPaypal_Image" Then
      AutoIt_Debugger_GetVariableFromEvent("$hPaypal_Image", $hPaypal_Image, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$GUI_SHOW" Then
      AutoIt_Debugger_GetVariableFromEvent("$GUI_SHOW", $GUI_SHOW, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$hProduzione_Image" Then
      AutoIt_Debugger_GetVariableFromEvent("$hProduzione_Image", $hProduzione_Image, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$hTest_Image" Then
      AutoIt_Debugger_GetVariableFromEvent("$hTest_Image", $hTest_Image, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$GUI_HIDE" Then
      AutoIt_Debugger_GetVariableFromEvent("$GUI_HIDE", $GUI_HIDE, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$GUI_Form" Then
      AutoIt_Debugger_GetVariableFromEvent("$GUI_Form", $GUI_Form, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$GUI_EVENT_CLOSE" Then
      AutoIt_Debugger_GetVariableFromEvent("$GUI_EVENT_CLOSE", $GUI_EVENT_CLOSE, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$hProduzione" Then
      AutoIt_Debugger_GetVariableFromEvent("$hProduzione", $hProduzione, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$GUI_CHECKED" Then
      AutoIt_Debugger_GetVariableFromEvent("$GUI_CHECKED", $GUI_CHECKED, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$hTest" Then
      AutoIt_Debugger_GetVariableFromEvent("$hTest", $hTest, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$hTest_Banca" Then
      AutoIt_Debugger_GetVariableFromEvent("$hTest_Banca", $hTest_Banca, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$hPaypal" Then
      AutoIt_Debugger_GetVariableFromEvent("$hPaypal", $hPaypal, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$o_Con" Then
      AutoIt_Debugger_GetVariableFromEvent("$o_Con", $o_Con, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$o_Rs" Then
      AutoIt_Debugger_GetVariableFromEvent("$o_Rs", $o_Rs, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_dbname" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_dbname", $s_dbname, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_Tablename" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_Tablename", $s_Tablename, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$rKey" Then
      AutoIt_Debugger_GetVariableFromEvent("$rKey", $rKey, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$sDecimal" Then
      AutoIt_Debugger_GetVariableFromEvent("$sDecimal", $sDecimal, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$sThousands" Then
      AutoIt_Debugger_GetVariableFromEvent("$sThousands", $sThousands, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$ItemArray" Then
      AutoIt_Debugger_GetVariableFromEvent("$ItemArray", $ItemArray, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$ItemLines" Then
      AutoIt_Debugger_GetVariableFromEvent("$ItemLines", $ItemLines, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$HowManyColumns" Then
      AutoIt_Debugger_GetVariableFromEvent("$HowManyColumns", $HowManyColumns, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$OldProgress" Then
      AutoIt_Debugger_GetVariableFromEvent("$OldProgress", $OldProgress, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$List" Then
      AutoIt_Debugger_GetVariableFromEvent("$List", $List, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$Progress" Then
      AutoIt_Debugger_GetVariableFromEvent("$Progress", $Progress, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$SetColumnWidths" Then
      AutoIt_Debugger_GetVariableFromEvent("$SetColumnWidths", $SetColumnWidths, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$Delimiter" Then
      AutoIt_Debugger_GetVariableFromEvent("$Delimiter", $Delimiter, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$Font" Then
      AutoIt_Debugger_GetVariableFromEvent("$Font", $Font, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$Underline" Then
      AutoIt_Debugger_GetVariableFromEvent("$Underline", $Underline, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$UnderValue" Then
      AutoIt_Debugger_GetVariableFromEvent("$UnderValue", $UnderValue, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$FontSize" Then
      AutoIt_Debugger_GetVariableFromEvent("$FontSize", $FontSize, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$FontWeight" Then
      AutoIt_Debugger_GetVariableFromEvent("$FontWeight", $FontWeight, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$File" Then
      AutoIt_Debugger_GetVariableFromEvent("$File", $File, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$Input" Then
      AutoIt_Debugger_GetVariableFromEvent("$Input", $Input, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_work" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_work", $s_work, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$i_row" Then
      AutoIt_Debugger_GetVariableFromEvent("$i_row", $i_row, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$i_max_row" Then
      AutoIt_Debugger_GetVariableFromEvent("$i_max_row", $i_max_row, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$i_almeno1" Then
      AutoIt_Debugger_GetVariableFromEvent("$i_almeno1", $i_almeno1, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_work_tipo" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_work_tipo", $s_work_tipo, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_work_cod_oggetto" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_work_cod_oggetto", $s_work_cod_oggetto, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_works_tipo" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_works_tipo", $s_works_tipo, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$sMsg" Then
      AutoIt_Debugger_GetVariableFromEvent("$sMsg", $sMsg, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$iRetValue" Then
      AutoIt_Debugger_GetVariableFromEvent("$iRetValue", $iRetValue, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$EMB_ICONSTOP" Then
      AutoIt_Debugger_GetVariableFromEvent("$EMB_ICONSTOP", $EMB_ICONSTOP, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$i_sw_PBL" Then
      AutoIt_Debugger_GetVariableFromEvent("$i_sw_PBL", $i_sw_PBL, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$i_sw_EUR" Then
      AutoIt_Debugger_GetVariableFromEvent("$i_sw_EUR", $i_sw_EUR, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$i_sw_acq" Then
      AutoIt_Debugger_GetVariableFromEvent("$i_sw_acq", $i_sw_acq, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_work_ID_transazione" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_work_ID_transazione", $s_work_ID_transazione, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_work_ID_transazione_di_riferimento" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_work_ID_transazione_di_riferimento", $s_work_ID_transazione_di_riferimento, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_work_Data" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_work_Data", $s_work_Data, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_work_Nome" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_work_Nome", $s_work_Nome, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_work_Email" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_work_Email", $s_work_Email, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_work_URL_Oggetto" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_work_URL_Oggetto", $s_work_URL_Oggetto, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_work_Numero_oggetto" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_work_Numero_oggetto", $s_work_Numero_oggetto, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_work_Campo_opzionale" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_work_Campo_opzionale", $s_work_Campo_opzionale, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_work_Valuta" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_work_Valuta", $s_work_Valuta, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_work_Importo_netto" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_work_Importo_netto", $s_work_Importo_netto, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_ACQUISTI_ID_ACQ" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_ACQUISTI_ID_ACQ", $s_ACQUISTI_ID_ACQ, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_ACQUISTI_ANNO_CONTABILE" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_ACQUISTI_ANNO_CONTABILE", $s_ACQUISTI_ANNO_CONTABILE, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_ACQUISTI_DOC_DI_CARICO_NUMERO" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_ACQUISTI_DOC_DI_CARICO_NUMERO", $s_ACQUISTI_DOC_DI_CARICO_NUMERO, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_ACQUISTI_DOC_DI_CARICO_DATA" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_ACQUISTI_DOC_DI_CARICO_DATA", $s_ACQUISTI_DOC_DI_CARICO_DATA, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_ACQUISTI_DESCRIZIONE" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_ACQUISTI_DESCRIZIONE", $s_ACQUISTI_DESCRIZIONE, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_ACQUISTI_NUMERO_PEZZI" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_ACQUISTI_NUMERO_PEZZI", $s_ACQUISTI_NUMERO_PEZZI, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_ACQUISTI_DATA_ACQUISTO" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_ACQUISTI_DATA_ACQUISTO", $s_ACQUISTI_DATA_ACQUISTO, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_ACQUISTI_FORNITORE" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_ACQUISTI_FORNITORE", $s_ACQUISTI_FORNITORE, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_ACQUISTI_VALUTA" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_ACQUISTI_VALUTA", $s_ACQUISTI_VALUTA, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_ACQUISTI_IMPORTO_ACQ_VALUTA" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_ACQUISTI_IMPORTO_ACQ_VALUTA", $s_ACQUISTI_IMPORTO_ACQ_VALUTA, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_ACQUISTI_SEH_ACQ_VALUTA" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_ACQUISTI_SEH_ACQ_VALUTA", $s_ACQUISTI_SEH_ACQ_VALUTA, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_ACQUISTI_CTV_ACQ_EURO" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_ACQUISTI_CTV_ACQ_EURO", $s_ACQUISTI_CTV_ACQ_EURO, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_ACQUISTI_IVA_DAZIO_ACQ_EURO" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_ACQUISTI_IVA_DAZIO_ACQ_EURO", $s_ACQUISTI_IVA_DAZIO_ACQ_EURO, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_ACQUISTI_CODICE_UNIVOCO_PAYPAL" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_ACQUISTI_CODICE_UNIVOCO_PAYPAL", $s_ACQUISTI_CODICE_UNIVOCO_PAYPAL, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_ACQUISTI_DATA_PAGAMENTO" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_ACQUISTI_DATA_PAGAMENTO", $s_ACQUISTI_DATA_PAGAMENTO, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_ACQUISTI_PAGAMENTO_A_MEZZO" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_ACQUISTI_PAGAMENTO_A_MEZZO", $s_ACQUISTI_PAGAMENTO_A_MEZZO, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_ACQUISTI_DESCRIZIONE_VALUTA" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_ACQUISTI_DESCRIZIONE_VALUTA", $s_ACQUISTI_DESCRIZIONE_VALUTA, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_CALCOLATO_TOTALE_ACQ_VALUTA" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_CALCOLATO_TOTALE_ACQ_VALUTA", $s_CALCOLATO_TOTALE_ACQ_VALUTA, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_CALCOLATO_TOTALE_ACQ_EURO" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_CALCOLATO_TOTALE_ACQ_EURO", $s_CALCOLATO_TOTALE_ACQ_EURO, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$a_riepilogo_acquisti" Then
      AutoIt_Debugger_GetVariableFromEvent("$a_riepilogo_acquisti", $a_riepilogo_acquisti, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$i_contatore_acquisti" Then
      AutoIt_Debugger_GetVariableFromEvent("$i_contatore_acquisti", $i_contatore_acquisti, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_works_tariffe" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_works_tariffe", $s_works_tariffe, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_work_URL_oggetto" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_work_URL_oggetto", $s_work_URL_oggetto, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_query" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_query", $s_query, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$i_cod_ritorno" Then
      AutoIt_Debugger_GetVariableFromEvent("$i_cod_ritorno", $i_cod_ritorno, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_work_ID_ACQ" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_work_ID_ACQ", $s_work_ID_ACQ, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$h_ID_ACQ_DATA" Then
      AutoIt_Debugger_GetVariableFromEvent("$h_ID_ACQ_DATA", $h_ID_ACQ_DATA, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$h_ANNO_CONTABILE_DATA" Then
      AutoIt_Debugger_GetVariableFromEvent("$h_ANNO_CONTABILE_DATA", $h_ANNO_CONTABILE_DATA, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$h_DOCUMENTO_DI_CARICO_DATA" Then
      AutoIt_Debugger_GetVariableFromEvent("$h_DOCUMENTO_DI_CARICO_DATA", $h_DOCUMENTO_DI_CARICO_DATA, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$h_DOCUMENTO_DI_CARICO_DATA_DATA" Then
      AutoIt_Debugger_GetVariableFromEvent("$h_DOCUMENTO_DI_CARICO_DATA_DATA", $h_DOCUMENTO_DI_CARICO_DATA_DATA, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$h_DESCRIZIONE_DATA" Then
      AutoIt_Debugger_GetVariableFromEvent("$h_DESCRIZIONE_DATA", $h_DESCRIZIONE_DATA, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$h_NUMERO_PEZZI" Then
      AutoIt_Debugger_GetVariableFromEvent("$h_NUMERO_PEZZI", $h_NUMERO_PEZZI, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$h_DATA_ACQUISTO_DATA" Then
      AutoIt_Debugger_GetVariableFromEvent("$h_DATA_ACQUISTO_DATA", $h_DATA_ACQUISTO_DATA, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$h_FORNITORE_DATA" Then
      AutoIt_Debugger_GetVariableFromEvent("$h_FORNITORE_DATA", $h_FORNITORE_DATA, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$h_VALUTA_DATA" Then
      AutoIt_Debugger_GetVariableFromEvent("$h_VALUTA_DATA", $h_VALUTA_DATA, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$h_IMP_IN_VALUTA_DATA" Then
      AutoIt_Debugger_GetVariableFromEvent("$h_IMP_IN_VALUTA_DATA", $h_IMP_IN_VALUTA_DATA, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$h_SHE_IN_VALUTA_DATA" Then
      AutoIt_Debugger_GetVariableFromEvent("$h_SHE_IN_VALUTA_DATA", $h_SHE_IN_VALUTA_DATA, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$h_TOT_IN_VALUTA_DATA" Then
      AutoIt_Debugger_GetVariableFromEvent("$h_TOT_IN_VALUTA_DATA", $h_TOT_IN_VALUTA_DATA, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$h_CTV_IN_EURO_DATA" Then
      AutoIt_Debugger_GetVariableFromEvent("$h_CTV_IN_EURO_DATA", $h_CTV_IN_EURO_DATA, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$h_CODICE_PAYPAL_DATA" Then
      AutoIt_Debugger_GetVariableFromEvent("$h_CODICE_PAYPAL_DATA", $h_CODICE_PAYPAL_DATA, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$h_DATA_PAGAMENTO_DATA" Then
      AutoIt_Debugger_GetVariableFromEvent("$h_DATA_PAGAMENTO_DATA", $h_DATA_PAGAMENTO_DATA, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$h_MEZZO_PAGAMENTO_DATA" Then
      AutoIt_Debugger_GetVariableFromEvent("$h_MEZZO_PAGAMENTO_DATA", $h_MEZZO_PAGAMENTO_DATA, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$iOnEventMode" Then
      AutoIt_Debugger_GetVariableFromEvent("$iOnEventMode", $iOnEventMode, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$iMsg" Then
      AutoIt_Debugger_GetVariableFromEvent("$iMsg", $iMsg, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$hProsegui" Then
      AutoIt_Debugger_GetVariableFromEvent("$hProsegui", $hProsegui, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$h_Apri_URL" Then
      AutoIt_Debugger_GetVariableFromEvent("$h_Apri_URL", $h_Apri_URL, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$hSalta" Then
      AutoIt_Debugger_GetVariableFromEvent("$hSalta", $hSalta, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$hChiudi" Then
      AutoIt_Debugger_GetVariableFromEvent("$hChiudi", $hChiudi, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$hCopia" Then
      AutoIt_Debugger_GetVariableFromEvent("$hCopia", $hCopia, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$hInserisci" Then
      AutoIt_Debugger_GetVariableFromEvent("$hInserisci", $hInserisci, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$o_adoCon" Then
      AutoIt_Debugger_GetVariableFromEvent("$o_adoCon", $o_adoCon, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$i_adoMDB" Then
      AutoIt_Debugger_GetVariableFromEvent("$i_adoMDB", $i_adoMDB, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$HexNumber" Then
      AutoIt_Debugger_GetVariableFromEvent("$HexNumber", $HexNumber, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$_query" Then
      AutoIt_Debugger_GetVariableFromEvent("$_query", $_query, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$i_NeedToCloseInFunc" Then
      AutoIt_Debugger_GetVariableFromEvent("$i_NeedToCloseInFunc", $i_NeedToCloseInFunc, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$o_adoRs" Then
      AutoIt_Debugger_GetVariableFromEvent("$o_adoRs", $o_adoRs, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$adOpenKeyset" Then
      AutoIt_Debugger_GetVariableFromEvent("$adOpenKeyset", $adOpenKeyset, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$adLockOptimistic" Then
      AutoIt_Debugger_GetVariableFromEvent("$adLockOptimistic", $adLockOptimistic, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_workID" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_workID", $s_workID, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_workID_anno" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_workID_anno", $s_workID_anno, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_workID_mese" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_workID_mese", $s_workID_mese, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_workID_prog" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_workID_prog", $s_workID_prog, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$S_workData_mese" Then
      AutoIt_Debugger_GetVariableFromEvent("$S_workData_mese", $S_workData_mese, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$S_workData_anno" Then
      AutoIt_Debugger_GetVariableFromEvent("$S_workData_anno", $S_workData_anno, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$EMB_ICONINFO" Then
      AutoIt_Debugger_GetVariableFromEvent("$EMB_ICONINFO", $EMB_ICONINFO, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$i_lung" Then
      AutoIt_Debugger_GetVariableFromEvent("$i_lung", $i_lung, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_work_ID_FORNITORE" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_work_ID_FORNITORE", $s_work_ID_FORNITORE, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_work_DESCR_VALUTA" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_work_DESCR_VALUTA", $s_work_DESCR_VALUTA, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
EndFunc
#cs ----------------------------------------------------------------------------

	AutoIt Version: 3.2.1.11 (beta)
	Author:         myName

	Script Function:
	The command code for the AutoIt Debugger (this was the Include file)

#ce ----------------------------------------------------------------------------

;Uncomment the following to check that all variables are defined
;AutoItSetOption("MustDeclareVars", 1)

Func AutoIt_Debugger_CreateMessageWindow()
	;#Include <winapi.au3>
	;#include <GUIConstants.au3>
	;#include <WindowsConstants.au3>
	;#include-once

	#region ### START Koda GUI section ### Form=_AutoIt Debugger Include.kxf
	$AutoItDebuggerCommandWindow = GUICreate("AutoIt Debugger Command Window", 621, 328, 193, 126)
	$AutoItDebuggerCommandWindowListbox = GUICtrlCreateList("", 8, 8, 609, 305)
	#endregion ### END Koda GUI section ###
	;GUISetState(@SW_SHOW)

	; Register Windows Messages
	GUIRegisterMsg(0x004A, "_GUIRegisterMsgProc") ;Global Const $WM_COPYDATA = 0x004A

	;Dim $AutoItDebugger_ClosedByUser
	;Dim $AutoItDebugger_LastError
	;Dim $AutoItDebugger_LastExtended
EndFunc   ;==>AutoIt_Debugger_CreateMessageWindow


Func AutoItDebuggerEvent_ChangeVariable($VariableName, $VariableValue)
	;MsgBox(0, "_AutoIt Debugger Include", "Entered 'AutoItDebuggerEvent_ChangeVariable'")

	Dim $AutoItDebugger_ArrayIndexString = ""
	Dim $StrippedVariableName = $VariableName

	;Convert array variables from $asMyArray[1] format to a
	Local $iOpenSquareBracketPos
	$iOpenSquareBracketPos = StringInStr($VariableName, "[")
	If $iOpenSquareBracketPos <> 0 Then
		$StrippedVariableName = StringLeft($VariableName, $iOpenSquareBracketPos - 1)
		;Strip the variable name and open bracket to leave '1][1]' etc.
		$AutoItDebugger_ArrayIndexString = StringTrimLeft($VariableName, $iOpenSquareBracketPos)
		;Strip the close bracket to leave '1][1' etc.
		$AutoItDebugger_ArrayIndexString = StringTrimRight($AutoItDebugger_ArrayIndexString, 1)
		;Remove any ][ from the string and replace with | to make 1][1 into 1|1
		$AutoItDebugger_ArrayIndexString = StringReplace($AutoItDebugger_ArrayIndexString, "][", "|")
		;MsgBox(0, "_AutoIt Debugger Include", $AutoItDebugger_ArrayIndexString)
	EndIf

	;Check if the variable is actually a variable
	If IsDeclared(StringTrimLeft($VariableName, 1)) Then
		CheckForVariableChange($StrippedVariableName, $AutoItDebugger_ArrayIndexString, $VariableValue)
	Else
		;MsgBox features: Title=Yes, Text=Yes, Buttons=OK, Icon=Warning
		MsgBox(48, "_AutoIt Debugger Include", "AutoIt Debugger GUI sent attempted to change the value of an undeclared variable (" & $StrippedVariableName & ")")
	EndIf
EndFunc   ;==>AutoItDebuggerEvent_ChangeVariable


Func AutoIt_Debugger_NextLine($Filepath, $Filename, $LineNumber, $SkipLine)
	Local $sChangedVariableName

	;Default to single step
	$AutoItDebugger_Paused = 1

	;Send new line status to the Debug GUI
	_AU3COM_SendData_NewLine($Filepath & "|" & $Filename & "|" & $LineNumber & "|" & $SkipLine)

	;Wait for the GUI to come off pause
	While $AutoItDebugger_Paused
		;Quit if necessary
		If $AutoItDebugger_Quit Then
			Exit
		EndIf

		;Wait
		Sleep(50)
	WEnd
EndFunc   ;==>AutoIt_Debugger_NextLine


Func AutoIt_Debugger_FinishedLine($Filepath, $Filename, $LineNumber, $SkipLine, $NextLine_Error, $NextLine_Extended)

	;If Not $SkipLine Then
	;Send new line status to the Debug GUI
	_AU3COM_SendData_FinishedLine($Filepath & "|" & $Filename & "|" & $LineNumber & "|" & $SkipLine)

	;Send the @error and @extended data on each new line
	_AU3COM_SendData_SendVariable("@error" & "|" & $NextLine_Error)
	_AU3COM_SendData_SendVariable("@extended" & "|" & $NextLine_Extended)
	;EndIf
EndFunc   ;==>AutoIt_Debugger_FinishedLine


Func AutoIt_Debugger_WaitForExit()
	;Send script finished message
	_AU3COM_SendData_ScriptFinished("ScriptFinishing")

	#region --- CodeWizard generated code Start ---
	;MsgBox features: Title=No, Text=Yes, Buttons=OK, Icon=Question
	MsgBox(64, "AutoIt Debugger", "Script Finished. Click OK to return to development mode.")
	#endregion --- CodeWizard generated code Start ---

	_AU3COM_SendData_ScriptFinished("ScriptFinished")
EndFunc   ;==>AutoIt_Debugger_WaitForExit


Func AutoIt_Debugger_LoadFile($ORiginalScriptFilePath, $ORiginalScriptFileName)
	If $AutoItDebuggerCommandWindowName = "" Then
		;Take the first script name as the command window name
		$AutoItDebuggerCommandWindowName = $ORiginalScriptFilePath

		;Change this windows name
		WinSetTitle("AutoIt Debugger Command Window", "", $AutoItDebuggerCommandWindowName & " AutoIt Debugger Command Window")
	EndIf

	;Default to single step
	$AutoItDebugger_Paused = 1

	_AU3COM_SendData_LoadFile($ORiginalScriptFilePath & "|" & $ORiginalScriptFileName)

	;Wait for the GUI to come off pause
	While $AutoItDebugger_Paused
		;Quit if necessary
		If $AutoItDebugger_Quit Then
			Exit
		EndIf

		;Wait
		Sleep(50)
	WEnd
EndFunc   ;==>AutoIt_Debugger_LoadFile


Func AutoIt_Debugger_DebugFile($DebugScriptFilePath)
	;Default to single step
	$AutoItDebugger_Paused = 1

	_AU3COM_SendData_DebugFile($DebugScriptFilePath)

	;Wait for the GUI to come off pause
	While $AutoItDebugger_Paused
		;Quit if necessary
		If $AutoItDebugger_Quit Then
			Exit
		EndIf

		;Wait
		Sleep(50)
	WEnd
EndFunc   ;==>AutoIt_Debugger_DebugFile


Func AutoIt_Debugger_SendVariable($VariableName, $VariableValue)
	Local $iNumberOfDims
	Local $iDimXIndex
	Local $iDimYIndex
	Local $iDimZIndex

	;Determine if this is a array variable
	If IsArray($VariableValue) Then
		;Find the number of dimensions
		$iNumberOfDims = UBound($VariableValue, 0)
		Select
			Case $iNumberOfDims = 1
				;Send each array index seperatly
				For $iDimXIndex = 0 To UBound($VariableValue, 1) - 1
					;$oDebug.SendVariable ($VariableName & "[" & $iDimXIndex & "]", AutoIt_Debugger_ReturnVariableValue($VariableName, $VariableValue[$iDimXIndex]))
					_AU3COM_SendData_SendVariable($VariableName & "[" & $iDimXIndex & "]" & "|" & AutoIt_Debugger_ReturnVariableValue($VariableName, $VariableValue[$iDimXIndex]))
				Next

			Case $iNumberOfDims = 2
				;Repeat for each X dimension
				For $iDimXIndex = 0 To UBound($VariableValue, 1) - 1
					;Repeat for each Y dimension
					For $iDimYIndex = 0 To UBound($VariableValue, 2) - 1
						;$oDebug.SendVariable ($VariableName & "[" & $iDimXIndex & "][" & $iDimYIndex & "]", AutoIt_Debugger_ReturnVariableValue($VariableName, $VariableValue[$iDimXIndex][$iDimYIndex]))
						_AU3COM_SendData_SendVariable($VariableName & "[" & $iDimXIndex & "][" & $iDimYIndex & "]" & "|" & AutoIt_Debugger_ReturnVariableValue($VariableName, $VariableValue[$iDimXIndex][$iDimYIndex]))
					Next
				Next

			Case $iNumberOfDims = 3
				;Repeat for each X dimension
				For $iDimXIndex = 0 To UBound($VariableValue, 1) - 1
					;Repeat for each Y dimension
					For $iDimYIndex = 0 To UBound($VariableValue, 2) - 1
						;Repeat for each Z dimension
						For $iDimZIndex = 0 To UBound($VariableValue, 3) - 1
							;$oDebug.SendVariable ($VariableName & "[" & $iDimXIndex & "][" & $iDimYIndex & "][" & $iDimZIndex & "]", AutoIt_Debugger_ReturnVariableValue($VariableName, $VariableValue[$iDimXIndex][$iDimYIndex][$iDimZIndex]))
							_AU3COM_SendData_SendVariable($VariableName & "[" & $iDimXIndex & "][" & $iDimYIndex & "][" & $iDimZIndex & "]" & "|" & AutoIt_Debugger_ReturnVariableValue($VariableName, $VariableValue[$iDimXIndex][$iDimYIndex][$iDimZIndex]))
						Next
					Next
				Next

			Case Else
				;$oDebug.SendVariable ($VariableName, "<Array has too many dims>")
				_AU3COM_SendData_SendVariable($VariableName & "|" & "<Array has too many dims>")
		EndSelect
	Else
		;$oDebug.SendVariable ($VariableName, AutoIt_Debugger_ReturnVariableValue($VariableValue))
		_AU3COM_SendData_SendVariable($VariableName & "|" & AutoIt_Debugger_ReturnVariableValue($VariableName, $VariableValue))
	EndIf
EndFunc   ;==>AutoIt_Debugger_SendVariable


Func AutoIt_Debugger_SendConsoleWrite($OutputString)
	_AU3COM_SendData_ConsoleWrite($OutputString)
EndFunc   ;==>AutoIt_Debugger_SendConsoleWrite


Func AutoIt_Debugger_ReturnVariableValue($AutoIt_Debugger_VariableName, $AutoIt_Debugger_VariableValue)
	Local $AutoIt_Debugger_sRes = ""
	;$AutoIt_Debugger_VariableValue = Execute($AutoIt_Debugger_VariableName)
	If IsBool($AutoIt_Debugger_VariableValue) Then $AutoIt_Debugger_sRes &= $AutoIt_Debugger_VariableValue
	If IsFloat($AutoIt_Debugger_VariableValue) Then $AutoIt_Debugger_sRes &= $AutoIt_Debugger_VariableValue
	If IsInt($AutoIt_Debugger_VariableValue) Then $AutoIt_Debugger_sRes &= $AutoIt_Debugger_VariableValue
	;If IsNumber($AutoIt_Debugger_VariableValue) Then $AutoIt_Debugger_sRes &= $AutoIt_Debugger_VariableValue
	If IsString($AutoIt_Debugger_VariableValue) Then $AutoIt_Debugger_sRes &= StringLeft($AutoIt_Debugger_VariableValue, 256)
	If IsArray($AutoIt_Debugger_VariableValue) Then $AutoIt_Debugger_sRes &= $AutoIt_Debugger_VariableValue
	If IsObj($AutoIt_Debugger_VariableValue) Then $AutoIt_Debugger_sRes &= "<Object>" & $AutoIt_Debugger_VariableValue
	If IsBinary($AutoIt_Debugger_VariableValue) Then $AutoIt_Debugger_sRes &= "<Binary>" & $AutoIt_Debugger_VariableValue
	If IsHWnd($AutoIt_Debugger_VariableValue) Then $AutoIt_Debugger_sRes &= "<HWnd>" & $AutoIt_Debugger_VariableValue
	If IsKeyword($AutoIt_Debugger_VariableValue) Then $AutoIt_Debugger_sRes &= "<Keyword>" & $AutoIt_Debugger_VariableValue
	If IsDllStruct($AutoIt_Debugger_VariableValue) Then $AutoIt_Debugger_sRes &= "<DllStructure>" & $AutoIt_Debugger_VariableValue

	;If StringLeft($AutoIt_Debugger_VariableName, 1) <> "$" Then $AutoIt_Debugger_VariableName = "$" & $AutoIt_Debugger_VariableName
	;If Not IsDeclared(StringTrimLeft($AutoIt_Debugger_VariableName, 1)) Then $AutoIt_Debugger_sRes &= "<Undeclared>"

	Return $AutoIt_Debugger_sRes
EndFunc   ;==>AutoIt_Debugger_ReturnVariableValue


Func AutoIt_Debugger_GetVariableFromEvent($VariableName, ByRef $Variable, $AutoItDebugger_ArrayIndexString, $VariableValue)
	;MsgBox(0, "_AutoIt Debugger Include", "Entered 'AutoIt_Debugger_GetVariableFromEvent'")

	Local $iNumberOfDims
	Local $iDimXIndex
	Local $iDimYIndex
	Local $iDimZIndex
	Local $ArrayIndexArray

	If IsBool($Variable) Or IsFloat($Variable) Or IsInt($Variable) Or IsNumber($Variable) Or IsString($Variable) Then
		$Variable = $VariableValue
		;MsgBox(0, "_AutoIt Debugger Include", "New value of '" & $VariableName & " is '" & $Variable & "'")
	ElseIf IsArray($Variable) Then
		;Extract the array section, split by |s
		$ArrayIndexArray = StringSplit($AutoItDebugger_ArrayIndexString, "|")

		;Find the number of dimensions
		$iNumberOfDims = $ArrayIndexArray[0]
		Select
			Case $iNumberOfDims = 1
				;Set the value based on the array index
				$Variable[$ArrayIndexArray[1]] = $VariableValue

			Case $iNumberOfDims = 2
				;Set the value based on the array index
				$Variable[$ArrayIndexArray[1]][$ArrayIndexArray[2]] = $VariableValue

			Case $iNumberOfDims = 3
				;Set the value based on the array index
				$Variable[$ArrayIndexArray[1]][$ArrayIndexArray[2]][$ArrayIndexArray[3]] = $VariableValue

			Case Else
				;Do nothing
		EndSelect

	ElseIf IsObj($Variable) Then
		;Do nothing
	ElseIf IsBinary($Variable) Then
		;Do nothing
	ElseIf IsHWnd($Variable) Then
		;Do nothing
	ElseIf IsKeyword($Variable) Then
		;Do nothing
	EndIf
EndFunc   ;==>AutoIt_Debugger_GetVariableFromEvent


; Message Handler
Func _GUIRegisterMsgProc($hWnd, $MsgID, $WParam, $LParam)
	If $MsgID = 0x004A Then ;Global Const $WM_COPYDATA = 0x004A

		; $LParam = Poiter to a COPYDATA Struct
		Local $STRUCTDEF_AU3MESSAGE = "char var1[256]"
		Local $STRUCTDEF_AU3MESSAGELEN = "dword var1"
		Local $StructDef_COPYDATA = "dword var1;dword var2;ptr var3"

		;Set a reference to the COPYDATA structure
		Local $vs_cds = DllStructCreate($StructDef_COPYDATA, $LParam)
		;Extract the command (the 1st element)
		Local $msgType = DllStructGetData($vs_cds, 1)

		;MsgBox(0, "AutoIt Debugger", "Command Received: " & $msgType)

		Select
			Case $msgType = 0

				;Log message
				;GUICtrlSetData($AutoItDebuggerCommandWindowListbox,_Now() & ": New variable")

				;Get the message length from the 2nd element
				Local $msglen1 = DllStructGetData($vs_cds, 2)
				Local $STRUCTDEF_AU3MESSAGE1 = "char var1[" & $msglen1 & "]"
				Local $vs_msg1 = DllStructCreate($STRUCTDEF_AU3MESSAGE1, DllStructGetData($vs_cds, 3))

				;Display what we have recived
				Local $MSGRECVD = DllStructGetData($vs_msg1, 1)
				;MsgBox(0, "Recver - Test String", $MSGRECVD)

				Local $iSpacePos
				$iSpacePos = StringInStr($MSGRECVD, " ")
				Dim $sChangedVariableName = StringLeft($MSGRECVD, $iSpacePos - 1)
				Dim $sChangedVariableValue = StringRight($MSGRECVD, StringLen($MSGRECVD) - $iSpacePos)

				;MsgBox(0, "Variable Name", "'" & $sChangedVariableName & "'")
				;MsgBox(0, "Variable Value", "'" & $sChangedVariableValue & "'")

				;Run change variable code
				AutoItDebuggerEvent_ChangeVariable($sChangedVariableName, $sChangedVariableValue)

			Case $msgType = 1
				$AutoItDebugger_Paused = 0

				;Log message
				;GUICtrlSetData($AutoItDebuggerCommandWindowListbox,_Now() & ": Removed Pause")

			Case $msgType = 2
				$AutoItDebugger_Quit = 1

				;Log message
				;GUICtrlSetData($AutoItDebuggerCommandWindowListbox, _Now() & ": Received Quit")

		EndSelect

	ElseIf $MsgID = 0x0010 Then ;=== We Recived a WM_CLOSE Message ;Global Const $WM_CLOSE = 0x0010
		Exit
	EndIf
EndFunc   ;==>_GUIRegisterMsgProc


Func _AU3COM_SendData($MessageType, $InfoToSend)
	Local $StructDef_COPYDATA = "dword var1;dword var2;ptr var3"
	Local $CDString = DllStructCreate("char var1[256];char var2[256]") ;the array to hold the string we are sending

	DllStructSetData($CDString, 1, $InfoToSend)
	Local $pCDString = DllStructGetPtr($CDString) ;the pointer to the string
	Local $vs_cds = DllStructCreate($StructDef_COPYDATA);create the message struct
	DllStructSetData($vs_cds, "var1", $MessageType)
	DllStructSetData($vs_cds, "var2", String(StringLen($InfoToSend)));tell the receiver the length of the string
	DllStructSetData($vs_cds, "var3", $pCDString) ;the pointer to the string
	Local $pStruct = DllStructGetPtr($vs_cds)

	AutoIt_Debugger_SendMessage(WinGetHandle("AutoIt Debugger - " & $AutoItDebuggerCommandWindowName), 0x004A, 0, $pStruct) ;Global Const $WM_COPYDATA = 0x004A

	$vs_cds = 0 ;free the struct
	$CDString = 0 ;free the struct

	Return 1
EndFunc   ;==>_AU3COM_SendData


Func _AU3COM_SendData_NewLine($InfoToSend)
	_AU3COM_SendData(1, $InfoToSend)
EndFunc   ;==>_AU3COM_SendData_NewLine


Func _AU3COM_SendData_FinishedLine($InfoToSend)
	_AU3COM_SendData(2, $InfoToSend)
EndFunc   ;==>_AU3COM_SendData_FinishedLine


Func _AU3COM_SendData_SendVariable($InfoToSend)
	_AU3COM_SendData(3, $InfoToSend)
EndFunc   ;==>_AU3COM_SendData_SendVariable


Func _AU3COM_SendData_LoadFile($InfoToSend)
	_AU3COM_SendData(4, $InfoToSend)
EndFunc   ;==>_AU3COM_SendData_LoadFile


Func _AU3COM_SendData_ScriptFinished($InfoToSend)
	_AU3COM_SendData(5, $InfoToSend)
EndFunc   ;==>_AU3COM_SendData_ScriptFinished


Func _AU3COM_SendData_DebugFile($InfoToSend)
	_AU3COM_SendData(6, $InfoToSend)
EndFunc   ;==>_AU3COM_SendData_DebugFile

Func _AU3COM_SendData_ConsoleWrite($InfoToSend)
	_AU3COM_SendData(7, $InfoToSend)
EndFunc   ;==>_AU3COM_SendData_ConsoleWrite

; #FUNCTION# ====================================================================================================================
; Name...........: _SendMessage
; Description ...: Wrapper for commonly used Dll Call
; Syntax.........: _SendMessage($hWnd, $iMsg[, $wParam = 0[, $lParam = 0[, $iReturn = 0[, $wParamType = "wparam"[, $lParamType = "lparam"[, $sReturnType = "lresult"]]]]]])
; Parameters ....: $hWnd       - Window/control handle
;                  $iMsg       - Message to send to control (number)
;                  $wParam     - Specifies additional message-specific information
;                  $lParam     - Specifies additional message-specific information
;                  $iReturn    - What to return:
;                  |0 - Return value from dll call
;                  |1 - $ihWnd
;                  |2 - $iMsg
;                  |3 - $wParam
;                  |4 - $lParam
;                  |<0 or > 4 - array same as dllcall
;                  $wParamType - See DllCall in Related
;                  $lParamType - See DllCall in Related
;                  $sReturnType - See DllCall in Related
; Return values .: Success      - User selected value from the DllCall() result
;                  Failure      - @error is set
; Author ........: Valik
; Modified.......: Gary Frost (GaryFrost) aka gafrost
; Remarks .......:
; Related .......: _SendMessage, DllCall
; Link ..........:
; Example .......: Yes
; ===============================================================================================================================
Func AutoIt_Debugger_SendMessage($hWnd, $iMsg, $WParam = 0, $LParam = 0, $iReturn = 0, $wParamType = "wparam", $lParamType = "lparam", $sReturnType = "lresult")
	Local $aResult = DllCall("user32.dll", $sReturnType, "SendMessageW", "hwnd", $hWnd, "uint", $iMsg, $wParamType, $WParam, $lParamType, $LParam)
	If @error Then Return SetError(@error, @extended, "")
	If $iReturn >= 0 And $iReturn <= 4 Then Return $aResult[$iReturn]
	Return $aResult
EndFunc   ;==>AutoIt_Debugger_SendMessage

