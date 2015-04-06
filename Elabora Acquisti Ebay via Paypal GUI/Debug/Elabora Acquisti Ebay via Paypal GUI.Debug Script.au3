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
Global $s_ambiente
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 24, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ambiente")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ambiente", $s_ambiente))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 25, False))
Global $s_versione
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 25, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_versione")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_versione", $s_versione))


SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 27, False))
$s_provenienza = "PAYPAL"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 27, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_provenienza")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_provenienza", $s_provenienza))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 28, False))
$s_ambiente = "PRODUZIONE"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 28, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ambiente")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ambiente", $s_ambiente))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 29, False))
$s_versione = "versione 0.97"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 29, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_versione")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_versione", $s_versione))


SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 31, False))
GUICtrlSetState($hPaypal_Image, $GUI_SHOW)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 31, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("hPaypal_Image")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$hPaypal_Image", $hPaypal_Image))
If SetError(@error, @extended, IsDeclared("GUI_SHOW")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$GUI_SHOW", $GUI_SHOW))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 32, False))
GUICtrlSetState($hProduzione_Image, $GUI_SHOW)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 32, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("hProduzione_Image")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$hProduzione_Image", $hProduzione_Image))
If SetError(@error, @extended, IsDeclared("GUI_SHOW")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$GUI_SHOW", $GUI_SHOW))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 33, False))
GUICtrlSetState($hTest_Image, $GUI_HIDE)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 33, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("hTest_Image")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$hTest_Image", $hTest_Image))
If SetError(@error, @extended, IsDeclared("GUI_HIDE")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$GUI_HIDE", $GUI_HIDE))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 34, False))
GUICtrlSetData($hVersione, $s_versione)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 34, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("hVersione")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$hVersione", $hVersione))
If SetError(@error, @extended, IsDeclared("s_versione")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_versione", $s_versione))

;Options

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 37, False))
Opt("GUIOnEventMode", 1) ;Enable OnEvent functions notifications.
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 37, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 38, False))
GUISetState(@SW_SHOW, $GUI_Form) ;Shows a previously hidden window form
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 38, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("GUI_Form")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$GUI_Form", $GUI_Form))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 39, False))
GUISetOnEvent($GUI_EVENT_CLOSE, "Chiudi_click", $GUI_Form) ;dialog box being closed (either by defined button or system menu).
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 39, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("GUI_EVENT_CLOSE")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$GUI_EVENT_CLOSE", $GUI_EVENT_CLOSE))
If SetError(@error, @extended, IsDeclared("GUI_Form")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$GUI_Form", $GUI_Form))


SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 41, False))
While 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 41, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 42, False))
	Sleep(20)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 42, False, @error, @extended))
	

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 44, False))
WEnd
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 44, False, @error, @extended))


SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 46, False))
Func Chiudi_click() ; se cliccato il tasto "chiudi"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 46, False, @error, @extended))


SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 48, False))
	Exit
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 48, False, @error, @extended))
EndFunc   ;==>Chiudi_click


SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 51, False))
Func Produzione_click()
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 51, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 52, False))
	If(GUICtrlRead($hProduzione) = $GUI_CHECKED) Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 52, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("hProduzione")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$hProduzione", $hProduzione))
If SetError(@error, @extended, IsDeclared("GUI_CHECKED")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$GUI_CHECKED", $GUI_CHECKED))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 53, False))
		$s_ambiente = "PRODUZIONE"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 53, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ambiente")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ambiente", $s_ambiente))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 54, False))
		GUICtrlSetState($hProduzione_Image, $GUI_SHOW)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 54, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("hProduzione_Image")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$hProduzione_Image", $hProduzione_Image))
If SetError(@error, @extended, IsDeclared("GUI_SHOW")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$GUI_SHOW", $GUI_SHOW))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 55, False))
		GUICtrlSetState($hTest_Image, $GUI_HIDE)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 55, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("hTest_Image")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$hTest_Image", $hTest_Image))
If SetError(@error, @extended, IsDeclared("GUI_HIDE")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$GUI_HIDE", $GUI_HIDE))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 56, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 56, False, @error, @extended))
EndFunc   ;==>Produzione_click


SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 59, False))
Func Test_click()
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 59, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 60, False))
	If(GUICtrlRead($hTest) = $GUI_CHECKED) Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 60, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("hTest")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$hTest", $hTest))
If SetError(@error, @extended, IsDeclared("GUI_CHECKED")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$GUI_CHECKED", $GUI_CHECKED))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 61, False))
		$s_ambiente = "TEST"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 61, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ambiente")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ambiente", $s_ambiente))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 62, False))
		GUICtrlSetState($hProduzione_Image, $GUI_HIDE)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 62, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("hProduzione_Image")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$hProduzione_Image", $hProduzione_Image))
If SetError(@error, @extended, IsDeclared("GUI_HIDE")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$GUI_HIDE", $GUI_HIDE))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 63, False))
		GUICtrlSetState($hTest_Image, $GUI_SHOW)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 63, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("hTest_Image")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$hTest_Image", $hTest_Image))
If SetError(@error, @extended, IsDeclared("GUI_SHOW")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$GUI_SHOW", $GUI_SHOW))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 64, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 64, False, @error, @extended))
EndFunc   ;==>Test_click


SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 67, False))
Func Test_Banca_click()
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 67, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 68, False))
	If(GUICtrlRead($hTest_Banca) = $GUI_CHECKED) Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 68, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("hTest_Banca")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$hTest_Banca", $hTest_Banca))
If SetError(@error, @extended, IsDeclared("GUI_CHECKED")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$GUI_CHECKED", $GUI_CHECKED))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 69, False))
		$s_ambiente = "TESTBANCA"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 69, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ambiente")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ambiente", $s_ambiente))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 70, False))
		GUICtrlSetState($hProduzione_Image, $GUI_HIDE)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 70, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("hProduzione_Image")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$hProduzione_Image", $hProduzione_Image))
If SetError(@error, @extended, IsDeclared("GUI_HIDE")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$GUI_HIDE", $GUI_HIDE))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 71, False))
		GUICtrlSetState($hTest_Image, $GUI_SHOW)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 71, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("hTest_Image")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$hTest_Image", $hTest_Image))
If SetError(@error, @extended, IsDeclared("GUI_SHOW")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$GUI_SHOW", $GUI_SHOW))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 72, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 72, False, @error, @extended))
EndFunc   ;==>Test_Banca_click


SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 75, False))
Func Paypal_click()
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 75, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 76, False))
	If(GUICtrlRead($hPaypal) = $GUI_CHECKED) Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 76, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("hPaypal")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$hPaypal", $hPaypal))
If SetError(@error, @extended, IsDeclared("GUI_CHECKED")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$GUI_CHECKED", $GUI_CHECKED))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 77, False))
		$s_provenienza = "PAYPAL"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 77, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_provenienza")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_provenienza", $s_provenienza))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 78, False))
		GUICtrlSetState($hPaypal_Image, $GUI_SHOW)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 78, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("hPaypal_Image")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$hPaypal_Image", $hPaypal_Image))
If SetError(@error, @extended, IsDeclared("GUI_SHOW")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$GUI_SHOW", $GUI_SHOW))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 79, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 79, False, @error, @extended))
EndFunc   ;==>Paypal_click


SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 82, False))
Func Prosegui_click()
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 82, False, @error, @extended))
	Select
		Case $s_provenienza = "PAYPAL"

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 85, False))
			ConsoleWrite($s_provenienza & @CRLF)
SetError(@error, @extended, AutoIt_Debugger_SendConsoleWrite($s_provenienza & @CRLF))
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 85, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_provenienza")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_provenienza", $s_provenienza))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 86, False))
			ConsoleWrite($s_ambiente & @CRLF)
SetError(@error, @extended, AutoIt_Debugger_SendConsoleWrite($s_ambiente & @CRLF))
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 86, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ambiente")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ambiente", $s_ambiente))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 87, False))
			Tratta_Paypal($GUI_Form)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 87, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("GUI_Form")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$GUI_Form", $GUI_Form))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 88, False))
		Case Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 88, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 89, False))
			Exit
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 89, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 90, False))
	EndSelect
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 90, False, @error, @extended))
EndFunc   ;==>Prosegui_click


SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 93, False))
Func Tratta_Paypal($GUI_Form)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 93, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("GUI_Form")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$GUI_Form", $GUI_Form))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 94, False))
	Local $o_Con, $o_Rs
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 94, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_Con")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_Con", $o_Con))
If SetError(@error, @extended, IsDeclared("o_Rs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_Rs", $o_Rs))
	;DATA========================================================
	Select
		Case $s_ambiente = "TEST"

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 98, False))
			Local $s_dbname = "h:\archivi_test\bilancio.accdb"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 98, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_dbname")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_dbname", $s_dbname))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 99, False))
		Case $s_ambiente = "PRODUZIONE"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 99, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ambiente")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ambiente", $s_ambiente))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 100, False))
			Local $s_dbname = "G:\ilgrandeblek\archivi\bilancio.accdb"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 100, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_dbname")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_dbname", $s_dbname))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 101, False))
		Case $s_ambiente = "TESTBANCA"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 101, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ambiente")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ambiente", $s_ambiente))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 102, False))
			Local $s_dbname = "c:\users\s522733\documents\work\archivi\bilancio.accdb"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 102, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_dbname")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_dbname", $s_dbname))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 103, False))
		Case Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 103, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 104, False))
			Exit
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 104, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 105, False))
	EndSelect
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 105, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 106, False))
	Local $s_Tablename = "Q_ACQUISTI"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 106, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_Tablename")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Tablename", $s_Tablename))
	;CONNECT=====================================================

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 108, False))
	AccessConnectConn($s_dbname, $o_Con, 0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 108, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_dbname")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_dbname", $s_dbname))
If SetError(@error, @extended, IsDeclared("o_Con")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_Con", $o_Con))


SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 110, False))
	Global $rKey = "HKCU\Control Panel\International", $sDecimal = RegRead($rKey, "sDecimal"), $sThousands = RegRead($rKey, "sThousand") ; _StringAddThousandsSep
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 110, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("rKey")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$rKey", $rKey))
If SetError(@error, @extended, IsDeclared("sDecimal")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sDecimal", $sDecimal))
If SetError(@error, @extended, IsDeclared("rKey")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$rKey", $rKey))
If SetError(@error, @extended, IsDeclared("sThousands")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sThousands", $sThousands))
If SetError(@error, @extended, IsDeclared("rKey")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$rKey", $rKey))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 111, False))
	Global $ItemArray, $ItemLines, $HowManyColumns, $OldProgress, $List, $Progress
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 111, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))
If SetError(@error, @extended, IsDeclared("ItemLines")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemLines", $ItemLines))
If SetError(@error, @extended, IsDeclared("HowManyColumns")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$HowManyColumns", $HowManyColumns))
If SetError(@error, @extended, IsDeclared("OldProgress")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$OldProgress", $OldProgress))
If SetError(@error, @extended, IsDeclared("List")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$List", $List))
If SetError(@error, @extended, IsDeclared("Progress")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$Progress", $Progress))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 112, False))
	Global $SetColumnWidths = True ;			Sets optimum column widths automatically, roughly doubles total time
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 112, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("SetColumnWidths")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$SetColumnWidths", $SetColumnWidths))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 113, False))
	Global $Delimiter ;							Parts of europe typically default to semicolon, thanks to UEZ!
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 113, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("Delimiter")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$Delimiter", $Delimiter))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 114, False))
	Global $Font = "Comic Sans MS", $Underline = False, $UnderValue
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 114, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("Font")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$Font", $Font))
If SetError(@error, @extended, IsDeclared("Underline")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$Underline", $Underline))
If SetError(@error, @extended, IsDeclared("UnderValue")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$UnderValue", $UnderValue))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 115, False))
	Global $FontSize = 9, $FontWeight = 400 ;	Do NOT change these values
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 115, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("FontSize")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$FontSize", $FontSize))
If SetError(@error, @extended, IsDeclared("FontWeight")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$FontWeight", $FontWeight))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 116, False))
	If $Underline Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 116, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("Underline")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$Underline", $Underline))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 117, False))
		$UnderValue = 4
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 117, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("UnderValue")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$UnderValue", $UnderValue))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 118, False))
	Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 118, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 119, False))
		$UnderValue = 0
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 119, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("UnderValue")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$UnderValue", $UnderValue))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 120, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 120, False, @error, @extended))


SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 122, False))
	$File = FileOpenDialog("Select a TXT File", @DesktopDir, "TAB Files (*.txt)")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 122, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("File")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$File", $File))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 123, False))
	$Input = FileRead($File)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 123, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("Input")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$Input", $Input))
If SetError(@error, @extended, IsDeclared("File")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$File", $File))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 124, False))
	$Delimiter = @TAB
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 124, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("Delimiter")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$Delimiter", $Delimiter))


SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 126, False))
	$ItemArray = _CSVSplit($Input, $Delimiter)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 126, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))
If SetError(@error, @extended, IsDeclared("Input")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$Input", $Input))
If SetError(@error, @extended, IsDeclared("Delimiter")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$Delimiter", $Delimiter))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 127, False))
	_ArrayDisplay($ItemArray)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 127, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 128, False))
	$ItemLines = UBound($ItemArray)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 128, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("ItemLines")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemLines", $ItemLines))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 129, False))
	$HowManyColumns = UBound($ItemArray, 2)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 129, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("HowManyColumns")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$HowManyColumns", $HowManyColumns))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))
;~ ======================
	
	; le colonne possono variare come ordine
	; determino i vari indici per le colonne utilizzate
	; sulla base delle intestazioni presenti in riga 1
	; attenzione la "Data" e' l'unica intstazione non preceduto da uno spazio

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 136, False))
	$iIndex_Data = _ArraySearch($ItemArray, "Data", 0, 0, 0, 0, 1, 0, True)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 136, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("iIndex_Data")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iIndex_Data", $iIndex_Data))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 137, False))
	$iIndex_Nome = _ArraySearch($ItemArray, " Nome", 0, 0, 0, 0, 1, 0, True)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 137, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("iIndex_Nome")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iIndex_Nome", $iIndex_Nome))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 138, False))
	$iIndex_Tipo = _ArraySearch($ItemArray, " Tipo", 0, 0, 0, 0, 1, 0, True)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 138, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("iIndex_Tipo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iIndex_Tipo", $iIndex_Tipo))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 139, False))
	$iIndex_Codice_oggetto = _ArraySearch($ItemArray, " Codice oggetto", 0, 0, 0, 0, 1, 0, True)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 139, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("iIndex_Codice_oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iIndex_Codice_oggetto", $iIndex_Codice_oggetto))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 140, False))
	$iIndex_Tariffa = _ArraySearch($ItemArray, " Tariffa", 0, 0, 0, 0, 1, 0, True)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 140, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("iIndex_Tariffa")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iIndex_Tariffa", $iIndex_Tariffa))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 141, False))
	$iIndex_Valuta = _ArraySearch($ItemArray, " Valuta", 0, 0, 0, 0, 1, 0, True)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 141, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("iIndex_Valuta")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iIndex_Valuta", $iIndex_Valuta))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 142, False))
	$iIndex_Netto = _ArraySearch($ItemArray, " Netto", 0, 0, 0, 0, 1, 0, True)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 142, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("iIndex_Netto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iIndex_Netto", $iIndex_Netto))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 143, False))
	$iIndex_Codice_transazione_di_riferimento = _ArraySearch($ItemArray, " Codice transazione di riferimento", 0, 0, 0, 0, 1, 0, True)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 143, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("iIndex_Codice_transazione_di_riferimento")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iIndex_Codice_transazione_di_riferimento", $iIndex_Codice_transazione_di_riferimento))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 144, False))
	$iIndex_Codice_transazione = _ArraySearch($ItemArray, " Codice transazione", 0, 0, 0, 0, 1, 0, True)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 144, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("iIndex_Codice_transazione")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iIndex_Codice_transazione", $iIndex_Codice_transazione))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 145, False))
	$iIndex_Indirizzo_email = _ArraySearch($ItemArray, " Indirizzo email destinatario", 0, 0, 0, 0, 1, 0, True)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 145, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("iIndex_Indirizzo_email")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iIndex_Indirizzo_email", $iIndex_Indirizzo_email))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 146, False))
	$iIndex_URL_oggetto = _ArraySearch($ItemArray, " URL oggetto", 0, 0, 0, 0, 1, 0, True)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 146, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("iIndex_URL_oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iIndex_URL_oggetto", $iIndex_URL_oggetto))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 147, False))
	$iIndex_Titolo_oggetto = _ArraySearch($ItemArray, " Titolo oggetto", 0, 0, 0, 0, 1, 0, True)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 147, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("iIndex_Titolo_oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iIndex_Titolo_oggetto", $iIndex_Titolo_oggetto))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))


SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 149, False))
	Global $i_sw_PBL
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 149, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_sw_PBL")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_sw_PBL", $i_sw_PBL))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 150, False))
	Global $i_sw_EUR
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 150, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_sw_EUR")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_sw_EUR", $i_sw_EUR))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 151, False))
	Global $i_sw_acq
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 151, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_sw_acq")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_sw_acq", $i_sw_acq))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 152, False))
	Global $s_work_ID_transazione
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 152, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_ID_transazione")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_ID_transazione", $s_work_ID_transazione))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 153, False))
	Global $s_work_ID_transazione_di_riferimento
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 153, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_ID_transazione_di_riferimento")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_ID_transazione_di_riferimento", $s_work_ID_transazione_di_riferimento))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 154, False))
	Global $s_work_Data
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 154, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_Data")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_Data", $s_work_Data))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 155, False))
	Global $s_work_Nome
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 155, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_Nome")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_Nome", $s_work_Nome))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 156, False))
	Global $s_work_Email
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 156, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_Email")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_Email", $s_work_Email))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 157, False))
	Global $s_work_URL_Oggetto
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 157, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_URL_Oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_URL_Oggetto", $s_work_URL_Oggetto))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 158, False))
	Global $s_work_Numero_oggetto
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 158, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_Numero_oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_Numero_oggetto", $s_work_Numero_oggetto))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 159, False))
	Global $s_work_Campo_opzionale
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 159, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_Campo_opzionale")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_Campo_opzionale", $s_work_Campo_opzionale))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 160, False))
	Global $s_work_Valuta
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 160, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_Valuta")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_Valuta", $s_work_Valuta))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 161, False))
	Global $s_work_Importo_netto
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 161, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_Importo_netto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_Importo_netto", $s_work_Importo_netto))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 162, False))
	Global $s_ACQUISTI_ID_ACQ, $s_ACQUISTI_ANNO_CONTABILE, $s_ACQUISTI_DOC_DI_CARICO_NUMERO
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 162, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_ID_ACQ")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_ID_ACQ", $s_ACQUISTI_ID_ACQ))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_ANNO_CONTABILE")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_ANNO_CONTABILE", $s_ACQUISTI_ANNO_CONTABILE))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_DOC_DI_CARICO_NUMERO")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_DOC_DI_CARICO_NUMERO", $s_ACQUISTI_DOC_DI_CARICO_NUMERO))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 163, False))
	Global $s_ACQUISTI_DOC_DI_CARICO_DATA, $s_ACQUISTI_DESCRIZIONE, $s_ACQUISTI_NUMERO_PEZZI
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 163, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_DOC_DI_CARICO_DATA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_DOC_DI_CARICO_DATA", $s_ACQUISTI_DOC_DI_CARICO_DATA))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_DESCRIZIONE")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_DESCRIZIONE", $s_ACQUISTI_DESCRIZIONE))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_NUMERO_PEZZI")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_NUMERO_PEZZI", $s_ACQUISTI_NUMERO_PEZZI))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 164, False))
	Global $s_ACQUISTI_DATA_ACQUISTO, $s_ACQUISTI_FORNITORE, $s_ACQUISTI_VALUTA
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 164, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_DATA_ACQUISTO")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_DATA_ACQUISTO", $s_ACQUISTI_DATA_ACQUISTO))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_FORNITORE")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_FORNITORE", $s_ACQUISTI_FORNITORE))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_VALUTA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_VALUTA", $s_ACQUISTI_VALUTA))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 165, False))
	Global $s_ACQUISTI_IMPORTO_ACQ_VALUTA, $s_ACQUISTI_SEH_ACQ_VALUTA, $s_ACQUISTI_CTV_ACQ_EURO, $s_ACQUISTI_IVA_DAZIO_ACQ_EURO
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 165, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_IMPORTO_ACQ_VALUTA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_IMPORTO_ACQ_VALUTA", $s_ACQUISTI_IMPORTO_ACQ_VALUTA))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_SEH_ACQ_VALUTA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_SEH_ACQ_VALUTA", $s_ACQUISTI_SEH_ACQ_VALUTA))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_CTV_ACQ_EURO")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_CTV_ACQ_EURO", $s_ACQUISTI_CTV_ACQ_EURO))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_IVA_DAZIO_ACQ_EURO")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_IVA_DAZIO_ACQ_EURO", $s_ACQUISTI_IVA_DAZIO_ACQ_EURO))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 166, False))
	Global $s_ACQUISTI_CODICE_UNIVOCO_PAYPAL, $s_ACQUISTI_DATA_PAGAMENTO, $s_ACQUISTI_PAGAMENTO_A_MEZZO
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 166, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_CODICE_UNIVOCO_PAYPAL")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_CODICE_UNIVOCO_PAYPAL", $s_ACQUISTI_CODICE_UNIVOCO_PAYPAL))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_DATA_PAGAMENTO")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_DATA_PAGAMENTO", $s_ACQUISTI_DATA_PAGAMENTO))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_PAGAMENTO_A_MEZZO")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_PAGAMENTO_A_MEZZO", $s_ACQUISTI_PAGAMENTO_A_MEZZO))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 167, False))
	Global $s_ACQUISTI_DESCRIZIONE_VALUTA
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 167, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_DESCRIZIONE_VALUTA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_DESCRIZIONE_VALUTA", $s_ACQUISTI_DESCRIZIONE_VALUTA))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 168, False))
	Global $s_CALCOLATO_TOTALE_ACQ_VALUTA
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 168, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_CALCOLATO_TOTALE_ACQ_VALUTA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_CALCOLATO_TOTALE_ACQ_VALUTA", $s_CALCOLATO_TOTALE_ACQ_VALUTA))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 169, False))
	Global $s_CALCOLATO_TOTALE_ACQ_EURO
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 169, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_CALCOLATO_TOTALE_ACQ_EURO")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_CALCOLATO_TOTALE_ACQ_EURO", $s_CALCOLATO_TOTALE_ACQ_EURO))


SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 171, False))
	$s_ACQUISTI_SEH_ACQ_VALUTA = "0,00"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 171, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_SEH_ACQ_VALUTA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_SEH_ACQ_VALUTA", $s_ACQUISTI_SEH_ACQ_VALUTA))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 172, False))
	$s_CALCOLATO_TOTALE_ACQ_VALUTA = "0,00"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 172, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_CALCOLATO_TOTALE_ACQ_VALUTA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_CALCOLATO_TOTALE_ACQ_VALUTA", $s_CALCOLATO_TOTALE_ACQ_VALUTA))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 173, False))
	$s_CALCOLATO_TOTALE_ACQ_EURO = "0,00"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 173, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_CALCOLATO_TOTALE_ACQ_EURO")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_CALCOLATO_TOTALE_ACQ_EURO", $s_CALCOLATO_TOTALE_ACQ_EURO))
	

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 175, False))
	Local $a_riepilogo_acquisti[20]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 175, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("a_riepilogo_acquisti")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$a_riepilogo_acquisti", $a_riepilogo_acquisti))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 176, False))
	Local $i_contatore_acquisti
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 176, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_contatore_acquisti")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_contatore_acquisti", $i_contatore_acquisti))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 177, False))
	$i_contatore_acquisti = 0
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 177, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_contatore_acquisti")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_contatore_acquisti", $i_contatore_acquisti))
	
	; determino se esiste almeno un record relativo a pagamenti
	; inviati per acquisto merce pagata con paypal
	; il file cvs scaricato � con i dati pi� recenti in alto
	; per cui lo leggo in senso inverso

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 183, False))
	Local $s_work, $i_row, $i_max_row
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 183, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work", $s_work))
If SetError(@error, @extended, IsDeclared("i_row")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_row", $i_row))
If SetError(@error, @extended, IsDeclared("i_max_row")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_max_row", $i_max_row))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 184, False))
	Local $i_almeno1, $s_work_tipo, $s_work_cod_oggetto, $s_work_fornitore
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 184, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_almeno1")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_almeno1", $i_almeno1))
If SetError(@error, @extended, IsDeclared("s_work_tipo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_tipo", $s_work_tipo))
If SetError(@error, @extended, IsDeclared("s_work_cod_oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_cod_oggetto", $s_work_cod_oggetto))
If SetError(@error, @extended, IsDeclared("s_work_fornitore")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_fornitore", $s_work_fornitore))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 185, False))
	$i_max_row = $ItemLines - 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 185, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_max_row")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_max_row", $i_max_row))
If SetError(@error, @extended, IsDeclared("ItemLines")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemLines", $ItemLines))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 186, False))
	$i_almeno1 = 0
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 186, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_almeno1")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_almeno1", $i_almeno1))
	

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 188, False))
	For $i_row = $i_max_row To 1 Step -1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 188, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_row")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_row", $i_row))
If SetError(@error, @extended, IsDeclared("i_max_row")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_max_row", $i_max_row))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 189, False))
		$s_works_tipo = $ItemArray[$i_row][$iIndex_Tipo]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 189, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_works_tipo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_works_tipo", $s_works_tipo))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))
If SetError(@error, @extended, IsDeclared("i_row")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_row", $i_row))
If SetError(@error, @extended, IsDeclared("iIndex_Tipo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iIndex_Tipo", $iIndex_Tipo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 190, False))
		$s_work_cod_oggetto = $ItemArray[$i_row][$iIndex_Codice_oggetto]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 190, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_cod_oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_cod_oggetto", $s_work_cod_oggetto))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))
If SetError(@error, @extended, IsDeclared("i_row")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_row", $i_row))
If SetError(@error, @extended, IsDeclared("iIndex_Codice_oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iIndex_Codice_oggetto", $iIndex_Codice_oggetto))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 191, False))
		$s_work_fornitore = $ItemArray[$i_row][$iIndex_Nome]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 191, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_fornitore")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_fornitore", $s_work_fornitore))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))
If SetError(@error, @extended, IsDeclared("i_row")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_row", $i_row))
If SetError(@error, @extended, IsDeclared("iIndex_Nome")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iIndex_Nome", $iIndex_Nome))
		Select
			Case $s_works_tipo = "Pagamento express inviato"

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 194, False))
				If $s_work_cod_oggetto <> "" Then ; e' un acquisto ebay
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 194, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_cod_oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_cod_oggetto", $s_work_cod_oggetto))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 195, False))
					$i_almeno1 = 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 195, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_almeno1")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_almeno1", $i_almeno1))
;~ 					ExitLoop
					; vedo se il fornitore e' censito

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 198, False))
					$s_work_fornitore = "'" & $s_work_fornitore & "'"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 198, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_fornitore")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_fornitore", $s_work_fornitore))
If SetError(@error, @extended, IsDeclared("s_work_fornitore")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_fornitore", $s_work_fornitore))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 199, False))
					$s_query = "SELECT * FROM FORNITORI WHERE COD_FORNITORE =" & $s_work_fornitore & ""
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 199, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_query")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_query", $s_query))
If SetError(@error, @extended, IsDeclared("s_work_fornitore")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_fornitore", $s_work_fornitore))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 200, False))
					$s_ACQUISTI_FORNITORE = RicercaID_Fornitore($s_dbname, $s_query, $o_Con)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 200, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_FORNITORE")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_FORNITORE", $s_ACQUISTI_FORNITORE))
If SetError(@error, @extended, IsDeclared("s_dbname")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_dbname", $s_dbname))
If SetError(@error, @extended, IsDeclared("s_query")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_query", $s_query))
If SetError(@error, @extended, IsDeclared("o_Con")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_Con", $o_Con))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 201, False))
					if @error Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 201, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 202, False))
						$s_work_Email = $ItemArray[$i_row][$iIndex_Indirizzo_email]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 202, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_Email")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_Email", $s_work_Email))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))
If SetError(@error, @extended, IsDeclared("i_row")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_row", $i_row))
If SetError(@error, @extended, IsDeclared("iIndex_Indirizzo_email")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iIndex_Indirizzo_email", $iIndex_Indirizzo_email))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 203, False))
						GUICtrlSetData($h_FORNITORE_DATA, $ItemArray[$i_row][$iIndex_Nome])
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 203, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("h_FORNITORE_DATA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$h_FORNITORE_DATA", $h_FORNITORE_DATA))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))
If SetError(@error, @extended, IsDeclared("i_row")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_row", $i_row))
If SetError(@error, @extended, IsDeclared("iIndex_Nome")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iIndex_Nome", $iIndex_Nome))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 204, False))
						GUICtrlSetColor($h_FORNITORE_DATA, "0xFF0000")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 204, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("h_FORNITORE_DATA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$h_FORNITORE_DATA", $h_FORNITORE_DATA))
						; Switch to GetMessage mode

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 206, False))
						Local $iOnEventMode = Opt("GUIOnEventMode", 0), $iMsg
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 206, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("iOnEventMode")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iOnEventMode", $iOnEventMode))
If SetError(@error, @extended, IsDeclared("iMsg")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iMsg", $iMsg))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 207, False))
						While 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 207, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 208, False))
							$iMsg = GUIGetMsg() ; Variable needed to check which "Copy" button was pressed
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 208, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("iMsg")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iMsg", $iMsg))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 209, False))
							Switch $iMsg
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 209, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("iMsg")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iMsg", $iMsg))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 210, False))
								Case $hProsegui
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 210, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("hProsegui")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$hProsegui", $hProsegui))
;~ 								ExitLoop

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 212, False))
								Case $h_Apri_URL
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 212, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("h_Apri_URL")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$h_Apri_URL", $h_Apri_URL))
;~ 								ExitLoop

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 214, False))
								Case $hSalta
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 214, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("hSalta")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$hSalta", $hSalta))
;~ 								ExitLoop

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 216, False))
								Case $hChiudi
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 216, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("hChiudi")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$hChiudi", $hChiudi))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 217, False))
									Exit
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 217, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 218, False))
								Case $hCopia
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 218, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("hCopia")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$hCopia", $hCopia))
;~ 								ExitLoop

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 220, False))
								Case $hInserisci
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 220, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("hInserisci")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$hInserisci", $hInserisci))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 221, False))
									$s_query = "SELECT * FROM FORNITORI"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 221, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_query")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_query", $s_query))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 222, False))
									$s_work_nome = StringReplace($s_work_fornitore, "'", "")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 222, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_nome")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_nome", $s_work_nome))
If SetError(@error, @extended, IsDeclared("s_work_fornitore")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_fornitore", $s_work_fornitore))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 223, False))
									$i_cod_ritorno = RegistraFornitore($s_dbname, $s_query, $o_Con)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 223, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_cod_ritorno")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_cod_ritorno", $i_cod_ritorno))
If SetError(@error, @extended, IsDeclared("s_dbname")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_dbname", $s_dbname))
If SetError(@error, @extended, IsDeclared("s_query")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_query", $s_query))
If SetError(@error, @extended, IsDeclared("o_Con")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_Con", $o_Con))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 224, False))
									If Not $i_cod_ritorno Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 224, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_cod_ritorno")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_cod_ritorno", $i_cod_ritorno))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 225, False))
										$sMsg = "Errore in fase registrazione fornitore! Elaborazione abortita"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 225, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("sMsg")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sMsg", $sMsg))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 226, False))
										$iRetValue = _ExtMsgBox($EMB_ICONSTOP, "OK", "Errore", $sMsg)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 226, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("iRetValue")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iRetValue", $iRetValue))
If SetError(@error, @extended, IsDeclared("EMB_ICONSTOP")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$EMB_ICONSTOP", $EMB_ICONSTOP))
If SetError(@error, @extended, IsDeclared("sMsg")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sMsg", $sMsg))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 227, False))
										Exit
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 227, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 228, False))
									EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 228, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 229, False))
									If $i_cod_ritorno Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 229, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_cod_ritorno")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_cod_ritorno", $i_cod_ritorno))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 230, False))
										$sMsg = "Nuovo fornitore censito."
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 230, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("sMsg")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sMsg", $sMsg))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 231, False))
										$iRetValue = _ExtMsgBox($EMB_ICONINFO, "OK", "Avviso", $sMsg)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 231, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("iRetValue")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iRetValue", $iRetValue))
If SetError(@error, @extended, IsDeclared("EMB_ICONINFO")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$EMB_ICONINFO", $EMB_ICONINFO))
If SetError(@error, @extended, IsDeclared("sMsg")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sMsg", $sMsg))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 232, False))
										ExitLoop
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 232, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 233, False))
									EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 233, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 234, False))
							EndSwitch
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 234, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 235, False))
						WEnd
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 235, False, @error, @extended))
						; Clear up

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 237, False))
						Opt("GUIOnEventMode", 1) ; Reset original GUI mode
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 237, False, @error, @extended))
						

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 239, False))
					EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 239, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 240, False))
				EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 240, False, @error, @extended))


SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 242, False))
		EndSelect
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 242, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 243, False))
	Next
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 243, False, @error, @extended))
	

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 245, False))
	If $i_almeno1 Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 245, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_almeno1")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_almeno1", $i_almeno1))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 246, False))
	Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 246, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 247, False))
		$sMsg = "Non ci sono acquisti da registrare! Elaborazione abortita"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 247, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("sMsg")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sMsg", $sMsg))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 248, False))
		$iRetValue = _ExtMsgBox($EMB_ICONSTOP, "OK", "Errore", $sMsg)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 248, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("iRetValue")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iRetValue", $iRetValue))
If SetError(@error, @extended, IsDeclared("EMB_ICONSTOP")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$EMB_ICONSTOP", $EMB_ICONSTOP))
If SetError(@error, @extended, IsDeclared("sMsg")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sMsg", $sMsg))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 249, False))
		Exit
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 249, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 250, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 250, False, @error, @extended))
	
	; tratto gli ACQUISTI

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 253, False))
	For $i_row = $i_max_row To 1 Step -1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 253, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_row")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_row", $i_row))
If SetError(@error, @extended, IsDeclared("i_max_row")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_max_row", $i_max_row))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 254, False))
		$s_works_tipo = $ItemArray[$i_row][$iIndex_Tipo]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 254, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_works_tipo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_works_tipo", $s_works_tipo))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))
If SetError(@error, @extended, IsDeclared("i_row")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_row", $i_row))
If SetError(@error, @extended, IsDeclared("iIndex_Tipo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iIndex_Tipo", $iIndex_Tipo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 255, False))
		$s_works_tariffe = $ItemArray[$i_row][$iIndex_Tariffa]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 255, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_works_tariffe")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_works_tariffe", $s_works_tariffe))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))
If SetError(@error, @extended, IsDeclared("i_row")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_row", $i_row))
If SetError(@error, @extended, IsDeclared("iIndex_Tariffa")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iIndex_Tariffa", $iIndex_Tariffa))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 256, False))
		$s_works_tariffe = StringReplace($s_works_tariffe, ",", ".")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 256, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_works_tariffe")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_works_tariffe", $s_works_tariffe))
If SetError(@error, @extended, IsDeclared("s_works_tariffe")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_works_tariffe", $s_works_tariffe))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 257, False))
		$s_work_cod_oggetto = $ItemArray[$i_row][$iIndex_Codice_oggetto]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 257, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_cod_oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_cod_oggetto", $s_work_cod_oggetto))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))
If SetError(@error, @extended, IsDeclared("i_row")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_row", $i_row))
If SetError(@error, @extended, IsDeclared("iIndex_Codice_oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iIndex_Codice_oggetto", $iIndex_Codice_oggetto))
		Select
			Case $s_works_tipo = "Conversione di valuta"

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 260, False))
				$s_work_ID_transazione_di_riferimento = $ItemArray[$i_row][$iIndex_Codice_transazione_di_riferimento]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 260, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_ID_transazione_di_riferimento")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_ID_transazione_di_riferimento", $s_work_ID_transazione_di_riferimento))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))
If SetError(@error, @extended, IsDeclared("i_row")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_row", $i_row))
If SetError(@error, @extended, IsDeclared("iIndex_Codice_transazione_di_riferimento")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iIndex_Codice_transazione_di_riferimento", $iIndex_Codice_transazione_di_riferimento))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 261, False))
				$s_work_Valuta = $ItemArray[$i_row][$iIndex_Valuta]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 261, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_Valuta")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_Valuta", $s_work_Valuta))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))
If SetError(@error, @extended, IsDeclared("i_row")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_row", $i_row))
If SetError(@error, @extended, IsDeclared("iIndex_Valuta")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iIndex_Valuta", $iIndex_Valuta))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 262, False))
				$s_work_Importo_netto = $ItemArray[$i_row][$iIndex_Netto]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 262, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_Importo_netto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_Importo_netto", $s_work_Importo_netto))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))
If SetError(@error, @extended, IsDeclared("i_row")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_row", $i_row))
If SetError(@error, @extended, IsDeclared("iIndex_Netto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iIndex_Netto", $iIndex_Netto))
				Select
					Case $s_work_Valuta = "EUR"

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 265, False))
						$s_ACQUISTI_CTV_ACQ_EURO = StringReplace($s_work_Importo_netto, "-", "")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 265, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_CTV_ACQ_EURO")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_CTV_ACQ_EURO", $s_ACQUISTI_CTV_ACQ_EURO))
If SetError(@error, @extended, IsDeclared("s_work_Importo_netto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_Importo_netto", $s_work_Importo_netto))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 266, False))
					Case $s_work_Valuta <> "EUR"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 266, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_Valuta")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_Valuta", $s_work_Valuta))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 267, False))
						$s_ACQUISTI_VALUTA = $s_work_Valuta
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 267, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_VALUTA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_VALUTA", $s_ACQUISTI_VALUTA))
If SetError(@error, @extended, IsDeclared("s_work_Valuta")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_Valuta", $s_work_Valuta))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 268, False))
						$s_ACQUISTI_IMPORTO_ACQ_VALUTA = $s_work_Importo_netto
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 268, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_IMPORTO_ACQ_VALUTA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_IMPORTO_ACQ_VALUTA", $s_ACQUISTI_IMPORTO_ACQ_VALUTA))
If SetError(@error, @extended, IsDeclared("s_work_Importo_netto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_Importo_netto", $s_work_Importo_netto))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 269, False))
				EndSelect
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 269, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 270, False))
			Case $s_works_tipo = "Pagamento express inviato"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 270, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_works_tipo")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_works_tipo", $s_works_tipo))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 271, False))
				If $ItemArray[$i_row][$iIndex_Nome] = "Pitney Bowes Limited" Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 271, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))
If SetError(@error, @extended, IsDeclared("i_row")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_row", $i_row))
If SetError(@error, @extended, IsDeclared("iIndex_Nome")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iIndex_Nome", $iIndex_Nome))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 272, False))
					$i_sw_PBL = 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 272, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_sw_PBL")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_sw_PBL", $i_sw_PBL))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 273, False))
					$i_sw_acq = 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 273, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_sw_acq")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_sw_acq", $i_sw_acq))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 274, False))
				ElseIf $s_work_cod_oggetto <> "" Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 274, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_cod_oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_cod_oggetto", $s_work_cod_oggetto))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 275, False))
					$i_sw_acq = 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 275, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_sw_acq")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_sw_acq", $i_sw_acq))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 276, False))
					$i_sw_PBL = 0
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 276, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_sw_PBL")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_sw_PBL", $i_sw_PBL))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 277, False))
				Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 277, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 278, False))
					$i_sw_acq = 0
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 278, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_sw_acq")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_sw_acq", $i_sw_acq))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 279, False))
					$i_sw_PBL = 0
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 279, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_sw_PBL")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_sw_PBL", $i_sw_PBL))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 280, False))
				EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 280, False, @error, @extended))
				

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 282, False))
				If $i_sw_acq Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 282, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_sw_acq")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_sw_acq", $i_sw_acq))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 283, False))
					$s_work_Valuta = $ItemArray[$i_row][$iIndex_Valuta]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 283, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_Valuta")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_Valuta", $s_work_Valuta))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))
If SetError(@error, @extended, IsDeclared("i_row")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_row", $i_row))
If SetError(@error, @extended, IsDeclared("iIndex_Valuta")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iIndex_Valuta", $iIndex_Valuta))
					Select
						Case $s_work_Valuta = "EUR"

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 286, False))
							$i_sw_EUR = 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 286, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_sw_EUR")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_sw_EUR", $i_sw_EUR))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 287, False))
							$s_work_Importo_netto = $ItemArray[$i_row][$iIndex_Netto]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 287, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_Importo_netto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_Importo_netto", $s_work_Importo_netto))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))
If SetError(@error, @extended, IsDeclared("i_row")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_row", $i_row))
If SetError(@error, @extended, IsDeclared("iIndex_Netto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iIndex_Netto", $iIndex_Netto))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 288, False))
							$s_ACQUISTI_CTV_ACQ_EURO = StringReplace($s_work_Importo_netto, "-", "")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 288, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_CTV_ACQ_EURO")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_CTV_ACQ_EURO", $s_ACQUISTI_CTV_ACQ_EURO))
If SetError(@error, @extended, IsDeclared("s_work_Importo_netto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_Importo_netto", $s_work_Importo_netto))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 289, False))
							$s_ACQUISTI_VALUTA = $s_work_Valuta
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 289, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_VALUTA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_VALUTA", $s_ACQUISTI_VALUTA))
If SetError(@error, @extended, IsDeclared("s_work_Valuta")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_Valuta", $s_work_Valuta))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 290, False))
							$s_ACQUISTI_IMPORTO_ACQ_VALUTA = $s_ACQUISTI_CTV_ACQ_EURO
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 290, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_IMPORTO_ACQ_VALUTA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_IMPORTO_ACQ_VALUTA", $s_ACQUISTI_IMPORTO_ACQ_VALUTA))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_CTV_ACQ_EURO")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_CTV_ACQ_EURO", $s_ACQUISTI_CTV_ACQ_EURO))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 291, False))
						Case Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 291, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 292, False))
							$i_sw_EUR = 0
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 292, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_sw_EUR")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_sw_EUR", $i_sw_EUR))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 293, False))
					EndSelect
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 293, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 294, False))
				EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 294, False, @error, @extended))


SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 296, False))
				If $i_sw_acq Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 296, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_sw_acq")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_sw_acq", $i_sw_acq))
					Select
						Case Not $i_sw_EUR

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 299, False))
							$s_work_ID_transazione = $ItemArray[$i_row][$iIndex_Codice_transazione]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 299, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_ID_transazione")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_ID_transazione", $s_work_ID_transazione))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))
If SetError(@error, @extended, IsDeclared("i_row")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_row", $i_row))
If SetError(@error, @extended, IsDeclared("iIndex_Codice_transazione")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iIndex_Codice_transazione", $iIndex_Codice_transazione))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 300, False))
							If $s_work_ID_transazione = $s_work_ID_transazione_di_riferimento Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 300, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_ID_transazione")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_ID_transazione", $s_work_ID_transazione))
If SetError(@error, @extended, IsDeclared("s_work_ID_transazione_di_riferimento")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_ID_transazione_di_riferimento", $s_work_ID_transazione_di_riferimento))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 301, False))
							Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 301, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 302, False))
								$sMsg = "Disallineamento record di input! Elaborazione abortita"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 302, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("sMsg")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sMsg", $sMsg))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 303, False))
								$iRetValue = _ExtMsgBox($EMB_ICONSTOP, "OK", "Errore", $sMsg)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 303, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("iRetValue")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iRetValue", $iRetValue))
If SetError(@error, @extended, IsDeclared("EMB_ICONSTOP")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$EMB_ICONSTOP", $EMB_ICONSTOP))
If SetError(@error, @extended, IsDeclared("sMsg")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sMsg", $sMsg))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 304, False))
								Exit
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 304, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 305, False))
							EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 305, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 306, False))
					EndSelect
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 306, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 307, False))
					$s_work_Nome = $ItemArray[$i_row][$iIndex_Nome]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 307, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_Nome")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_Nome", $s_work_Nome))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))
If SetError(@error, @extended, IsDeclared("i_row")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_row", $i_row))
If SetError(@error, @extended, IsDeclared("iIndex_Nome")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iIndex_Nome", $iIndex_Nome))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 308, False))
					$s_work_Email = $ItemArray[$i_row][$iIndex_Indirizzo_email]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 308, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_Email")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_Email", $s_work_Email))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))
If SetError(@error, @extended, IsDeclared("i_row")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_row", $i_row))
If SetError(@error, @extended, IsDeclared("iIndex_Indirizzo_email")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iIndex_Indirizzo_email", $iIndex_Indirizzo_email))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 309, False))
					$s_work_URL_oggetto = $ItemArray[$i_row][$iIndex_URL_oggetto]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 309, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_URL_oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_URL_oggetto", $s_work_URL_oggetto))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))
If SetError(@error, @extended, IsDeclared("i_row")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_row", $i_row))
If SetError(@error, @extended, IsDeclared("iIndex_URL_oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iIndex_URL_oggetto", $iIndex_URL_oggetto))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 310, False))
					$s_ACQUISTI_DOC_DI_CARICO_DATA = $ItemArray[$i_row][$iIndex_Data]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 310, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_DOC_DI_CARICO_DATA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_DOC_DI_CARICO_DATA", $s_ACQUISTI_DOC_DI_CARICO_DATA))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))
If SetError(@error, @extended, IsDeclared("i_row")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_row", $i_row))
If SetError(@error, @extended, IsDeclared("iIndex_Data")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iIndex_Data", $iIndex_Data))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 311, False))
					$s_ACQUISTI_DATA_ACQUISTO = $ItemArray[$i_row][$iIndex_Data]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 311, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_DATA_ACQUISTO")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_DATA_ACQUISTO", $s_ACQUISTI_DATA_ACQUISTO))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))
If SetError(@error, @extended, IsDeclared("i_row")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_row", $i_row))
If SetError(@error, @extended, IsDeclared("iIndex_Data")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iIndex_Data", $iIndex_Data))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 312, False))
					$s_ACQUISTI_DATA_PAGAMENTO = $ItemArray[$i_row][$iIndex_Data]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 312, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_DATA_PAGAMENTO")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_DATA_PAGAMENTO", $s_ACQUISTI_DATA_PAGAMENTO))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))
If SetError(@error, @extended, IsDeclared("i_row")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_row", $i_row))
If SetError(@error, @extended, IsDeclared("iIndex_Data")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iIndex_Data", $iIndex_Data))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 313, False))
					$s_ACQUISTI_DESCRIZIONE = $ItemArray[$i_row][$iIndex_Titolo_oggetto]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 313, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_DESCRIZIONE")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_DESCRIZIONE", $s_ACQUISTI_DESCRIZIONE))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))
If SetError(@error, @extended, IsDeclared("i_row")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_row", $i_row))
If SetError(@error, @extended, IsDeclared("iIndex_Titolo_oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iIndex_Titolo_oggetto", $iIndex_Titolo_oggetto))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 314, False))
					$s_ACQUISTI_FORNITORE = $ItemArray[$i_row][$iIndex_Nome]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 314, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_FORNITORE")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_FORNITORE", $s_ACQUISTI_FORNITORE))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))
If SetError(@error, @extended, IsDeclared("i_row")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_row", $i_row))
If SetError(@error, @extended, IsDeclared("iIndex_Nome")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iIndex_Nome", $iIndex_Nome))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 315, False))
					$s_ACQUISTI_CODICE_UNIVOCO_PAYPAL = $ItemArray[$i_row][$iIndex_Codice_transazione]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 315, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_CODICE_UNIVOCO_PAYPAL")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_CODICE_UNIVOCO_PAYPAL", $s_ACQUISTI_CODICE_UNIVOCO_PAYPAL))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))
If SetError(@error, @extended, IsDeclared("i_row")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_row", $i_row))
If SetError(@error, @extended, IsDeclared("iIndex_Codice_transazione")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iIndex_Codice_transazione", $iIndex_Codice_transazione))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 316, False))
					$s_ACQUISTI_PAGAMENTO_A_MEZZO = "PAYPAL"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 316, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_PAGAMENTO_A_MEZZO")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_PAGAMENTO_A_MEZZO", $s_ACQUISTI_PAGAMENTO_A_MEZZO))
					; vedi se Pitney Bowes Limited
					Select
						Case $i_sw_PBL

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 320, False))
							$s_ACQUISTI_FORNITORE = $ItemArray[$i_row][$iIndex_Nome]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 320, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_FORNITORE")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_FORNITORE", $s_ACQUISTI_FORNITORE))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))
If SetError(@error, @extended, IsDeclared("i_row")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_row", $i_row))
If SetError(@error, @extended, IsDeclared("iIndex_Nome")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iIndex_Nome", $iIndex_Nome))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 321, False))
							$s_ACQUISTI_DESCRIZIONE = "S.& H."
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 321, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_DESCRIZIONE")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_DESCRIZIONE", $s_ACQUISTI_DESCRIZIONE))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 322, False))
							$s_ACQUISTI_DOC_DI_CARICO_DATA = $ItemArray[$i_row][$iIndex_Data]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 322, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_DOC_DI_CARICO_DATA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_DOC_DI_CARICO_DATA", $s_ACQUISTI_DOC_DI_CARICO_DATA))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))
If SetError(@error, @extended, IsDeclared("i_row")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_row", $i_row))
If SetError(@error, @extended, IsDeclared("iIndex_Data")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iIndex_Data", $iIndex_Data))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 323, False))
							$s_ACQUISTI_DATA_ACQUISTO = $ItemArray[$i_row][$iIndex_Data]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 323, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_DATA_ACQUISTO")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_DATA_ACQUISTO", $s_ACQUISTI_DATA_ACQUISTO))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))
If SetError(@error, @extended, IsDeclared("i_row")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_row", $i_row))
If SetError(@error, @extended, IsDeclared("iIndex_Data")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iIndex_Data", $iIndex_Data))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 324, False))
							$s_ACQUISTI_DATA_PAGAMENTO = $ItemArray[$i_row][$iIndex_Data]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 324, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_DATA_PAGAMENTO")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_DATA_PAGAMENTO", $s_ACQUISTI_DATA_PAGAMENTO))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))
If SetError(@error, @extended, IsDeclared("i_row")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_row", $i_row))
If SetError(@error, @extended, IsDeclared("iIndex_Data")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iIndex_Data", $iIndex_Data))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 325, False))
							If $i_sw_PBL Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 325, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_sw_PBL")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_sw_PBL", $i_sw_PBL))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 326, False))
							Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 326, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 327, False))
								$sMsg = "Disallineamento record di input! Elaborazione abortita"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 327, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("sMsg")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sMsg", $sMsg))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 328, False))
								$iRetValue = _ExtMsgBox($EMB_ICONSTOP, "OK", "Errore", $sMsg)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 328, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("iRetValue")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iRetValue", $iRetValue))
If SetError(@error, @extended, IsDeclared("EMB_ICONSTOP")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$EMB_ICONSTOP", $EMB_ICONSTOP))
If SetError(@error, @extended, IsDeclared("sMsg")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sMsg", $sMsg))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 329, False))
								Exit
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 329, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 330, False))
							EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 330, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 331, False))
					EndSelect
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 331, False, @error, @extended))
					; recupero dati dall'ultimo record inserito

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 333, False))
					Local $s_query
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 333, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_query")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_query", $s_query))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 334, False))
					$s_query = "SELECT * FROM " & $s_Tablename & ""
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 334, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_query")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_query", $s_query))
If SetError(@error, @extended, IsDeclared("s_Tablename")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Tablename", $s_Tablename))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 335, False))
					$i_cod_ritorno = RecordSearchLast($s_dbname, $s_query, $o_Con)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 335, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_cod_ritorno")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_cod_ritorno", $i_cod_ritorno))
If SetError(@error, @extended, IsDeclared("s_dbname")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_dbname", $s_dbname))
If SetError(@error, @extended, IsDeclared("s_query")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_query", $s_query))
If SetError(@error, @extended, IsDeclared("o_Con")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_Con", $o_Con))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 336, False))
					If Not $i_cod_ritorno Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 336, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_cod_ritorno")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_cod_ritorno", $i_cod_ritorno))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 337, False))
						Exit
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 337, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 338, False))
					EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 338, False, @error, @extended))
					; incremento $s_ACQUISTI_ID_ACQ, $s_ACQUISTI_DOC_DI_CARICO_NUMERO

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 340, False))
					$s_ACQUISTI_DOC_DI_CARICO_NUMERO = $s_ACQUISTI_DOC_DI_CARICO_NUMERO + 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 340, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_DOC_DI_CARICO_NUMERO")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_DOC_DI_CARICO_NUMERO", $s_ACQUISTI_DOC_DI_CARICO_NUMERO))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_DOC_DI_CARICO_NUMERO")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_DOC_DI_CARICO_NUMERO", $s_ACQUISTI_DOC_DI_CARICO_NUMERO))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 341, False))
					Global $s_work_ID_ACQ = IncrementaID_ACQ($s_ACQUISTI_ID_ACQ, $s_ACQUISTI_DATA_ACQUISTO)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 341, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_ID_ACQ")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_ID_ACQ", $s_work_ID_ACQ))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_ID_ACQ")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_ID_ACQ", $s_ACQUISTI_ID_ACQ))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_DATA_ACQUISTO")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_DATA_ACQUISTO", $s_ACQUISTI_DATA_ACQUISTO))
					; recupero ID fornitore

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 343, False))
					$s_work_Nome = "'" & $s_work_Nome & "'"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 343, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_Nome")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_Nome", $s_work_Nome))
If SetError(@error, @extended, IsDeclared("s_work_Nome")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_Nome", $s_work_Nome))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 344, False))
					$s_query = "SELECT * FROM FORNITORI WHERE COD_FORNITORE =" & $s_work_Nome & ""
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 344, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_query")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_query", $s_query))
If SetError(@error, @extended, IsDeclared("s_work_Nome")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_Nome", $s_work_Nome))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 345, False))
					$s_ACQUISTI_FORNITORE = RicercaID_Fornitore($s_dbname, $s_query, $o_Con)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 345, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_FORNITORE")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_FORNITORE", $s_ACQUISTI_FORNITORE))
If SetError(@error, @extended, IsDeclared("s_dbname")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_dbname", $s_dbname))
If SetError(@error, @extended, IsDeclared("s_query")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_query", $s_query))
If SetError(@error, @extended, IsDeclared("o_Con")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_Con", $o_Con))
					; recupero descizione valuta

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 347, False))
					$s_work_Valuta = "'" & $s_work_Valuta & "'"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 347, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_Valuta")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_Valuta", $s_work_Valuta))
If SetError(@error, @extended, IsDeclared("s_work_Valuta")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_Valuta", $s_work_Valuta))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 348, False))
					$s_query = "SELECT * FROM VALUTE WHERE ID_VALUTA =" & $s_work_Valuta & ""
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 348, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_query")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_query", $s_query))
If SetError(@error, @extended, IsDeclared("s_work_Valuta")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_Valuta", $s_work_Valuta))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 349, False))
					$s_ACQUISTI_VALUTA = RicercaDescr_Valuta($s_dbname, $s_query, $o_Con)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 349, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_VALUTA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_VALUTA", $s_ACQUISTI_VALUTA))
If SetError(@error, @extended, IsDeclared("s_dbname")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_dbname", $s_dbname))
If SetError(@error, @extended, IsDeclared("s_query")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_query", $s_query))
If SetError(@error, @extended, IsDeclared("o_Con")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_Con", $o_Con))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 350, False))
					$s_work_Valuta = StringReplace($s_work_Valuta, "'", "")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 350, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_Valuta")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_Valuta", $s_work_Valuta))
If SetError(@error, @extended, IsDeclared("s_work_Valuta")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_Valuta", $s_work_Valuta))

					; campi calcolati

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 353, False))
 					$s_CALCOLATO_TOTALE_ACQ_VALUTA = StringReplace($s_ACQUISTI_IMPORTO_ACQ_VALUTA, ",", ".") 							 + StringReplace($s_ACQUISTI_SEH_ACQ_VALUTA, ",", ".")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 353, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_CALCOLATO_TOTALE_ACQ_VALUTA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_CALCOLATO_TOTALE_ACQ_VALUTA", $s_CALCOLATO_TOTALE_ACQ_VALUTA))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_IMPORTO_ACQ_VALUTA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_IMPORTO_ACQ_VALUTA", $s_ACQUISTI_IMPORTO_ACQ_VALUTA))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_SEH_ACQ_VALUTA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_SEH_ACQ_VALUTA", $s_ACQUISTI_SEH_ACQ_VALUTA))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 355, False))
					$s_CALCOLATO_TOTALE_ACQ_VALUTA = StringReplace($s_CALCOLATO_TOTALE_ACQ_VALUTA, ".", ",")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 355, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_CALCOLATO_TOTALE_ACQ_VALUTA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_CALCOLATO_TOTALE_ACQ_VALUTA", $s_CALCOLATO_TOTALE_ACQ_VALUTA))
If SetError(@error, @extended, IsDeclared("s_CALCOLATO_TOTALE_ACQ_VALUTA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_CALCOLATO_TOTALE_ACQ_VALUTA", $s_CALCOLATO_TOTALE_ACQ_VALUTA))
					; imposto il form

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 357, False))
					GUICtrlSetData($h_ID_ACQ_DATA, $s_work_ID_ACQ)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 357, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("h_ID_ACQ_DATA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$h_ID_ACQ_DATA", $h_ID_ACQ_DATA))
If SetError(@error, @extended, IsDeclared("s_work_ID_ACQ")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_ID_ACQ", $s_work_ID_ACQ))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 358, False))
					GUICtrlSetData($h_ANNO_CONTABILE_DATA, $s_ACQUISTI_ANNO_CONTABILE)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 358, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("h_ANNO_CONTABILE_DATA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$h_ANNO_CONTABILE_DATA", $h_ANNO_CONTABILE_DATA))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_ANNO_CONTABILE")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_ANNO_CONTABILE", $s_ACQUISTI_ANNO_CONTABILE))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 359, False))
					GUICtrlSetData($h_DOCUMENTO_DI_CARICO_DATA, $s_ACQUISTI_DOC_DI_CARICO_NUMERO)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 359, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("h_DOCUMENTO_DI_CARICO_DATA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$h_DOCUMENTO_DI_CARICO_DATA", $h_DOCUMENTO_DI_CARICO_DATA))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_DOC_DI_CARICO_NUMERO")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_DOC_DI_CARICO_NUMERO", $s_ACQUISTI_DOC_DI_CARICO_NUMERO))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 360, False))
					GUICtrlSetData($h_DOCUMENTO_DI_CARICO_DATA_DATA, $s_ACQUISTI_DATA_ACQUISTO)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 360, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("h_DOCUMENTO_DI_CARICO_DATA_DATA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$h_DOCUMENTO_DI_CARICO_DATA_DATA", $h_DOCUMENTO_DI_CARICO_DATA_DATA))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_DATA_ACQUISTO")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_DATA_ACQUISTO", $s_ACQUISTI_DATA_ACQUISTO))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 361, False))
					GUICtrlSetData($h_DESCRIZIONE_DATA, $s_ACQUISTI_DESCRIZIONE)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 361, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("h_DESCRIZIONE_DATA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$h_DESCRIZIONE_DATA", $h_DESCRIZIONE_DATA))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_DESCRIZIONE")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_DESCRIZIONE", $s_ACQUISTI_DESCRIZIONE))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 362, False))
					If $i_sw_PBL Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 362, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_sw_PBL")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_sw_PBL", $i_sw_PBL))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 363, False))
						GUICtrlSetData($h_NUMERO_PEZZI, 1)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 363, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("h_NUMERO_PEZZI")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$h_NUMERO_PEZZI", $h_NUMERO_PEZZI))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 364, False))
					EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 364, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 365, False))
					GUICtrlSetData($h_DATA_ACQUISTO_DATA, $s_ACQUISTI_DATA_ACQUISTO)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 365, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("h_DATA_ACQUISTO_DATA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$h_DATA_ACQUISTO_DATA", $h_DATA_ACQUISTO_DATA))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_DATA_ACQUISTO")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_DATA_ACQUISTO", $s_ACQUISTI_DATA_ACQUISTO))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 366, False))
					GUICtrlSetData($h_FORNITORE_DATA, $ItemArray[$i_row][$iIndex_Nome])
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 366, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("h_FORNITORE_DATA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$h_FORNITORE_DATA", $h_FORNITORE_DATA))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))
If SetError(@error, @extended, IsDeclared("i_row")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_row", $i_row))
If SetError(@error, @extended, IsDeclared("iIndex_Nome")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iIndex_Nome", $iIndex_Nome))
					; inserire colorazione se fornitore non censito

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 368, False))
					GUICtrlSetData($h_VALUTA_DATA, $s_ACQUISTI_VALUTA)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 368, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("h_VALUTA_DATA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$h_VALUTA_DATA", $h_VALUTA_DATA))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_VALUTA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_VALUTA", $s_ACQUISTI_VALUTA))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 369, False))
					GUICtrlSetData($h_IMP_IN_VALUTA_DATA, $s_ACQUISTI_IMPORTO_ACQ_VALUTA)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 369, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("h_IMP_IN_VALUTA_DATA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$h_IMP_IN_VALUTA_DATA", $h_IMP_IN_VALUTA_DATA))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_IMPORTO_ACQ_VALUTA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_IMPORTO_ACQ_VALUTA", $s_ACQUISTI_IMPORTO_ACQ_VALUTA))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 370, False))
					GUICtrlSetData($h_SHE_IN_VALUTA_DATA, $s_ACQUISTI_SEH_ACQ_VALUTA)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 370, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("h_SHE_IN_VALUTA_DATA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$h_SHE_IN_VALUTA_DATA", $h_SHE_IN_VALUTA_DATA))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_SEH_ACQ_VALUTA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_SEH_ACQ_VALUTA", $s_ACQUISTI_SEH_ACQ_VALUTA))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 371, False))
					GUICtrlSetData($h_TOT_IN_VALUTA_DATA, $s_CALCOLATO_TOTALE_ACQ_VALUTA)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 371, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("h_TOT_IN_VALUTA_DATA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$h_TOT_IN_VALUTA_DATA", $h_TOT_IN_VALUTA_DATA))
If SetError(@error, @extended, IsDeclared("s_CALCOLATO_TOTALE_ACQ_VALUTA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_CALCOLATO_TOTALE_ACQ_VALUTA", $s_CALCOLATO_TOTALE_ACQ_VALUTA))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 372, False))
					GUICtrlSetData($h_CTV_IN_EURO_DATA, $s_ACQUISTI_CTV_ACQ_EURO)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 372, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("h_CTV_IN_EURO_DATA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$h_CTV_IN_EURO_DATA", $h_CTV_IN_EURO_DATA))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_CTV_ACQ_EURO")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_CTV_ACQ_EURO", $s_ACQUISTI_CTV_ACQ_EURO))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 373, False))
					GUICtrlSetData($h_CODICE_PAYPAL_DATA, $s_ACQUISTI_CODICE_UNIVOCO_PAYPAL)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 373, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("h_CODICE_PAYPAL_DATA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$h_CODICE_PAYPAL_DATA", $h_CODICE_PAYPAL_DATA))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_CODICE_UNIVOCO_PAYPAL")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_CODICE_UNIVOCO_PAYPAL", $s_ACQUISTI_CODICE_UNIVOCO_PAYPAL))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 374, False))
					GUICtrlSetData($h_DATA_PAGAMENTO_DATA, $s_ACQUISTI_DATA_PAGAMENTO)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 374, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("h_DATA_PAGAMENTO_DATA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$h_DATA_PAGAMENTO_DATA", $h_DATA_PAGAMENTO_DATA))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_DATA_PAGAMENTO")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_DATA_PAGAMENTO", $s_ACQUISTI_DATA_PAGAMENTO))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 375, False))
					GUICtrlSetData($h_MEZZO_PAGAMENTO_DATA, $s_ACQUISTI_PAGAMENTO_A_MEZZO)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 375, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("h_MEZZO_PAGAMENTO_DATA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$h_MEZZO_PAGAMENTO_DATA", $h_MEZZO_PAGAMENTO_DATA))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_PAGAMENTO_A_MEZZO")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_PAGAMENTO_A_MEZZO", $s_ACQUISTI_PAGAMENTO_A_MEZZO))
					; Switch to GetMessage mode

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 377, False))
					Local $iOnEventMode = Opt("GUIOnEventMode", 0), $iMsg
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 377, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("iOnEventMode")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iOnEventMode", $iOnEventMode))
If SetError(@error, @extended, IsDeclared("iMsg")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iMsg", $iMsg))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 378, False))
					While 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 378, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 379, False))
						$iMsg = GUIGetMsg() ; Variable needed to check which "Copy" button was pressed
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 379, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("iMsg")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iMsg", $iMsg))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 380, False))
						Switch $iMsg
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 380, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("iMsg")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iMsg", $iMsg))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 381, False))
							Case $hProsegui
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 381, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("hProsegui")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$hProsegui", $hProsegui))
;~ 								ExitLoop

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 383, False))
							Case $h_Apri_URL
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 383, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("h_Apri_URL")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$h_Apri_URL", $h_Apri_URL))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 384, False))
								ShellExecute($s_work_URL_oggetto)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 384, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_URL_oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_URL_oggetto", $s_work_URL_oggetto))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 385, False))
								ContinueLoop
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 385, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 386, False))
							Case $hSalta
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 386, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("hSalta")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$hSalta", $hSalta))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 387, False))
								ExitLoop
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 387, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 388, False))
							Case $hChiudi
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 388, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("hChiudi")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$hChiudi", $hChiudi))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 389, False))
								Exit
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 389, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 390, False))
							Case $hCopia
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 390, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("hCopia")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$hCopia", $hCopia))
;~ 								ExitLoop

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 392, False))
							Case $hInserisci
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 392, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("hInserisci")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$hInserisci", $hInserisci))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 393, False))
								$s_ACQUISTI_NUMERO_PEZZI = GUICtrlRead($h_NUMERO_PEZZI)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 393, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_NUMERO_PEZZI")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_NUMERO_PEZZI", $s_ACQUISTI_NUMERO_PEZZI))
If SetError(@error, @extended, IsDeclared("h_NUMERO_PEZZI")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$h_NUMERO_PEZZI", $h_NUMERO_PEZZI))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 394, False))
								If $s_ACQUISTI_NUMERO_PEZZI = "" Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 394, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_NUMERO_PEZZI")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_NUMERO_PEZZI", $s_ACQUISTI_NUMERO_PEZZI))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 395, False))
									$sMsg = "Digita numero pezzi e quindi premi Inserisci per proseguire"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 395, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("sMsg")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sMsg", $sMsg))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 396, False))
									$iRetValue = _ExtMsgBox($EMB_ICONSTOP, "OK", "Errore", $sMsg)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 396, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("iRetValue")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iRetValue", $iRetValue))
If SetError(@error, @extended, IsDeclared("EMB_ICONSTOP")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$EMB_ICONSTOP", $EMB_ICONSTOP))
If SetError(@error, @extended, IsDeclared("sMsg")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sMsg", $sMsg))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 397, False))
									ContinueLoop
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 397, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 398, False))
								EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 398, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 399, False))
								$s_query = "SELECT * FROM ACQUISTI"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 399, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_query")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_query", $s_query))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 400, False))
								$i_cod_ritorno = RegistraAcquisto($s_dbname, $s_query, $o_Con)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 400, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_cod_ritorno")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_cod_ritorno", $i_cod_ritorno))
If SetError(@error, @extended, IsDeclared("s_dbname")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_dbname", $s_dbname))
If SetError(@error, @extended, IsDeclared("s_query")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_query", $s_query))
If SetError(@error, @extended, IsDeclared("o_Con")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_Con", $o_Con))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 401, False))
								If Not $i_cod_ritorno Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 401, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_cod_ritorno")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_cod_ritorno", $i_cod_ritorno))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 402, False))
									$sMsg = "Errore in fase registrazione acquisti! Elaborazione abortita"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 402, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("sMsg")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sMsg", $sMsg))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 403, False))
									$iRetValue = _ExtMsgBox($EMB_ICONSTOP, "OK", "Errore", $sMsg)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 403, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("iRetValue")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iRetValue", $iRetValue))
If SetError(@error, @extended, IsDeclared("EMB_ICONSTOP")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$EMB_ICONSTOP", $EMB_ICONSTOP))
If SetError(@error, @extended, IsDeclared("sMsg")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sMsg", $sMsg))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 404, False))
									Exit
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 404, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 405, False))
								EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 405, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 406, False))
								$s_query = "SELECT * FROM MOVIMENTI"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 406, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_query")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_query", $s_query))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 407, False))
								$i_cod_ritorno = RegistraMovimento($s_dbname, $s_query, $o_Con)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 407, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_cod_ritorno")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_cod_ritorno", $i_cod_ritorno))
If SetError(@error, @extended, IsDeclared("s_dbname")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_dbname", $s_dbname))
If SetError(@error, @extended, IsDeclared("s_query")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_query", $s_query))
If SetError(@error, @extended, IsDeclared("o_Con")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_Con", $o_Con))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 408, False))
								If Not $i_cod_ritorno Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 408, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_cod_ritorno")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_cod_ritorno", $i_cod_ritorno))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 409, False))
									$sMsg = "Errore in fase registrazione movimenti! Elaborazione abortita"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 409, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("sMsg")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sMsg", $sMsg))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 410, False))
									$iRetValue = _ExtMsgBox($EMB_ICONSTOP, "OK", "Errore", $sMsg)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 410, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("iRetValue")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iRetValue", $iRetValue))
If SetError(@error, @extended, IsDeclared("EMB_ICONSTOP")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$EMB_ICONSTOP", $EMB_ICONSTOP))
If SetError(@error, @extended, IsDeclared("sMsg")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sMsg", $sMsg))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 411, False))
									Exit
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 411, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 412, False))
								EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 412, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 413, False))
								If $i_cod_ritorno Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 413, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_cod_ritorno")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_cod_ritorno", $i_cod_ritorno))
;~ 								aggiorna contatore acquisti elaborati

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 415, False))
									$a_riepilogo_acquisti[$i_contatore_acquisti + 1] = $s_work_ID_ACQ & " - " & $s_ACQUISTI_DESCRIZIONE
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 415, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("a_riepilogo_acquisti")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$a_riepilogo_acquisti", $a_riepilogo_acquisti))
If SetError(@error, @extended, IsDeclared("i_contatore_acquisti")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_contatore_acquisti", $i_contatore_acquisti))
If SetError(@error, @extended, IsDeclared("s_work_ID_ACQ")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_ID_ACQ", $s_work_ID_ACQ))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_DESCRIZIONE")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_DESCRIZIONE", $s_ACQUISTI_DESCRIZIONE))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 416, False))
									$i_contatore_acquisti = $i_contatore_acquisti + 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 416, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_contatore_acquisti")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_contatore_acquisti", $i_contatore_acquisti))
If SetError(@error, @extended, IsDeclared("i_contatore_acquisti")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_contatore_acquisti", $i_contatore_acquisti))
;~ 									azzera numero pezzi

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 418, False))
									GUICtrlSetData($h_NUMERO_PEZZI, "")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 418, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("h_NUMERO_PEZZI")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$h_NUMERO_PEZZI", $h_NUMERO_PEZZI))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 419, False))
									ExitLoop
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 419, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 420, False))
								EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 420, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 421, False))
						EndSwitch
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 421, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 422, False))
					WEnd
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 422, False, @error, @extended))
					; Clear up

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 424, False))
					Opt("GUIOnEventMode", 1) ; Reset original GUI mode
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 424, False, @error, @extended))
					

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 426, False))
				EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 426, False, @error, @extended))


SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 428, False))
		EndSelect
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 428, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 429, False))
	Next
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 429, False, @error, @extended))
	
;~ =========================

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 432, False))
	AccessCloseConn($o_Con)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 432, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_Con")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_Con", $o_Con))
	

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 434, False))
	$a_riepilogo_acquisti[0] = "ACQUISTI AGGIORNATI=" & $i_contatore_acquisti
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 434, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("a_riepilogo_acquisti")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$a_riepilogo_acquisti", $a_riepilogo_acquisti))
If SetError(@error, @extended, IsDeclared("i_contatore_acquisti")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_contatore_acquisti", $i_contatore_acquisti))


SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 436, False))
	_ArrayDisplay($a_riepilogo_acquisti)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 436, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("a_riepilogo_acquisti")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$a_riepilogo_acquisti", $a_riepilogo_acquisti))

	; ripristino dei valori iniziali

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 439, False))
	$s_provenienza = "PAYPAL"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 439, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_provenienza")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_provenienza", $s_provenienza))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 440, False))
	$s_ambiente = "PRODUZIONE"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 440, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ambiente")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ambiente", $s_ambiente))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 441, False))
	GUICtrlSetState($hPaypal_Image, $GUI_SHOW)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 441, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("hPaypal_Image")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$hPaypal_Image", $hPaypal_Image))
If SetError(@error, @extended, IsDeclared("GUI_SHOW")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$GUI_SHOW", $GUI_SHOW))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 442, False))
	GUICtrlSetState($hProduzione_Image, $GUI_SHOW)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 442, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("hProduzione_Image")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$hProduzione_Image", $hProduzione_Image))
If SetError(@error, @extended, IsDeclared("GUI_SHOW")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$GUI_SHOW", $GUI_SHOW))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 443, False))
	GUICtrlSetState($hTest_Image, $GUI_HIDE)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 443, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("hTest_Image")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$hTest_Image", $hTest_Image))
If SetError(@error, @extended, IsDeclared("GUI_HIDE")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$GUI_HIDE", $GUI_HIDE))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 444, False))
	GUICtrlSetState($hProduzione, $GUI_CHECKED)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 444, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("hProduzione")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$hProduzione", $hProduzione))
If SetError(@error, @extended, IsDeclared("GUI_CHECKED")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$GUI_CHECKED", $GUI_CHECKED))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 445, False))
	GUICtrlSetState($hPaypal, $GUI_CHECKED)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 445, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("hPaypal")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$hPaypal", $hPaypal))
If SetError(@error, @extended, IsDeclared("GUI_CHECKED")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$GUI_CHECKED", $GUI_CHECKED))
	; imposto il form

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 447, False))
	GUICtrlSetData($h_ID_ACQ_DATA, "")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 447, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("h_ID_ACQ_DATA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$h_ID_ACQ_DATA", $h_ID_ACQ_DATA))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 448, False))
	GUICtrlSetData($h_ANNO_CONTABILE_DATA, "")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 448, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("h_ANNO_CONTABILE_DATA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$h_ANNO_CONTABILE_DATA", $h_ANNO_CONTABILE_DATA))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 449, False))
	GUICtrlSetData($h_DOCUMENTO_DI_CARICO_DATA, "")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 449, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("h_DOCUMENTO_DI_CARICO_DATA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$h_DOCUMENTO_DI_CARICO_DATA", $h_DOCUMENTO_DI_CARICO_DATA))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 450, False))
	GUICtrlSetData($h_DOCUMENTO_DI_CARICO_DATA_DATA, "")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 450, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("h_DOCUMENTO_DI_CARICO_DATA_DATA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$h_DOCUMENTO_DI_CARICO_DATA_DATA", $h_DOCUMENTO_DI_CARICO_DATA_DATA))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 451, False))
	GUICtrlSetData($h_DESCRIZIONE_DATA, "")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 451, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("h_DESCRIZIONE_DATA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$h_DESCRIZIONE_DATA", $h_DESCRIZIONE_DATA))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 452, False))
	GUICtrlSetData($h_NUMERO_PEZZI, "")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 452, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("h_NUMERO_PEZZI")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$h_NUMERO_PEZZI", $h_NUMERO_PEZZI))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 453, False))
	GUICtrlSetData($h_DATA_ACQUISTO_DATA, "")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 453, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("h_DATA_ACQUISTO_DATA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$h_DATA_ACQUISTO_DATA", $h_DATA_ACQUISTO_DATA))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 454, False))
	GUICtrlSetData($h_FORNITORE_DATA, "")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 454, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("h_FORNITORE_DATA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$h_FORNITORE_DATA", $h_FORNITORE_DATA))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 455, False))
	GUICtrlSetData($h_VALUTA_DATA, "")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 455, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("h_VALUTA_DATA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$h_VALUTA_DATA", $h_VALUTA_DATA))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 456, False))
	GUICtrlSetData($h_IMP_IN_VALUTA_DATA, "")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 456, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("h_IMP_IN_VALUTA_DATA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$h_IMP_IN_VALUTA_DATA", $h_IMP_IN_VALUTA_DATA))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 457, False))
	GUICtrlSetData($h_SHE_IN_VALUTA_DATA, "")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 457, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("h_SHE_IN_VALUTA_DATA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$h_SHE_IN_VALUTA_DATA", $h_SHE_IN_VALUTA_DATA))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 458, False))
	GUICtrlSetData($h_TOT_IN_VALUTA_DATA, "")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 458, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("h_TOT_IN_VALUTA_DATA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$h_TOT_IN_VALUTA_DATA", $h_TOT_IN_VALUTA_DATA))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 459, False))
	GUICtrlSetData($h_CTV_IN_EURO_DATA, "")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 459, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("h_CTV_IN_EURO_DATA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$h_CTV_IN_EURO_DATA", $h_CTV_IN_EURO_DATA))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 460, False))
	GUICtrlSetData($h_CODICE_PAYPAL_DATA, "")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 460, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("h_CODICE_PAYPAL_DATA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$h_CODICE_PAYPAL_DATA", $h_CODICE_PAYPAL_DATA))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 461, False))
	GUICtrlSetData($h_DATA_PAGAMENTO_DATA, "")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 461, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("h_DATA_PAGAMENTO_DATA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$h_DATA_PAGAMENTO_DATA", $h_DATA_PAGAMENTO_DATA))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 462, False))
	GUICtrlSetData($h_MEZZO_PAGAMENTO_DATA, "")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 462, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("h_MEZZO_PAGAMENTO_DATA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$h_MEZZO_PAGAMENTO_DATA", $h_MEZZO_PAGAMENTO_DATA))

;~ 	Exit
EndFunc   ;==>Tratta_Paypal


SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 467, False))
Func AccessConnectConn($s_dbname, ByRef $o_adoCon, $i_adoMDB = 1)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 467, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_dbname")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_dbname", $s_dbname))
If SetError(@error, @extended, IsDeclared("o_adoCon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoCon", $o_adoCon))
If SetError(@error, @extended, IsDeclared("i_adoMDB")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_adoMDB", $i_adoMDB))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 468, False))
	$o_adoCon = ObjCreate("ADODB.Connection")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 468, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoCon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoCon", $o_adoCon))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 469, False))
	If Not $i_adoMDB Then $o_adoCon.Open("Provider=Microsoft.ACE.OLEDB.12.0; Data Source=" & $s_dbname & ";")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 469, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_adoMDB")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_adoMDB", $i_adoMDB))
If SetError(@error, @extended, IsDeclared("o_adoCon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoCon", $o_adoCon))
If SetError(@error, @extended, IsDeclared("s_dbname")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_dbname", $s_dbname))
	;If $i_adoMDB Then $o_adoCon.Open ("Driver={Microsoft Access Driver (*.mdb)};Dbq=" & $s_dbname")

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 471, False))
	Return $o_adoCon
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 471, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoCon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoCon", $o_adoCon))
EndFunc   ;==>AccessConnectConn


SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 474, False))
Func MyErrFunc()
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 474, False, @error, @extended))
	;#cs

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 476, False))
	$HexNumber = Hex($oMyError.number, 8)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 476, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("HexNumber")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$HexNumber", $HexNumber))
If SetError(@error, @extended, IsDeclared("oMyError")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oMyError", $oMyError))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 477, False))
 	MsgBox(0, "AutoItCOM Test", "We intercepted a COM Error !" & @CRLF & @CRLF & 			"err.description is: " & @TAB & $oMyError.description & @CRLF & 			"err.windescription:" & @TAB & $oMyError.windescription & @CRLF & 			"err.number is: " & @TAB & $HexNumber & @CRLF & 			"err.lastdllerror is: " & @TAB & $oMyError.lastdllerror & @CRLF & 			"err.scriptline is: " & @TAB & $oMyError.scriptline & @CRLF & 			"err.source is: " & @TAB & $oMyError.source & @CRLF & 			"err.helpfile is: " & @TAB & $oMyError.helpfile & @CRLF & 			"err.helpcontext is: " & @TAB & $oMyError.helpcontext 			)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 477, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("oMyError")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oMyError", $oMyError))
If SetError(@error, @extended, IsDeclared("oMyError")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oMyError", $oMyError))
If SetError(@error, @extended, IsDeclared("HexNumber")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$HexNumber", $HexNumber))
If SetError(@error, @extended, IsDeclared("oMyError")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oMyError", $oMyError))
If SetError(@error, @extended, IsDeclared("oMyError")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oMyError", $oMyError))
If SetError(@error, @extended, IsDeclared("oMyError")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oMyError", $oMyError))
If SetError(@error, @extended, IsDeclared("oMyError")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oMyError", $oMyError))
If SetError(@error, @extended, IsDeclared("oMyError")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oMyError", $oMyError))
	;#ce

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 488, False))
	SetError(1) ; to check for after this function returns
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 488, False, @error, @extended))
EndFunc   ;==>MyErrFunc


SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 491, False))
Func RegistraAcquisto($s_dbname, $_query, ByRef $o_adoCon, $i_adoMDB = 1)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 491, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_dbname")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_dbname", $s_dbname))
If SetError(@error, @extended, IsDeclared("_query")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$_query", $_query))
If SetError(@error, @extended, IsDeclared("o_adoCon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoCon", $o_adoCon))
If SetError(@error, @extended, IsDeclared("i_adoMDB")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_adoMDB", $i_adoMDB))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 492, False))
	If Not IsObj($o_adoCon) Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 492, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoCon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoCon", $o_adoCon))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 493, False))
		AccessConnectConn($s_dbname, $o_adoCon)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 493, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_dbname")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_dbname", $s_dbname))
If SetError(@error, @extended, IsDeclared("o_adoCon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoCon", $o_adoCon))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 494, False))
		$i_NeedToCloseInFunc = 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 494, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_NeedToCloseInFunc")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_NeedToCloseInFunc", $i_NeedToCloseInFunc))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 495, False))
	Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 495, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 496, False))
		$i_NeedToCloseInFunc = 0
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 496, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_NeedToCloseInFunc")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_NeedToCloseInFunc", $i_NeedToCloseInFunc))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 497, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 497, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 498, False))
	$o_adoRs = ObjCreate("ADODB.Recordset")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 498, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 499, False))
	$o_adoRs.CursorType = $adOpenKeyset
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 499, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))
If SetError(@error, @extended, IsDeclared("adOpenKeyset")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$adOpenKeyset", $adOpenKeyset))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 500, False))
	$o_adoRs.LockType = $adLockOptimistic
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 500, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))
If SetError(@error, @extended, IsDeclared("adLockOptimistic")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$adLockOptimistic", $adLockOptimistic))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 501, False))
	$o_adoRs.Open($_query, $o_adoCon)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 501, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))
If SetError(@error, @extended, IsDeclared("_query")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$_query", $_query))
If SetError(@error, @extended, IsDeclared("o_adoCon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoCon", $o_adoCon))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 502, False))
	With $o_adoRs
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 502, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 503, False))
		If Not $o_adoRs.RecordCount Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 503, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 504, False))
			$sMsg = "Tabella ACQUISTI vuota. Elaborazione abortita"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 504, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("sMsg")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sMsg", $sMsg))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 505, False))
			$iRetValue = _ExtMsgBox($EMB_ICONSTOP, "OK", "Errore", $sMsg)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 505, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("iRetValue")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iRetValue", $iRetValue))
If SetError(@error, @extended, IsDeclared("EMB_ICONSTOP")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$EMB_ICONSTOP", $EMB_ICONSTOP))
If SetError(@error, @extended, IsDeclared("sMsg")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sMsg", $sMsg))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 506, False))
			Return SetError(1, 0, 0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 506, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 507, False))
		EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 507, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 508, False))
		$o_adoRs.AddNew
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 508, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 509, False))
		$o_adoRs.Fields("ID_ACQ") = $s_work_ID_ACQ
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 509, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))
If SetError(@error, @extended, IsDeclared("s_work_ID_ACQ")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_ID_ACQ", $s_work_ID_ACQ))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 510, False))
		$o_adoRs.Fields("ANNO_CONTABILE") = $s_ACQUISTI_ANNO_CONTABILE
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 510, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_ANNO_CONTABILE")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_ANNO_CONTABILE", $s_ACQUISTI_ANNO_CONTABILE))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 511, False))
		$o_adoRs.Fields("DOC_DI_CARICO_NUMERO") = $s_ACQUISTI_DOC_DI_CARICO_NUMERO
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 511, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_DOC_DI_CARICO_NUMERO")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_DOC_DI_CARICO_NUMERO", $s_ACQUISTI_DOC_DI_CARICO_NUMERO))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 512, False))
		$o_adoRs.Fields("DOC_DI_CARICO_DATA") = $s_ACQUISTI_DATA_ACQUISTO
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 512, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_DATA_ACQUISTO")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_DATA_ACQUISTO", $s_ACQUISTI_DATA_ACQUISTO))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 513, False))
		$o_adoRs.Fields("DESCRIZIONE") = $s_ACQUISTI_DESCRIZIONE
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 513, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_DESCRIZIONE")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_DESCRIZIONE", $s_ACQUISTI_DESCRIZIONE))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 514, False))
		$o_adoRs.Fields("NUMERO_PEZZI") = $s_ACQUISTI_NUMERO_PEZZI
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 514, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_NUMERO_PEZZI")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_NUMERO_PEZZI", $s_ACQUISTI_NUMERO_PEZZI))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 515, False))
		$o_adoRs.Fields("DATA_ACQUISTO") = $s_ACQUISTI_DATA_ACQUISTO
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 515, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_DATA_ACQUISTO")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_DATA_ACQUISTO", $s_ACQUISTI_DATA_ACQUISTO))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 516, False))
		$o_adoRs.Fields("FORNITORE") = $s_ACQUISTI_FORNITORE
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 516, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_FORNITORE")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_FORNITORE", $s_ACQUISTI_FORNITORE))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 517, False))
		$o_adoRs.Fields("VALUTA") = $s_work_Valuta
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 517, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))
If SetError(@error, @extended, IsDeclared("s_work_Valuta")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_Valuta", $s_work_Valuta))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 518, False))
		$o_adoRs.Fields("IMPORTO_ACQ_VALUTA") = $s_ACQUISTI_IMPORTO_ACQ_VALUTA
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 518, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_IMPORTO_ACQ_VALUTA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_IMPORTO_ACQ_VALUTA", $s_ACQUISTI_IMPORTO_ACQ_VALUTA))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 519, False))
		$o_adoRs.Fields("SEH_ACQ_VALUTA") = $s_ACQUISTI_SEH_ACQ_VALUTA
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 519, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_SEH_ACQ_VALUTA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_SEH_ACQ_VALUTA", $s_ACQUISTI_SEH_ACQ_VALUTA))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 520, False))
		$o_adoRs.Fields("CTV_ACQ_EURO") = $s_ACQUISTI_CTV_ACQ_EURO
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 520, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_CTV_ACQ_EURO")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_CTV_ACQ_EURO", $s_ACQUISTI_CTV_ACQ_EURO))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 521, False))
		$o_adoRs.Fields("CODICE_UNIVOCO_PAYPAL") = $s_ACQUISTI_CODICE_UNIVOCO_PAYPAL
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 521, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_CODICE_UNIVOCO_PAYPAL")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_CODICE_UNIVOCO_PAYPAL", $s_ACQUISTI_CODICE_UNIVOCO_PAYPAL))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 522, False))
		$o_adoRs.Fields("DATA_PAGAMENTO") = $s_ACQUISTI_DATA_PAGAMENTO
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 522, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_DATA_PAGAMENTO")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_DATA_PAGAMENTO", $s_ACQUISTI_DATA_PAGAMENTO))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 523, False))
		$o_adoRs.Fields("PAGAMENTO_A_MEZZO") = "1"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 523, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 524, False))
		If $i_sw_PBL Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 524, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_sw_PBL")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_sw_PBL", $i_sw_PBL))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 525, False))
			$o_adoRs.Fields("NOTE") = $s_ACQUISTI_DESCRIZIONE
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 525, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_DESCRIZIONE")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_DESCRIZIONE", $s_ACQUISTI_DESCRIZIONE))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 526, False))
		EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 526, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 527, False))
		$o_adoRs.Update
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 527, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))


SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 529, False))
	EndWith
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 529, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 530, False))
	$o_adoRs.Close
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 530, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 531, False))
	If $i_NeedToCloseInFunc Then $o_adoCon.Close
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 531, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_NeedToCloseInFunc")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_NeedToCloseInFunc", $i_NeedToCloseInFunc))
If SetError(@error, @extended, IsDeclared("o_adoCon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoCon", $o_adoCon))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 532, False))
	Return 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 532, False, @error, @extended))
EndFunc   ;==>RegistraAcquisto


SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 535, False))
Func RecordSearchLast($s_dbname, $_query, ByRef $o_adoCon, $i_adoMDB = 1)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 535, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_dbname")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_dbname", $s_dbname))
If SetError(@error, @extended, IsDeclared("_query")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$_query", $_query))
If SetError(@error, @extended, IsDeclared("o_adoCon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoCon", $o_adoCon))
If SetError(@error, @extended, IsDeclared("i_adoMDB")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_adoMDB", $i_adoMDB))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 536, False))
	If Not IsObj($o_adoCon) Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 536, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoCon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoCon", $o_adoCon))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 537, False))
		AccessConnectConn($s_dbname, $o_adoCon)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 537, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_dbname")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_dbname", $s_dbname))
If SetError(@error, @extended, IsDeclared("o_adoCon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoCon", $o_adoCon))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 538, False))
		$i_NeedToCloseInFunc = 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 538, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_NeedToCloseInFunc")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_NeedToCloseInFunc", $i_NeedToCloseInFunc))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 539, False))
	Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 539, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 540, False))
		$i_NeedToCloseInFunc = 0
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 540, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_NeedToCloseInFunc")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_NeedToCloseInFunc", $i_NeedToCloseInFunc))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 541, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 541, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 542, False))
	$o_adoRs = ObjCreate("ADODB.Recordset")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 542, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 543, False))
	$o_adoRs.CursorType = $adOpenKeyset
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 543, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))
If SetError(@error, @extended, IsDeclared("adOpenKeyset")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$adOpenKeyset", $adOpenKeyset))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 544, False))
	$o_adoRs.LockType = $adLockOptimistic
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 544, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))
If SetError(@error, @extended, IsDeclared("adLockOptimistic")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$adLockOptimistic", $adLockOptimistic))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 545, False))
	$o_adoRs.Open($_query, $o_adoCon)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 545, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))
If SetError(@error, @extended, IsDeclared("_query")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$_query", $_query))
If SetError(@error, @extended, IsDeclared("o_adoCon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoCon", $o_adoCon))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 546, False))
	With $o_adoRs
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 546, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 547, False))
		If Not $o_adoRs.RecordCount Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 547, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 548, False))
			$sMsg = "La tabella Acquisti � vuota. Elaborazione abortita"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 548, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("sMsg")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sMsg", $sMsg))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 549, False))
			$iRetValue = _ExtMsgBox($EMB_ICONSTOP, "OK", "Errore", $sMsg)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 549, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("iRetValue")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iRetValue", $iRetValue))
If SetError(@error, @extended, IsDeclared("EMB_ICONSTOP")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$EMB_ICONSTOP", $EMB_ICONSTOP))
If SetError(@error, @extended, IsDeclared("sMsg")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sMsg", $sMsg))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 550, False))
			Return SetError(1, 0, 0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 550, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 551, False))
		EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 551, False, @error, @extended))


SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 553, False))
		$o_adoRs.MoveLast
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 553, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 554, False))
		$s_ACQUISTI_ID_ACQ = $o_adoRs("ID_ACQ").Value
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 554, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_ID_ACQ")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_ID_ACQ", $s_ACQUISTI_ID_ACQ))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 555, False))
		$s_ACQUISTI_ANNO_CONTABILE = $o_adoRs("ANNO_CONTABILE").Value
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 555, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_ANNO_CONTABILE")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_ANNO_CONTABILE", $s_ACQUISTI_ANNO_CONTABILE))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 556, False))
		$s_ACQUISTI_DOC_DI_CARICO_NUMERO = $o_adoRs("DOC_DI_CARICO_NUMERO").Value
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 556, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_DOC_DI_CARICO_NUMERO")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_DOC_DI_CARICO_NUMERO", $s_ACQUISTI_DOC_DI_CARICO_NUMERO))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))


SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 558, False))
	EndWith
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 558, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 559, False))
	$o_adoRs.Close
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 559, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 560, False))
	If $i_NeedToCloseInFunc Then $o_adoCon.Close
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 560, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_NeedToCloseInFunc")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_NeedToCloseInFunc", $i_NeedToCloseInFunc))
If SetError(@error, @extended, IsDeclared("o_adoCon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoCon", $o_adoCon))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 561, False))
	Return 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 561, False, @error, @extended))
EndFunc   ;==>RecordSearchLast


SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 564, False))
Func IncrementaID_ACQ($s_ACQUISTI_ID_ACQ, $s_ACQUISTI_DATA_ACQUISTO)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 564, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_ID_ACQ")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_ID_ACQ", $s_ACQUISTI_ID_ACQ))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_DATA_ACQUISTO")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_DATA_ACQUISTO", $s_ACQUISTI_DATA_ACQUISTO))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 565, False))
	local $s_workID
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 565, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_workID")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_workID", $s_workID))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 566, False))
	local $s_workID_anno
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 566, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_workID_anno")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_workID_anno", $s_workID_anno))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 567, False))
	local $s_workID_mese
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 567, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_workID_mese")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_workID_mese", $s_workID_mese))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 568, False))
	local $s_workID_prog
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 568, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_workID_prog")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_workID_prog", $s_workID_prog))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 569, False))
	local $S_workData_mese
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 569, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("S_workData_mese")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$S_workData_mese", $S_workData_mese))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 570, False))
	local $S_workData_anno
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 570, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("S_workData_anno")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$S_workData_anno", $S_workData_anno))


SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 572, False))
	$s_workID_anno = StringLeft($s_ACQUISTI_ID_ACQ, 4)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 572, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_workID_anno")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_workID_anno", $s_workID_anno))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_ID_ACQ")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_ID_ACQ", $s_ACQUISTI_ID_ACQ))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 573, False))
	$s_workID_mese = StringMid($s_ACQUISTI_ID_ACQ, 5, 2)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 573, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_workID_mese")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_workID_mese", $s_workID_mese))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_ID_ACQ")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_ID_ACQ", $s_ACQUISTI_ID_ACQ))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 574, False))
	$s_workID_prog = StringRight($s_ACQUISTI_ID_ACQ, 2)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 574, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_workID_prog")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_workID_prog", $s_workID_prog))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_ID_ACQ")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_ID_ACQ", $s_ACQUISTI_ID_ACQ))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 575, False))
	$S_workData_mese = StringMid($s_ACQUISTI_DATA_ACQUISTO, 4, 2)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 575, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("S_workData_mese")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$S_workData_mese", $S_workData_mese))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_DATA_ACQUISTO")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_DATA_ACQUISTO", $s_ACQUISTI_DATA_ACQUISTO))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 576, False))
	$S_workData_anno = StringRight($s_ACQUISTI_DATA_ACQUISTO, 4)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 576, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("S_workData_anno")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$S_workData_anno", $S_workData_anno))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_DATA_ACQUISTO")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_DATA_ACQUISTO", $s_ACQUISTI_DATA_ACQUISTO))
	
	Select
		case $s_workID_anno = $S_workData_anno

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 580, False))
			If $s_workID_mese = $S_workData_mese Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 580, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_workID_mese")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_workID_mese", $s_workID_mese))
If SetError(@error, @extended, IsDeclared("S_workData_mese")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$S_workData_mese", $S_workData_mese))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 581, False))
				$s_workID_prog = $s_workID_prog + 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 581, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_workID_prog")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_workID_prog", $s_workID_prog))
If SetError(@error, @extended, IsDeclared("s_workID_prog")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_workID_prog", $s_workID_prog))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 582, False))
			Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 582, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 583, False))
				$s_workID_mese = $S_workData_mese
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 583, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_workID_mese")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_workID_mese", $s_workID_mese))
If SetError(@error, @extended, IsDeclared("S_workData_mese")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$S_workData_mese", $S_workData_mese))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 584, False))
				$s_workID_prog = "01"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 584, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_workID_prog")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_workID_prog", $s_workID_prog))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 585, False))
			EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 585, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 586, False))
		case $s_workID_anno <> $S_workData_anno
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 586, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_workID_anno")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_workID_anno", $s_workID_anno))
If SetError(@error, @extended, IsDeclared("S_workData_anno")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$S_workData_anno", $S_workData_anno))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 587, False))
			$s_workID_anno = $S_workData_anno
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 587, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_workID_anno")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_workID_anno", $s_workID_anno))
If SetError(@error, @extended, IsDeclared("S_workData_anno")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$S_workData_anno", $S_workData_anno))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 588, False))
			$s_workID_mese = $S_workData_mese
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 588, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_workID_mese")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_workID_mese", $s_workID_mese))
If SetError(@error, @extended, IsDeclared("S_workData_mese")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$S_workData_mese", $S_workData_mese))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 589, False))
			$s_workID_prog = "01"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 589, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_workID_prog")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_workID_prog", $s_workID_prog))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 590, False))
			$s_ACQUISTI_ANNO_CONTABILE = $S_workData_anno
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 590, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_ANNO_CONTABILE")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_ANNO_CONTABILE", $s_ACQUISTI_ANNO_CONTABILE))
If SetError(@error, @extended, IsDeclared("S_workData_anno")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$S_workData_anno", $S_workData_anno))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 591, False))
			$s_ACQUISTI_DOC_DI_CARICO_NUMERO = "01"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 591, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_DOC_DI_CARICO_NUMERO")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_DOC_DI_CARICO_NUMERO", $s_ACQUISTI_DOC_DI_CARICO_NUMERO))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 592, False))
			$sMsg = "Sono stati impostati i dati per un nuovo anno contabile"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 592, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("sMsg")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sMsg", $sMsg))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 593, False))
			$iRetValue = _ExtMsgBox($EMB_ICONINFO, "OK", "Informazione", $sMsg)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 593, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("iRetValue")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iRetValue", $iRetValue))
If SetError(@error, @extended, IsDeclared("EMB_ICONINFO")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$EMB_ICONINFO", $EMB_ICONINFO))
If SetError(@error, @extended, IsDeclared("sMsg")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sMsg", $sMsg))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 594, False))
	EndSelect
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 594, False, @error, @extended))
	

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 596, False))
	local $i_lung
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 596, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_lung")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_lung", $i_lung))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 597, False))
	$i_lung = StringLen($s_workID_mese)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 597, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_lung")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_lung", $i_lung))
If SetError(@error, @extended, IsDeclared("s_workID_mese")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_workID_mese", $s_workID_mese))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 598, False))
	If $i_lung < 2 Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 598, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_lung")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_lung", $i_lung))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 599, False))
		$s_workID_mese = "0" & $s_workID_mese
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 599, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_workID_mese")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_workID_mese", $s_workID_mese))
If SetError(@error, @extended, IsDeclared("s_workID_mese")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_workID_mese", $s_workID_mese))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 600, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 600, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 601, False))
	$i_lung = StringLen($s_workID_prog)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 601, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_lung")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_lung", $i_lung))
If SetError(@error, @extended, IsDeclared("s_workID_prog")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_workID_prog", $s_workID_prog))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 602, False))
	If $i_lung < 2 Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 602, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_lung")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_lung", $i_lung))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 603, False))
		$s_workID_prog = "0" & $s_workID_prog
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 603, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_workID_prog")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_workID_prog", $s_workID_prog))
If SetError(@error, @extended, IsDeclared("s_workID_prog")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_workID_prog", $s_workID_prog))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 604, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 604, False, @error, @extended))
	

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 606, False))
	$s_workID = $s_workID_anno & $s_workID_mese & $s_workID_prog
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 606, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_workID")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_workID", $s_workID))
If SetError(@error, @extended, IsDeclared("s_workID_anno")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_workID_anno", $s_workID_anno))
If SetError(@error, @extended, IsDeclared("s_workID_mese")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_workID_mese", $s_workID_mese))
If SetError(@error, @extended, IsDeclared("s_workID_prog")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_workID_prog", $s_workID_prog))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 607, False))
	Return $s_workID
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 607, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_workID")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_workID", $s_workID))
	
EndFunc   ;==>IncrementaID_ACQ


SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 611, False))
Func AccessCloseConn($o_adoCon)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 611, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoCon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoCon", $o_adoCon))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 612, False))
	$o_adoCon.Close
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 612, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoCon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoCon", $o_adoCon))
EndFunc   ;==>AccessCloseConn


SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 615, False))
Func RicercaID_Fornitore($s_dbname, $_query, ByRef $o_adoCon, $i_adoMDB = 1)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 615, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_dbname")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_dbname", $s_dbname))
If SetError(@error, @extended, IsDeclared("_query")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$_query", $_query))
If SetError(@error, @extended, IsDeclared("o_adoCon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoCon", $o_adoCon))
If SetError(@error, @extended, IsDeclared("i_adoMDB")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_adoMDB", $i_adoMDB))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 616, False))
	If Not IsObj($o_adoCon) Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 616, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoCon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoCon", $o_adoCon))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 617, False))
		AccessConnectConn($s_dbname, $o_adoCon)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 617, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_dbname")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_dbname", $s_dbname))
If SetError(@error, @extended, IsDeclared("o_adoCon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoCon", $o_adoCon))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 618, False))
		$i_NeedToCloseInFunc = 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 618, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_NeedToCloseInFunc")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_NeedToCloseInFunc", $i_NeedToCloseInFunc))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 619, False))
	Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 619, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 620, False))
		$i_NeedToCloseInFunc = 0
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 620, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_NeedToCloseInFunc")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_NeedToCloseInFunc", $i_NeedToCloseInFunc))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 621, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 621, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 622, False))
	$o_adoRs = ObjCreate("ADODB.Recordset")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 622, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 623, False))
	$o_adoRs.CursorType = $adOpenKeyset
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 623, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))
If SetError(@error, @extended, IsDeclared("adOpenKeyset")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$adOpenKeyset", $adOpenKeyset))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 624, False))
	$o_adoRs.LockType = $adLockOptimistic
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 624, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))
If SetError(@error, @extended, IsDeclared("adLockOptimistic")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$adLockOptimistic", $adLockOptimistic))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 625, False))
	$o_adoRs.Open($_query, $o_adoCon)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 625, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))
If SetError(@error, @extended, IsDeclared("_query")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$_query", $_query))
If SetError(@error, @extended, IsDeclared("o_adoCon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoCon", $o_adoCon))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 626, False))
	With $o_adoRs
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 626, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 627, False))
		If Not $o_adoRs.RecordCount Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 627, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 628, False))
			$sMsg = "Il fornitore non e' censito!"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 628, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("sMsg")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sMsg", $sMsg))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 629, False))
			$iRetValue = _ExtMsgBox($EMB_ICONINFO, "OK", "Attenzione", $sMsg)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 629, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("iRetValue")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iRetValue", $iRetValue))
If SetError(@error, @extended, IsDeclared("EMB_ICONINFO")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$EMB_ICONINFO", $EMB_ICONINFO))
If SetError(@error, @extended, IsDeclared("sMsg")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sMsg", $sMsg))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 630, False))
			Return SetError(1, 0, 0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 630, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 631, False))
		EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 631, False, @error, @extended))


SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 633, False))
		$s_work_ID_FORNITORE = $o_adoRs("ID_FORNITORE").Value
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 633, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_ID_FORNITORE")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_ID_FORNITORE", $s_work_ID_FORNITORE))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))


SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 635, False))
	EndWith
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 635, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 636, False))
	$o_adoRs.Close
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 636, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 637, False))
	If $i_NeedToCloseInFunc Then $o_adoCon.Close
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 637, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_NeedToCloseInFunc")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_NeedToCloseInFunc", $i_NeedToCloseInFunc))
If SetError(@error, @extended, IsDeclared("o_adoCon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoCon", $o_adoCon))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 638, False))
	Return $s_work_ID_FORNITORE
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 638, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_ID_FORNITORE")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_ID_FORNITORE", $s_work_ID_FORNITORE))
EndFunc   ;==>RicercaID_Fornitore


SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 641, False))
Func RicercaDescr_Valuta($s_dbname, $_query, ByRef $o_adoCon, $i_adoMDB = 1)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 641, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_dbname")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_dbname", $s_dbname))
If SetError(@error, @extended, IsDeclared("_query")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$_query", $_query))
If SetError(@error, @extended, IsDeclared("o_adoCon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoCon", $o_adoCon))
If SetError(@error, @extended, IsDeclared("i_adoMDB")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_adoMDB", $i_adoMDB))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 642, False))
	If Not IsObj($o_adoCon) Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 642, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoCon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoCon", $o_adoCon))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 643, False))
		AccessConnectConn($s_dbname, $o_adoCon)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 643, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_dbname")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_dbname", $s_dbname))
If SetError(@error, @extended, IsDeclared("o_adoCon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoCon", $o_adoCon))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 644, False))
		$i_NeedToCloseInFunc = 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 644, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_NeedToCloseInFunc")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_NeedToCloseInFunc", $i_NeedToCloseInFunc))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 645, False))
	Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 645, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 646, False))
		$i_NeedToCloseInFunc = 0
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 646, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_NeedToCloseInFunc")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_NeedToCloseInFunc", $i_NeedToCloseInFunc))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 647, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 647, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 648, False))
	$o_adoRs = ObjCreate("ADODB.Recordset")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 648, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 649, False))
	$o_adoRs.CursorType = $adOpenKeyset
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 649, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))
If SetError(@error, @extended, IsDeclared("adOpenKeyset")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$adOpenKeyset", $adOpenKeyset))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 650, False))
	$o_adoRs.LockType = $adLockOptimistic
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 650, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))
If SetError(@error, @extended, IsDeclared("adLockOptimistic")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$adLockOptimistic", $adLockOptimistic))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 651, False))
	$o_adoRs.Open($_query, $o_adoCon)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 651, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))
If SetError(@error, @extended, IsDeclared("_query")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$_query", $_query))
If SetError(@error, @extended, IsDeclared("o_adoCon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoCon", $o_adoCon))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 652, False))
	With $o_adoRs
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 652, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 653, False))
		If Not $o_adoRs.RecordCount Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 653, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 654, False))
			$sMsg = "La valuta non e' censita. Elaborazione abortita"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 654, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("sMsg")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sMsg", $sMsg))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 655, False))
			$iRetValue = _ExtMsgBox($EMB_ICONSTOP, "OK", "Errore", $sMsg)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 655, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("iRetValue")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iRetValue", $iRetValue))
If SetError(@error, @extended, IsDeclared("EMB_ICONSTOP")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$EMB_ICONSTOP", $EMB_ICONSTOP))
If SetError(@error, @extended, IsDeclared("sMsg")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sMsg", $sMsg))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 656, False))
			Return SetError(1, 0, 0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 656, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 657, False))
		EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 657, False, @error, @extended))


SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 659, False))
		$s_work_DESCR_VALUTA = $o_adoRs("DESCRIZIONE_VALUTA").Value
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 659, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_DESCR_VALUTA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_DESCR_VALUTA", $s_work_DESCR_VALUTA))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))


SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 661, False))
	EndWith
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 661, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 662, False))
	$o_adoRs.Close
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 662, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 663, False))
	If $i_NeedToCloseInFunc Then $o_adoCon.Close
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 663, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_NeedToCloseInFunc")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_NeedToCloseInFunc", $i_NeedToCloseInFunc))
If SetError(@error, @extended, IsDeclared("o_adoCon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoCon", $o_adoCon))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 664, False))
	Return $s_work_DESCR_VALUTA
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 664, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_DESCR_VALUTA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_DESCR_VALUTA", $s_work_DESCR_VALUTA))
EndFunc   ;==>RicercaDescr_Valuta


SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 667, False))
Func RegistraMovimento($s_dbname, $_query, ByRef $o_adoCon, $i_adoMDB = 1)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 667, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_dbname")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_dbname", $s_dbname))
If SetError(@error, @extended, IsDeclared("_query")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$_query", $_query))
If SetError(@error, @extended, IsDeclared("o_adoCon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoCon", $o_adoCon))
If SetError(@error, @extended, IsDeclared("i_adoMDB")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_adoMDB", $i_adoMDB))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 668, False))
	If Not IsObj($o_adoCon) Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 668, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoCon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoCon", $o_adoCon))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 669, False))
		AccessConnectConn($s_dbname, $o_adoCon)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 669, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_dbname")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_dbname", $s_dbname))
If SetError(@error, @extended, IsDeclared("o_adoCon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoCon", $o_adoCon))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 670, False))
		$i_NeedToCloseInFunc = 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 670, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_NeedToCloseInFunc")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_NeedToCloseInFunc", $i_NeedToCloseInFunc))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 671, False))
	Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 671, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 672, False))
		$i_NeedToCloseInFunc = 0
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 672, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_NeedToCloseInFunc")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_NeedToCloseInFunc", $i_NeedToCloseInFunc))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 673, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 673, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 674, False))
	$o_adoRs = ObjCreate("ADODB.Recordset")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 674, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 675, False))
	$o_adoRs.CursorType = $adOpenKeyset
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 675, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))
If SetError(@error, @extended, IsDeclared("adOpenKeyset")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$adOpenKeyset", $adOpenKeyset))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 676, False))
	$o_adoRs.LockType = $adLockOptimistic
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 676, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))
If SetError(@error, @extended, IsDeclared("adLockOptimistic")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$adLockOptimistic", $adLockOptimistic))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 677, False))
	$o_adoRs.Open($_query, $o_adoCon)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 677, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))
If SetError(@error, @extended, IsDeclared("_query")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$_query", $_query))
If SetError(@error, @extended, IsDeclared("o_adoCon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoCon", $o_adoCon))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 678, False))
	With $o_adoRs
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 678, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 679, False))
		If Not $o_adoRs.RecordCount Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 679, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 680, False))
			$sMsg = "Tabella MOVIMENTI vuota. Elaborazione abortita"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 680, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("sMsg")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sMsg", $sMsg))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 681, False))
			$iRetValue = _ExtMsgBox($EMB_ICONSTOP, "OK", "Errore", $sMsg)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 681, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("iRetValue")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iRetValue", $iRetValue))
If SetError(@error, @extended, IsDeclared("EMB_ICONSTOP")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$EMB_ICONSTOP", $EMB_ICONSTOP))
If SetError(@error, @extended, IsDeclared("sMsg")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sMsg", $sMsg))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 682, False))
			Return SetError(1, 0, 0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 682, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 683, False))
		EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 683, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 684, False))
		$o_adoRs.AddNew
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 684, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 685, False))
		$o_adoRs.Fields("DATA_MOV") = $s_ACQUISTI_DATA_ACQUISTO
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 685, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_DATA_ACQUISTO")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_DATA_ACQUISTO", $s_ACQUISTI_DATA_ACQUISTO))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 686, False))
		$o_adoRs.Fields("CAUSALE") = "ACE"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 686, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 687, False))
		$o_adoRs.Fields("IMP_DARE") = $s_ACQUISTI_CTV_ACQ_EURO
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 687, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))
If SetError(@error, @extended, IsDeclared("s_ACQUISTI_CTV_ACQ_EURO")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ACQUISTI_CTV_ACQ_EURO", $s_ACQUISTI_CTV_ACQ_EURO))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 688, False))
		$o_adoRs.Fields("RIFERIMENTO_ACQ") = $s_work_ID_ACQ
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 688, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))
If SetError(@error, @extended, IsDeclared("s_work_ID_ACQ")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_ID_ACQ", $s_work_ID_ACQ))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 689, False))
		If $i_sw_PBL Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 689, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_sw_PBL")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_sw_PBL", $i_sw_PBL))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 690, False))
			$o_adoRs.Fields("NOTE") = "S.& H."
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 690, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 691, False))
		EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 691, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 692, False))
		$o_adoRs.Update
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 692, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))


SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 694, False))
	EndWith
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 694, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 695, False))
	$o_adoRs.Close
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 695, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 696, False))
	If $i_NeedToCloseInFunc Then $o_adoCon.Close
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 696, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_NeedToCloseInFunc")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_NeedToCloseInFunc", $i_NeedToCloseInFunc))
If SetError(@error, @extended, IsDeclared("o_adoCon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoCon", $o_adoCon))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 697, False))
	Return 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 697, False, @error, @extended))
EndFunc   ;==>RegistraMovimento


SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 700, False))
Func RegistraFornitore($s_dbname, $_query, ByRef $o_adoCon, $i_adoMDB = 1)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 700, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_dbname")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_dbname", $s_dbname))
If SetError(@error, @extended, IsDeclared("_query")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$_query", $_query))
If SetError(@error, @extended, IsDeclared("o_adoCon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoCon", $o_adoCon))
If SetError(@error, @extended, IsDeclared("i_adoMDB")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_adoMDB", $i_adoMDB))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 701, False))
	If Not IsObj($o_adoCon) Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 701, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoCon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoCon", $o_adoCon))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 702, False))
		AccessConnectConn($s_dbname, $o_adoCon)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 702, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_dbname")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_dbname", $s_dbname))
If SetError(@error, @extended, IsDeclared("o_adoCon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoCon", $o_adoCon))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 703, False))
		$i_NeedToCloseInFunc = 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 703, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_NeedToCloseInFunc")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_NeedToCloseInFunc", $i_NeedToCloseInFunc))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 704, False))
	Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 704, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 705, False))
		$i_NeedToCloseInFunc = 0
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 705, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_NeedToCloseInFunc")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_NeedToCloseInFunc", $i_NeedToCloseInFunc))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 706, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 706, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 707, False))
	$o_adoRs = ObjCreate("ADODB.Recordset")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 707, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 708, False))
	$o_adoRs.CursorType = $adOpenKeyset
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 708, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))
If SetError(@error, @extended, IsDeclared("adOpenKeyset")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$adOpenKeyset", $adOpenKeyset))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 709, False))
	$o_adoRs.LockType = $adLockOptimistic
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 709, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))
If SetError(@error, @extended, IsDeclared("adLockOptimistic")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$adLockOptimistic", $adLockOptimistic))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 710, False))
	$o_adoRs.Open($_query, $o_adoCon)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 710, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))
If SetError(@error, @extended, IsDeclared("_query")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$_query", $_query))
If SetError(@error, @extended, IsDeclared("o_adoCon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoCon", $o_adoCon))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 711, False))
	With $o_adoRs
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 711, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 712, False))
		If Not $o_adoRs.RecordCount Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 712, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 713, False))
			$sMsg = "Tabella FORNITORI vuota. Elaborazione abortita"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 713, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("sMsg")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sMsg", $sMsg))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 714, False))
			$iRetValue = _ExtMsgBox($EMB_ICONSTOP, "OK", "Errore", $sMsg)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 714, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("iRetValue")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iRetValue", $iRetValue))
If SetError(@error, @extended, IsDeclared("EMB_ICONSTOP")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$EMB_ICONSTOP", $EMB_ICONSTOP))
If SetError(@error, @extended, IsDeclared("sMsg")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sMsg", $sMsg))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 715, False))
			Return SetError(1, 0, 0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 715, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 716, False))
		EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 716, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 717, False))
		$o_adoRs.AddNew
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 717, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 718, False))
		$o_adoRs.Fields("COD_FORNITORE") = $s_work_nome
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 718, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))
If SetError(@error, @extended, IsDeclared("s_work_nome")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_nome", $s_work_nome))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 719, False))
		$o_adoRs.Fields("NICK_FORNITORE") = $s_work_nome
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 719, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))
If SetError(@error, @extended, IsDeclared("s_work_nome")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_nome", $s_work_nome))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 720, False))
		$o_adoRs.Fields("NOME") = $s_work_nome
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 720, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))
If SetError(@error, @extended, IsDeclared("s_work_nome")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_nome", $s_work_nome))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 721, False))
		$o_adoRs.Fields("EMAIL_FORNITORE") = $s_work_Email
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 721, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))
If SetError(@error, @extended, IsDeclared("s_work_Email")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_Email", $s_work_Email))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 722, False))
		$o_adoRs.Update
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 722, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))


SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 724, False))
	EndWith
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 724, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 725, False))
	$o_adoRs.Close
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 725, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 726, False))
	If $i_NeedToCloseInFunc Then $o_adoCon.Close
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 726, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_NeedToCloseInFunc")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_NeedToCloseInFunc", $i_NeedToCloseInFunc))
If SetError(@error, @extended, IsDeclared("o_adoCon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoCon", $o_adoCon))

SetError(@error, @extended, AutoIt_Debugger_NextLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 727, False))
	Return 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("H:\ISN AutoIt Studio\Projects\Elabora Acquisti Ebay via Paypal GUI\Elabora Acquisti Ebay via Paypal GUI.au3", "Elabora Acquisti Ebay via Paypal GUI.au3", 727, False, @error, @extended))
EndFunc   ;==>RegistraFornitore

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
   If $VariableName = "$s_versione" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_versione", $s_versione, $AutoItDebugger_ArrayIndexString, $VariableValue)
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
   If $VariableName = "$hVersione" Then
      AutoIt_Debugger_GetVariableFromEvent("$hVersione", $hVersione, $AutoItDebugger_ArrayIndexString, $VariableValue)
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
   If $VariableName = "$iIndex_Data" Then
      AutoIt_Debugger_GetVariableFromEvent("$iIndex_Data", $iIndex_Data, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$iIndex_Nome" Then
      AutoIt_Debugger_GetVariableFromEvent("$iIndex_Nome", $iIndex_Nome, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$iIndex_Tipo" Then
      AutoIt_Debugger_GetVariableFromEvent("$iIndex_Tipo", $iIndex_Tipo, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$iIndex_Codice_oggetto" Then
      AutoIt_Debugger_GetVariableFromEvent("$iIndex_Codice_oggetto", $iIndex_Codice_oggetto, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$iIndex_Tariffa" Then
      AutoIt_Debugger_GetVariableFromEvent("$iIndex_Tariffa", $iIndex_Tariffa, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$iIndex_Valuta" Then
      AutoIt_Debugger_GetVariableFromEvent("$iIndex_Valuta", $iIndex_Valuta, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$iIndex_Netto" Then
      AutoIt_Debugger_GetVariableFromEvent("$iIndex_Netto", $iIndex_Netto, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$iIndex_Codice_transazione_di_riferimento" Then
      AutoIt_Debugger_GetVariableFromEvent("$iIndex_Codice_transazione_di_riferimento", $iIndex_Codice_transazione_di_riferimento, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$iIndex_Codice_transazione" Then
      AutoIt_Debugger_GetVariableFromEvent("$iIndex_Codice_transazione", $iIndex_Codice_transazione, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$iIndex_Indirizzo_email" Then
      AutoIt_Debugger_GetVariableFromEvent("$iIndex_Indirizzo_email", $iIndex_Indirizzo_email, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$iIndex_URL_oggetto" Then
      AutoIt_Debugger_GetVariableFromEvent("$iIndex_URL_oggetto", $iIndex_URL_oggetto, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$iIndex_Titolo_oggetto" Then
      AutoIt_Debugger_GetVariableFromEvent("$iIndex_Titolo_oggetto", $iIndex_Titolo_oggetto, $AutoItDebugger_ArrayIndexString, $VariableValue)
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
   If $VariableName = "$s_work_fornitore" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_work_fornitore", $s_work_fornitore, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_works_tipo" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_works_tipo", $s_works_tipo, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_query" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_query", $s_query, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$h_FORNITORE_DATA" Then
      AutoIt_Debugger_GetVariableFromEvent("$h_FORNITORE_DATA", $h_FORNITORE_DATA, $AutoItDebugger_ArrayIndexString, $VariableValue)
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
   If $VariableName = "$s_work_nome" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_work_nome", $s_work_nome, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$i_cod_ritorno" Then
      AutoIt_Debugger_GetVariableFromEvent("$i_cod_ritorno", $i_cod_ritorno, $AutoItDebugger_ArrayIndexString, $VariableValue)
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
   If $VariableName = "$EMB_ICONINFO" Then
      AutoIt_Debugger_GetVariableFromEvent("$EMB_ICONINFO", $EMB_ICONINFO, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_works_tariffe" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_works_tariffe", $s_works_tariffe, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_work_URL_oggetto" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_work_URL_oggetto", $s_work_URL_oggetto, $AutoItDebugger_ArrayIndexString, $VariableValue)
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

