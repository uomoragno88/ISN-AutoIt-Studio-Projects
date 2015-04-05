Global $AutoItDebugger_Paused = 0
Global $AutoItDebugger_Quit = 0
Global $AutoItDebugger_Error
Global $AutoItDebugger_Extended
Global $AutoItDebuggerCommandWindowName = ""
Global $AutoItDebuggerCommandWindow
Global $AutoItDebuggerCommandWindowListbox
OnAutoItExitRegister("AutoIt_Debugger_OnAutoItExit")
AutoIt_Debugger_CreateMessageWindow()
$TempOriginalFileBeingDebuggedFileName = "CSV ebay parse.au3"
$TempOriginalFileBeingDebuggedFileFolder = "C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI"
$TempOriginalFileBeingDebuggedFilePath = "C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3"
AutoIt_Debugger_LoadFile("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3")
AutoIt_Debugger_DebugFile(@ScriptFullPath)

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 1, False))
#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 1, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 2, False))
#AutoIt3Wrapper_UseX64=n
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 2, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 3, False))
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 3, False, @error, @extended))
; #AutoIt3Wrapper_UseX64=n perche' le librerie sono a 32bit


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 6, False))
Global $oMyError = ObjEvent("AutoIt.Error", "MyErrFunc")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 6, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("oMyError")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oMyError", $oMyError))


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 8, False))
#Include "C:\Users\S522733\Documents\autoit_3_3_12\install\Include\File.au3"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 8, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 9, False))
#Include "C:\Users\S522733\Documents\autoit_3_3_12\install\Include\Misc.au3"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 9, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 10, False))
#Include "C:\Users\S522733\Documents\autoit_3_3_12\install\Include\Clipboard.au3"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 10, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 11, False))
#Include "C:\Users\S522733\Documents\autoit_3_3_12\install\Include\WindowsConstants.au3"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 11, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 12, False))
#Include "C:\Users\S522733\Documents\autoit_3_3_12\install\Include\Array.au3"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 12, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 13, False))
#Include "C:\Users\S522733\Documents\autoit_3_3_12\install\Include\StringConstants.au3"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 13, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 14, False))
#Include "C:\Users\S522733\Documents\autoit_3_3_12\install\Include\MsgBoxConstants.au3"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 14, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 15, False))
#Include "C:\Users\S522733\Documents\autoit_3_3_12\My_include\CSV_Function.au3"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 15, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 16, False))
#Include "C:\Users\S522733\Documents\autoit_3_3_12\My_include\AccessConstants.au3"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 16, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 17, False))
#Include "C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\Forms\GUI_Form.isf"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 17, False, @error, @extended))


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 19, False))
Global $s_provenienza
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 19, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_provenienza")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_provenienza", $s_provenienza))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 20, False))
$s_provenienza = "EBAY"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 20, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_provenienza")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_provenienza", $s_provenienza))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 21, False))
Global $s_ambiente
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 21, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ambiente")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ambiente", $s_ambiente))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 22, False))
$s_ambiente = "PRODUZIONE"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 22, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ambiente")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ambiente", $s_ambiente))


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 24, False))
GUICtrlSetState($hEbay_Image, $GUI_SHOW)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 24, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("hEbay_Image")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$hEbay_Image", $hEbay_Image))
If SetError(@error, @extended, IsDeclared("GUI_SHOW")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$GUI_SHOW", $GUI_SHOW))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 25, False))
GUICtrlSetState($hAmazon_Image, $GUI_HIDE)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 25, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("hAmazon_Image")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$hAmazon_Image", $hAmazon_Image))
If SetError(@error, @extended, IsDeclared("GUI_HIDE")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$GUI_HIDE", $GUI_HIDE))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 26, False))
GUICtrlSetState($hProduzione_Image, $GUI_SHOW)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 26, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("hProduzione_Image")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$hProduzione_Image", $hProduzione_Image))
If SetError(@error, @extended, IsDeclared("GUI_SHOW")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$GUI_SHOW", $GUI_SHOW))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 27, False))
GUICtrlSetState($hTest_Image, $GUI_HIDE)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 27, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("hTest_Image")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$hTest_Image", $hTest_Image))
If SetError(@error, @extended, IsDeclared("GUI_HIDE")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$GUI_HIDE", $GUI_HIDE))

;Options

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 30, False))
Opt("GUIOnEventMode", 1) ;Enable OnEvent functions notifications.
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 30, False, @error, @extended))


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 32, False))
GUISetState(@SW_SHOW, $p5) ;Shows a previously hidden window form
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 32, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("p5")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$p5", $p5))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 33, False))
GUISetOnEvent($GUI_EVENT_CLOSE, "Chiudi_click", $p5) ;dialog box being closed (either by defined button or system menu).
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 33, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("GUI_EVENT_CLOSE")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$GUI_EVENT_CLOSE", $GUI_EVENT_CLOSE))
If SetError(@error, @extended, IsDeclared("p5")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$p5", $p5))


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 35, False))
While 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 35, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 36, False))
	Sleep(20)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 36, False, @error, @extended))
	

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 38, False))
WEnd
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 38, False, @error, @extended))


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 40, False))
Func Chiudi_click() ; se cliccato il tasto "chiudi"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 40, False, @error, @extended))


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 42, False))
	Exit
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 42, False, @error, @extended))
EndFunc   ;==>chiudi


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 45, False))
Func Produzione_click()
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 45, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 46, False))
	If(GUICtrlRead($hProduzione) = $GUI_CHECKED) Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 46, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("hProduzione")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$hProduzione", $hProduzione))
If SetError(@error, @extended, IsDeclared("GUI_CHECKED")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$GUI_CHECKED", $GUI_CHECKED))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 47, False))
		$s_ambiente = "PRODUZIONE"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 47, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ambiente")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ambiente", $s_ambiente))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 48, False))
		GUICtrlSetState($hProduzione_Image, $GUI_SHOW)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 48, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("hProduzione_Image")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$hProduzione_Image", $hProduzione_Image))
If SetError(@error, @extended, IsDeclared("GUI_SHOW")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$GUI_SHOW", $GUI_SHOW))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 49, False))
		GUICtrlSetState($hTest_Image, $GUI_HIDE)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 49, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("hTest_Image")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$hTest_Image", $hTest_Image))
If SetError(@error, @extended, IsDeclared("GUI_HIDE")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$GUI_HIDE", $GUI_HIDE))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 50, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 50, False, @error, @extended))
EndFunc   ;==>Produzione_click


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 53, False))
Func Test_click()
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 53, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 54, False))
	If(GUICtrlRead($hTest) = $GUI_CHECKED) Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 54, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("hTest")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$hTest", $hTest))
If SetError(@error, @extended, IsDeclared("GUI_CHECKED")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$GUI_CHECKED", $GUI_CHECKED))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 55, False))
		$s_ambiente = "TEST"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 55, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ambiente")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ambiente", $s_ambiente))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 56, False))
		GUICtrlSetState($hProduzione_Image, $GUI_HIDE)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 56, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("hProduzione_Image")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$hProduzione_Image", $hProduzione_Image))
If SetError(@error, @extended, IsDeclared("GUI_HIDE")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$GUI_HIDE", $GUI_HIDE))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 57, False))
		GUICtrlSetState($hTest_Image, $GUI_SHOW)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 57, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("hTest_Image")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$hTest_Image", $hTest_Image))
If SetError(@error, @extended, IsDeclared("GUI_SHOW")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$GUI_SHOW", $GUI_SHOW))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 58, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 58, False, @error, @extended))
EndFunc   ;==>Test_click


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 61, False))
Func Test_Banca_click()
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 61, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 62, False))
	If(GUICtrlRead($hTest_Banca) = $GUI_CHECKED) Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 62, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("hTest_Banca")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$hTest_Banca", $hTest_Banca))
If SetError(@error, @extended, IsDeclared("GUI_CHECKED")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$GUI_CHECKED", $GUI_CHECKED))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 63, False))
		$s_ambiente = "TESTBANCA"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 63, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ambiente")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ambiente", $s_ambiente))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 64, False))
		GUICtrlSetState($hProduzione_Image, $GUI_HIDE)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 64, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("hProduzione_Image")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$hProduzione_Image", $hProduzione_Image))
If SetError(@error, @extended, IsDeclared("GUI_HIDE")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$GUI_HIDE", $GUI_HIDE))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 65, False))
		GUICtrlSetState($hTest_Image, $GUI_SHOW)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 65, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("hTest_Image")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$hTest_Image", $hTest_Image))
If SetError(@error, @extended, IsDeclared("GUI_SHOW")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$GUI_SHOW", $GUI_SHOW))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 66, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 66, False, @error, @extended))
EndFunc   ;==>Test_Banca_click


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 69, False))
Func Ebay_click()
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 69, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 70, False))
	If(GUICtrlRead($hEbay) = $GUI_CHECKED) Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 70, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("hEbay")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$hEbay", $hEbay))
If SetError(@error, @extended, IsDeclared("GUI_CHECKED")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$GUI_CHECKED", $GUI_CHECKED))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 71, False))
		$s_provenienza = "EBAY"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 71, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_provenienza")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_provenienza", $s_provenienza))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 72, False))
		GUICtrlSetState($hEbay_Image, $GUI_SHOW)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 72, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("hEbay_Image")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$hEbay_Image", $hEbay_Image))
If SetError(@error, @extended, IsDeclared("GUI_SHOW")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$GUI_SHOW", $GUI_SHOW))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 73, False))
		GUICtrlSetState($hAmazon_Image, $GUI_HIDE)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 73, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("hAmazon_Image")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$hAmazon_Image", $hAmazon_Image))
If SetError(@error, @extended, IsDeclared("GUI_HIDE")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$GUI_HIDE", $GUI_HIDE))


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 75, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 75, False, @error, @extended))
EndFunc   ;==>Ebay_click


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 78, False))
Func Amazon_click()
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 78, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 79, False))
	If(GUICtrlRead($hAmazon) = $GUI_CHECKED) Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 79, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("hAmazon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$hAmazon", $hAmazon))
If SetError(@error, @extended, IsDeclared("GUI_CHECKED")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$GUI_CHECKED", $GUI_CHECKED))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 80, False))
		$s_provenienza = "AMAZON"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 80, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_provenienza")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_provenienza", $s_provenienza))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 81, False))
		GUICtrlSetState($hEbay_Image, $GUI_HIDE)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 81, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("hEbay_Image")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$hEbay_Image", $hEbay_Image))
If SetError(@error, @extended, IsDeclared("GUI_HIDE")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$GUI_HIDE", $GUI_HIDE))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 82, False))
		GUICtrlSetState($hAmazon_Image, $GUI_SHOW)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 82, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("hAmazon_Image")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$hAmazon_Image", $hAmazon_Image))
If SetError(@error, @extended, IsDeclared("GUI_SHOW")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$GUI_SHOW", $GUI_SHOW))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 83, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 83, False, @error, @extended))
EndFunc   ;==>Amazon_click


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 86, False))
Func Prosegui_click()
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 86, False, @error, @extended))
Select
	Case $s_provenienza = "EBAY"

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 89, False))
		ConsoleWrite($s_provenienza & @CRLF)
SetError(@error, @extended, AutoIt_Debugger_SendConsoleWrite($s_provenienza & @CRLF))
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 89, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_provenienza")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_provenienza", $s_provenienza))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 90, False))
		ConsoleWrite($s_ambiente & @CRLF)
SetError(@error, @extended, AutoIt_Debugger_SendConsoleWrite($s_ambiente & @CRLF))
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 90, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ambiente")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ambiente", $s_ambiente))
;~ 		Tratta_Ebay()

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 92, False))
	Case $s_provenienza = "AMAZON"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 92, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_provenienza")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_provenienza", $s_provenienza))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 93, False))
		ConsoleWrite($s_provenienza & @CRLF)
SetError(@error, @extended, AutoIt_Debugger_SendConsoleWrite($s_provenienza & @CRLF))
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 93, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_provenienza")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_provenienza", $s_provenienza))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 94, False))
		ConsoleWrite($s_ambiente & @CRLF)
SetError(@error, @extended, AutoIt_Debugger_SendConsoleWrite($s_ambiente & @CRLF))
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 94, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ambiente")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ambiente", $s_ambiente))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 95, False))
		Tratta_Amazon($p5, $hArea_Comunicazioni)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 95, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("p5")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$p5", $p5))
If SetError(@error, @extended, IsDeclared("hArea_Comunicazioni")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$hArea_Comunicazioni", $hArea_Comunicazioni))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 96, False))
	Case Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 96, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 97, False))
		Exit
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 97, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 98, False))
EndSelect
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 98, False, @error, @extended))
EndFunc

;Func Copia_click
;EndFunc


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 104, False))
Func Tratta_Amazon($p5, $hArea_Comunicazioni)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 104, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("p5")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$p5", $p5))
If SetError(@error, @extended, IsDeclared("hArea_Comunicazioni")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$hArea_Comunicazioni", $hArea_Comunicazioni))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 105, False))
	Local $o_Con, $o_Rs
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 105, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_Con")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_Con", $o_Con))
If SetError(@error, @extended, IsDeclared("o_Rs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_Rs", $o_Rs))
	;DATA========================================================
	Select
		Case $s_ambiente = "TEST"

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 109, False))
			Local $s_dbname = "h:\archivi_test\bilancio.accdb"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 109, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_dbname")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_dbname", $s_dbname))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 110, False))
		Case $s_ambiente = "PRODUZIONE"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 110, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ambiente")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ambiente", $s_ambiente))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 111, False))
			Local $s_dbname = "G:\ilgrandeblek\archivi\bilancio.accdb"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 111, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_dbname")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_dbname", $s_dbname))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 112, False))
		Case $s_ambiente = "TESTBANCA"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 112, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ambiente")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ambiente", $s_ambiente))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 113, False))
			Local $s_dbname = "c:\users\s522733\documents\work\archivi\bilancio.accdb"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 113, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_dbname")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_dbname", $s_dbname))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 114, False))
		Case Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 114, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 115, False))
			Exit
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 115, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 116, False))
	EndSelect
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 116, False, @error, @extended))
	;Local $s_dbname = "h:\archivi_test\bilancio.accdb"
	;Local $s_dbname = "G:\ilgrandeblek\archivi\bilancio.accdb"

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 119, False))
	Local $s_Tablename = "Q_VENDITE"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 119, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_Tablename")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Tablename", $s_Tablename))
	;CONNECT=====================================================

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 121, False))
	AccessConnectConn($s_dbname, $o_Con, 0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 121, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_dbname")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_dbname", $s_dbname))
If SetError(@error, @extended, IsDeclared("o_Con")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_Con", $o_Con))


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 123, False))
	Local $a_distinta_Amazon
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 123, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("a_distinta_Amazon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$a_distinta_Amazon", $a_distinta_Amazon))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 124, False))
	Local $s_work_distinta_Amazon
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 124, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_distinta_Amazon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_distinta_Amazon", $s_work_distinta_Amazon))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 125, False))
	Local $i_offset
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 125, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_offset")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_offset", $i_offset))


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 127, False))
	MsgBox($MB_OK, "Copia", "Copia il contenuto della distinta di imballaggio di Amazon nella clipboard. " & @CRLF & "Quindi premi OK")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 127, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("MB_OK")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$MB_OK", $MB_OK))


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 129, False))
	$s_work_distinta_Amazon = ClipGet()
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 129, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_distinta_Amazon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_distinta_Amazon", $s_work_distinta_Amazon))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 130, False))
	$a_distinta_Amazon = StringSplit($s_work_distinta_Amazon, @CRLF, 1)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 130, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("a_distinta_Amazon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$a_distinta_Amazon", $a_distinta_Amazon))
If SetError(@error, @extended, IsDeclared("s_work_distinta_Amazon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_distinta_Amazon", $s_work_distinta_Amazon))
;~ 	_ArrayDisplay($a_distinta_Amazon)

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 132, False))
	If $a_distinta_Amazon[0] = 24 Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 132, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("a_distinta_Amazon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$a_distinta_Amazon", $a_distinta_Amazon))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 133, False))
		$i_offset = 0
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 133, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_offset")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_offset", $i_offset))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 134, False))
	Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 134, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 135, False))
		$i_offset = 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 135, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_offset")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_offset", $i_offset))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 136, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 136, False, @error, @extended))


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 138, False))
	Local $s_venditore = StringTrimLeft($a_distinta_Amazon[12 + $i_offset], 15)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 138, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_venditore")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_venditore", $s_venditore))
If SetError(@error, @extended, IsDeclared("a_distinta_Amazon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$a_distinta_Amazon", $a_distinta_Amazon))
If SetError(@error, @extended, IsDeclared("i_offset")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_offset", $i_offset))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 139, False))
	$s_venditore = StringStripWS($s_venditore, $STR_STRIPALL)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 139, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_venditore")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_venditore", $s_venditore))
If SetError(@error, @extended, IsDeclared("s_venditore")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_venditore", $s_venditore))
If SetError(@error, @extended, IsDeclared("STR_STRIPALL")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$STR_STRIPALL", $STR_STRIPALL))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 140, False))
	$s_venditore = StringUpper($s_venditore)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 140, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_venditore")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_venditore", $s_venditore))
If SetError(@error, @extended, IsDeclared("s_venditore")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_venditore", $s_venditore))


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 142, False))
	Local $a_Ordini_Aggiornati[10]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 142, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("a_Ordini_Aggiornati")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$a_Ordini_Aggiornati", $a_Ordini_Aggiornati))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 143, False))
	Local $i_Ordini_Aggiornati
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 143, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_Ordini_Aggiornati")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_Ordini_Aggiornati", $i_Ordini_Aggiornati))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 144, False))
	$i_Ordini_Aggiornati = 0
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 144, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_Ordini_Aggiornati")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_Ordini_Aggiornati", $i_Ordini_Aggiornati))


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 146, False))
	Local $i_ind
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 146, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_ind")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_ind", $i_ind))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 147, False))
	Local $s_ID_Vendita
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 147, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ID_Vendita")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ID_Vendita", $s_ID_Vendita))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 148, False))
	Local $s_Nome_Acquirente
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 148, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_Nome_Acquirente")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Nome_Acquirente", $s_Nome_Acquirente))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 149, False))
	Local $s_Indirizzo_Acquirente1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 149, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_Indirizzo_Acquirente1")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Indirizzo_Acquirente1", $s_Indirizzo_Acquirente1))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 150, False))
	Local $s_Indirizzo_Acquirente2
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 150, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_Indirizzo_Acquirente2")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Indirizzo_Acquirente2", $s_Indirizzo_Acquirente2))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 151, False))
	Local $s_Citta_Acquirente
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 151, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_Citta_Acquirente")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Citta_Acquirente", $s_Citta_Acquirente))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 152, False))
	Local $s_Stato_Acquirente
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 152, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_Stato_Acquirente")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Stato_Acquirente", $s_Stato_Acquirente))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 153, False))
	Local $s_CAP_Acquirente
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 153, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_CAP_Acquirente")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_CAP_Acquirente", $s_CAP_Acquirente))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 154, False))
	Local $s_Paese_Acquirente
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 154, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_Paese_Acquirente")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Paese_Acquirente", $s_Paese_Acquirente))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 155, False))
	Local $s_Numero_Oggetto
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 155, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_Numero_Oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Numero_Oggetto", $s_Numero_Oggetto))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 156, False))
	Local $s_Qta_Oggetto
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 156, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_Qta_Oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Qta_Oggetto", $s_Qta_Oggetto))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 157, False))
	Local $s_Prezzo_Oggetto
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 157, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_Prezzo_Oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Prezzo_Oggetto", $s_Prezzo_Oggetto))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 158, False))
	Local $s_Spedizione_Oggetto
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 158, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_Spedizione_Oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Spedizione_Oggetto", $s_Spedizione_Oggetto))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 159, False))
	Local $s_Data_Vendita_Oggetto
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 159, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_Data_Vendita_Oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Data_Vendita_Oggetto", $s_Data_Vendita_Oggetto))


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 161, False))
	Local $a_Etichetta[5]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 161, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("a_Etichetta")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$a_Etichetta", $a_Etichetta))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 162, False))
	Local $s_Ebay_Altro
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 162, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_Ebay_Altro")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Ebay_Altro", $s_Ebay_Altro))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 163, False))
	Local $s_work_mese
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 163, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_mese")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_mese", $s_work_mese))


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 165, False))
	$a_Etichetta[0] = $a_distinta_Amazon[4]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 165, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("a_Etichetta")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$a_Etichetta", $a_Etichetta))
If SetError(@error, @extended, IsDeclared("a_distinta_Amazon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$a_distinta_Amazon", $a_distinta_Amazon))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 166, False))
	$a_Etichetta[1] = $a_distinta_Amazon[5]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 166, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("a_Etichetta")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$a_Etichetta", $a_Etichetta))
If SetError(@error, @extended, IsDeclared("a_distinta_Amazon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$a_distinta_Amazon", $a_distinta_Amazon))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 167, False))
	$a_Etichetta[2] = $a_distinta_Amazon[6]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 167, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("a_Etichetta")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$a_Etichetta", $a_Etichetta))
If SetError(@error, @extended, IsDeclared("a_distinta_Amazon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$a_distinta_Amazon", $a_distinta_Amazon))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 168, False))
	$a_Etichetta[3] = $a_distinta_Amazon[7]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 168, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("a_Etichetta")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$a_Etichetta", $a_Etichetta))
If SetError(@error, @extended, IsDeclared("a_distinta_Amazon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$a_distinta_Amazon", $a_distinta_Amazon))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 169, False))
	$a_Etichetta[4] = $a_distinta_Amazon[8]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 169, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("a_Etichetta")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$a_Etichetta", $a_Etichetta))
If SetError(@error, @extended, IsDeclared("a_distinta_Amazon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$a_distinta_Amazon", $a_distinta_Amazon))


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 171, False))
	Local $s_work_cap = StringRight($a_Etichetta[2 + $i_offset], 5)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 171, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_cap")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_cap", $s_work_cap))
If SetError(@error, @extended, IsDeclared("a_Etichetta")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$a_Etichetta", $a_Etichetta))
If SetError(@error, @extended, IsDeclared("i_offset")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_offset", $i_offset))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 172, False))
	Local $s_work_resto = StringLeft($a_Etichetta[2 + $i_offset], StringLen($a_Etichetta[2 + $i_offset]) - 5)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 172, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_resto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_resto", $s_work_resto))
If SetError(@error, @extended, IsDeclared("a_Etichetta")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$a_Etichetta", $a_Etichetta))
If SetError(@error, @extended, IsDeclared("i_offset")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_offset", $i_offset))
If SetError(@error, @extended, IsDeclared("a_Etichetta")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$a_Etichetta", $a_Etichetta))
If SetError(@error, @extended, IsDeclared("i_offset")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_offset", $i_offset))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 173, False))
	$a_Etichetta[2 + $i_offset] = $s_work_cap & " " & $s_work_resto
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 173, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("a_Etichetta")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$a_Etichetta", $a_Etichetta))
If SetError(@error, @extended, IsDeclared("i_offset")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_offset", $i_offset))
If SetError(@error, @extended, IsDeclared("s_work_cap")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_cap", $s_work_cap))
If SetError(@error, @extended, IsDeclared("s_work_resto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_resto", $s_work_resto))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 174, False))
	If $i_offset = 0 Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 174, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_offset")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_offset", $i_offset))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 175, False))
		ReDim $a_Etichetta[4]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 175, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("a_Etichetta")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$a_Etichetta", $a_Etichetta))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 176, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 176, False, @error, @extended))

;~ 	_ArrayDisplay($a_Etichetta)

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 179, False))
	Local $s_work_etk
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 179, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_etk")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_etk", $s_work_etk))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 180, False))
	$s_work_etk = ""
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 180, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_etk")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_etk", $s_work_etk))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 181, False))
	$s_work_etk = _ArrayToString($a_Etichetta, @CRLF)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 181, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_etk")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_etk", $s_work_etk))
If SetError(@error, @extended, IsDeclared("a_Etichetta")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$a_Etichetta", $a_Etichetta))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 182, False))
	GUICtrlSetData($hArea_Comunicazioni, $s_work_etk)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 182, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("hArea_Comunicazioni")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$hArea_Comunicazioni", $hArea_Comunicazioni))
If SetError(@error, @extended, IsDeclared("s_work_etk")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_etk", $s_work_etk))
	; Switch to GetMessage mode

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 184, False))
	Local $iOnEventMode = Opt("GUIOnEventMode", 0), $iMsg
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 184, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("iOnEventMode")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iOnEventMode", $iOnEventMode))
If SetError(@error, @extended, IsDeclared("iMsg")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iMsg", $iMsg))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 185, False))
	While 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 185, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 186, False))
		$iMsg = GUIGetMsg() ; Variable needed to check which "Copy" button was pressed
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 186, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("iMsg")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iMsg", $iMsg))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 187, False))
		Switch $iMsg
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 187, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("iMsg")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iMsg", $iMsg))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 188, False))
			Case $hProsegui
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 188, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("hProsegui")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$hProsegui", $hProsegui))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 189, False))
				ExitLoop
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 189, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 190, False))
			Case $hChiudi
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 190, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("hChiudi")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$hChiudi", $hChiudi))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 191, False))
				Exit					
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 191, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 192, False))
			Case $hCopia
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 192, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("hCopia")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$hCopia", $hCopia))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 193, False))
				$s_work_etk = GUICtrlRead ($hArea_Comunicazioni)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 193, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_etk")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_etk", $s_work_etk))
If SetError(@error, @extended, IsDeclared("hArea_Comunicazioni")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$hArea_Comunicazioni", $hArea_Comunicazioni))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 194, False))
				ClipPut ($s_work_etk)			
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 194, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_etk")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_etk", $s_work_etk))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 195, False))
		EndSwitch
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 195, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 196, False))
	WEnd
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 196, False, @error, @extended))
	; Clear up

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 198, False))
	Opt("GUIOnEventMode", 1) ; Reset original GUI mode
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 198, False, @error, @extended))
;~ 	fine _ArrayDisplay($a_Etichetta)	

	;normalizzo campi per query ed aggiornamento del recorset


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 203, False))
	$s_Ebay_Altro = "AMAZON"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 203, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_Ebay_Altro")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Ebay_Altro", $s_Ebay_Altro))


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 205, False))
	$s_ID_Vendita = StringTrimLeft($a_distinta_Amazon[1], 19)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 205, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ID_Vendita")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ID_Vendita", $s_ID_Vendita))
If SetError(@error, @extended, IsDeclared("a_distinta_Amazon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$a_distinta_Amazon", $a_distinta_Amazon))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 206, False))
	$s_ID_Vendita = StringStripWS($s_ID_Vendita, $STR_STRIPALL)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 206, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ID_Vendita")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ID_Vendita", $s_ID_Vendita))
If SetError(@error, @extended, IsDeclared("s_ID_Vendita")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ID_Vendita", $s_ID_Vendita))
If SetError(@error, @extended, IsDeclared("STR_STRIPALL")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$STR_STRIPALL", $STR_STRIPALL))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 207, False))
	$s_ID_Vendita = StringReplace($s_ID_Vendita, "-", "")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 207, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ID_Vendita")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ID_Vendita", $s_ID_Vendita))
If SetError(@error, @extended, IsDeclared("s_ID_Vendita")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ID_Vendita", $s_ID_Vendita))


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 209, False))
	$s_Numero_Oggetto = StringTrimLeft($a_distinta_Amazon[15 + $i_offset], 4)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 209, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_Numero_Oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Numero_Oggetto", $s_Numero_Oggetto))
If SetError(@error, @extended, IsDeclared("a_distinta_Amazon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$a_distinta_Amazon", $a_distinta_Amazon))
If SetError(@error, @extended, IsDeclared("i_offset")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_offset", $i_offset))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 210, False))
	$s_Numero_Oggetto = StringStripWS($s_Numero_Oggetto, $STR_STRIPALL)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 210, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_Numero_Oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Numero_Oggetto", $s_Numero_Oggetto))
If SetError(@error, @extended, IsDeclared("s_Numero_Oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Numero_Oggetto", $s_Numero_Oggetto))
If SetError(@error, @extended, IsDeclared("STR_STRIPALL")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$STR_STRIPALL", $STR_STRIPALL))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 211, False))
	$s_Numero_Oggetto = "'" & $s_Numero_Oggetto & "'"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 211, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_Numero_Oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Numero_Oggetto", $s_Numero_Oggetto))
If SetError(@error, @extended, IsDeclared("s_Numero_Oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Numero_Oggetto", $s_Numero_Oggetto))


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 213, False))
	$s_Prezzo_Oggetto = $a_distinta_Amazon[20 + $i_offset]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 213, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_Prezzo_Oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Prezzo_Oggetto", $s_Prezzo_Oggetto))
If SetError(@error, @extended, IsDeclared("a_distinta_Amazon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$a_distinta_Amazon", $a_distinta_Amazon))
If SetError(@error, @extended, IsDeclared("i_offset")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_offset", $i_offset))
	;$s_Prezzo_Oggetto = StringStripWS ($s_Prezzo_Oggetto, $STR_STRIPALL)

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 215, False))
	Local $a_work = StringSplit($s_Prezzo_Oggetto, "EUR ")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 215, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("a_work")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$a_work", $a_work))
If SetError(@error, @extended, IsDeclared("s_Prezzo_Oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Prezzo_Oggetto", $s_Prezzo_Oggetto))
	;_ArrayDisplay($a_work)

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 217, False))
	$s_Prezzo_Oggetto = $a_work[5]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 217, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_Prezzo_Oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Prezzo_Oggetto", $s_Prezzo_Oggetto))
If SetError(@error, @extended, IsDeclared("a_work")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$a_work", $a_work))


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 219, False))
	$s_Spedizione_Oggetto = StringTrimLeft($a_distinta_Amazon[22 + $i_offset], 11)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 219, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_Spedizione_Oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Spedizione_Oggetto", $s_Spedizione_Oggetto))
If SetError(@error, @extended, IsDeclared("a_distinta_Amazon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$a_distinta_Amazon", $a_distinta_Amazon))
If SetError(@error, @extended, IsDeclared("i_offset")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_offset", $i_offset))
	;$s_Spedizione_Oggetto = StringStripWS ($s_Spedizione_Oggetto, $STR_STRIPALL)

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 221, False))
	$a_work = StringSplit($s_Spedizione_Oggetto, "EUR ")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 221, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("a_work")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$a_work", $a_work))
If SetError(@error, @extended, IsDeclared("s_Spedizione_Oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Spedizione_Oggetto", $s_Spedizione_Oggetto))
	;_ArrayDisplay($a_work)

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 223, False))
	$s_Spedizione_Oggetto = $a_work[6]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 223, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_Spedizione_Oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Spedizione_Oggetto", $s_Spedizione_Oggetto))
If SetError(@error, @extended, IsDeclared("a_work")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$a_work", $a_work))


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 225, False))
	Local $a_work_QTA, $s_work_QTA
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 225, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("a_work_QTA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$a_work_QTA", $a_work_QTA))
If SetError(@error, @extended, IsDeclared("s_work_QTA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_QTA", $s_work_QTA))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 226, False))
	$s_work_QTA = $a_distinta_Amazon[14 + $i_offset]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 226, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_QTA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_QTA", $s_work_QTA))
If SetError(@error, @extended, IsDeclared("a_distinta_Amazon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$a_distinta_Amazon", $a_distinta_Amazon))
If SetError(@error, @extended, IsDeclared("i_offset")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_offset", $i_offset))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 227, False))
	$a_work_QTA = StringSplit($s_work_QTA, @TAB, 1)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 227, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("a_work_QTA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$a_work_QTA", $a_work_QTA))
If SetError(@error, @extended, IsDeclared("s_work_QTA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_QTA", $s_work_QTA))
	;_ArrayDisplay($a_work_QTA)

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 229, False))
	$s_Qta_Oggetto = $a_work_QTA[1]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 229, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_Qta_Oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Qta_Oggetto", $s_Qta_Oggetto))
If SetError(@error, @extended, IsDeclared("a_work_QTA")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$a_work_QTA", $a_work_QTA))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 230, False))
	$s_Qta_Oggetto = StringStripWS($s_Qta_Oggetto, $STR_STRIPALL)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 230, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_Qta_Oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Qta_Oggetto", $s_Qta_Oggetto))
If SetError(@error, @extended, IsDeclared("s_Qta_Oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Qta_Oggetto", $s_Qta_Oggetto))
If SetError(@error, @extended, IsDeclared("STR_STRIPALL")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$STR_STRIPALL", $STR_STRIPALL))


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 232, False))
	If $s_Qta_Oggetto > 1 Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 232, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_Qta_Oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Qta_Oggetto", $s_Qta_Oggetto))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 233, False))
		Local $s_Spese_Unitarie
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 233, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_Spese_Unitarie")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Spese_Unitarie", $s_Spese_Unitarie))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 234, False))
		$s_Spedizione_Oggetto = StringReplace($s_Spedizione_Oggetto, ",", ".")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 234, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_Spedizione_Oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Spedizione_Oggetto", $s_Spedizione_Oggetto))
If SetError(@error, @extended, IsDeclared("s_Spedizione_Oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Spedizione_Oggetto", $s_Spedizione_Oggetto))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 235, False))
		$s_Spese_Unitarie = $s_Spedizione_Oggetto / $s_Qta_Oggetto
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 235, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_Spese_Unitarie")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Spese_Unitarie", $s_Spese_Unitarie))
If SetError(@error, @extended, IsDeclared("s_Spedizione_Oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Spedizione_Oggetto", $s_Spedizione_Oggetto))
If SetError(@error, @extended, IsDeclared("s_Qta_Oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Qta_Oggetto", $s_Qta_Oggetto))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 236, False))
		$s_Spese_Unitarie = StringReplace($s_Spese_Unitarie, ".", ",")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 236, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_Spese_Unitarie")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Spese_Unitarie", $s_Spese_Unitarie))
If SetError(@error, @extended, IsDeclared("s_Spese_Unitarie")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Spese_Unitarie", $s_Spese_Unitarie))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 237, False))
		$s_Spedizione_Oggetto = $s_Spese_Unitarie
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 237, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_Spedizione_Oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Spedizione_Oggetto", $s_Spedizione_Oggetto))
If SetError(@error, @extended, IsDeclared("s_Spese_Unitarie")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Spese_Unitarie", $s_Spese_Unitarie))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 238, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 238, False, @error, @extended))


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 240, False))
	$s_Data_Vendita_Oggetto = StringTrimLeft($a_distinta_Amazon[9 + $i_offset], 12)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 240, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_Data_Vendita_Oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Data_Vendita_Oggetto", $s_Data_Vendita_Oggetto))
If SetError(@error, @extended, IsDeclared("a_distinta_Amazon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$a_distinta_Amazon", $a_distinta_Amazon))
If SetError(@error, @extended, IsDeclared("i_offset")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_offset", $i_offset))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 241, False))
	$s_Data_Vendita_Oggetto = StringStripWS($s_Data_Vendita_Oggetto, $STR_STRIPALL)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 241, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_Data_Vendita_Oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Data_Vendita_Oggetto", $s_Data_Vendita_Oggetto))
If SetError(@error, @extended, IsDeclared("s_Data_Vendita_Oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Data_Vendita_Oggetto", $s_Data_Vendita_Oggetto))
If SetError(@error, @extended, IsDeclared("STR_STRIPALL")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$STR_STRIPALL", $STR_STRIPALL))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 242, False))
	Local $a_work = StringSplit($s_Data_Vendita_Oggetto, "/")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 242, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("a_work")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$a_work", $a_work))
If SetError(@error, @extended, IsDeclared("s_Data_Vendita_Oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Data_Vendita_Oggetto", $s_Data_Vendita_Oggetto))
	;	_ArrayDisplay($a_work)

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 244, False))
	$s_work_mese = $a_work[2]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 244, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_mese")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_mese", $s_work_mese))
If SetError(@error, @extended, IsDeclared("a_work")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$a_work", $a_work))
	Select
		Case $s_work_mese = "gen"

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 247, False))
			$s_work_mese = "01"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 247, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_mese")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_mese", $s_work_mese))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 248, False))
		Case $s_work_mese = "feb"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 248, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_mese")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_mese", $s_work_mese))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 249, False))
			$s_work_mese = "02"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 249, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_mese")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_mese", $s_work_mese))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 250, False))
		Case $s_work_mese = "mar"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 250, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_mese")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_mese", $s_work_mese))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 251, False))
			$s_work_mese = "03"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 251, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_mese")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_mese", $s_work_mese))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 252, False))
		Case $s_work_mese = "apr"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 252, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_mese")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_mese", $s_work_mese))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 253, False))
			$s_work_mese = "04"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 253, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_mese")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_mese", $s_work_mese))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 254, False))
		Case $s_work_mese = "mag"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 254, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_mese")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_mese", $s_work_mese))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 255, False))
			$s_work_mese = "05"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 255, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_mese")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_mese", $s_work_mese))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 256, False))
		Case $s_work_mese = "giu"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 256, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_mese")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_mese", $s_work_mese))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 257, False))
			$s_work_mese = "06"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 257, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_mese")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_mese", $s_work_mese))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 258, False))
		Case $s_work_mese = "lug"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 258, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_mese")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_mese", $s_work_mese))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 259, False))
			$s_work_mese = "07"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 259, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_mese")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_mese", $s_work_mese))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 260, False))
		Case $s_work_mese = "ago"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 260, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_mese")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_mese", $s_work_mese))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 261, False))
			$s_work_mese = "08"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 261, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_mese")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_mese", $s_work_mese))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 262, False))
		Case $s_work_mese = "set"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 262, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_mese")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_mese", $s_work_mese))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 263, False))
			$s_work_mese = "09"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 263, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_mese")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_mese", $s_work_mese))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 264, False))
		Case $s_work_mese = "ott"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 264, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_mese")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_mese", $s_work_mese))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 265, False))
			$s_work_mese = "10"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 265, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_mese")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_mese", $s_work_mese))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 266, False))
		Case $s_work_mese = "nov"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 266, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_mese")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_mese", $s_work_mese))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 267, False))
			$s_work_mese = "11"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 267, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_mese")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_mese", $s_work_mese))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 268, False))
		Case $s_work_mese = "dic"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 268, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_mese")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_mese", $s_work_mese))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 269, False))
			$s_work_mese = "12"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 269, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_mese")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_mese", $s_work_mese))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 270, False))
		Case Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 270, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 271, False))
			MsgBox($MB_OK, "Errore", "Data non valita !")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 271, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("MB_OK")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$MB_OK", $MB_OK))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 272, False))
			Exit
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 272, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 273, False))
	EndSelect
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 273, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 274, False))
	$s_Data_Vendita_Oggetto = $a_work[1] & "/" & $s_work_mese & "/20" & $a_work[3]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 274, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_Data_Vendita_Oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Data_Vendita_Oggetto", $s_Data_Vendita_Oggetto))
If SetError(@error, @extended, IsDeclared("a_work")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$a_work", $a_work))
If SetError(@error, @extended, IsDeclared("s_work_mese")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_mese", $s_work_mese))
If SetError(@error, @extended, IsDeclared("a_work")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$a_work", $a_work))

	;Query; Search Records in a table and update rs ========================================================

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 277, False))
	Local $s_query
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 277, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_query")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_query", $s_query))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 278, False))
 	$s_query = "SELECT * FROM " & $s_Tablename & " WHERE ID_USCITA=" & $s_Numero_Oggetto & 			" AND TIPO_USCITA=5"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 278, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_query")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_query", $s_query))
If SetError(@error, @extended, IsDeclared("s_Tablename")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Tablename", $s_Tablename))
If SetError(@error, @extended, IsDeclared("s_Numero_Oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Numero_Oggetto", $s_Numero_Oggetto))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 280, False))
MsgBox(262144,'Debug line ~' & @ScriptLineNumber,'Selection:' & @lf & '$s_query' & @lf & @lf & 'Return:' & @lf &$s_query) ;### Debug MSGBOX
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 280, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_query")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_query", $s_query))


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 282, False))
 	$i_cod_ritorno = RecordSearch($s_dbname, $s_query, $o_Con, 			$s_Qta_Oggetto, $s_Data_Vendita_Oggetto, $s_Prezzo_Oggetto, 			$s_Spedizione_Oggetto, $s_Ebay_Altro, $s_venditore, $s_ID_Vendita)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 282, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_cod_ritorno")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_cod_ritorno", $i_cod_ritorno))
If SetError(@error, @extended, IsDeclared("s_dbname")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_dbname", $s_dbname))
If SetError(@error, @extended, IsDeclared("s_query")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_query", $s_query))
If SetError(@error, @extended, IsDeclared("o_Con")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_Con", $o_Con))
If SetError(@error, @extended, IsDeclared("s_Qta_Oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Qta_Oggetto", $s_Qta_Oggetto))
If SetError(@error, @extended, IsDeclared("s_Data_Vendita_Oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Data_Vendita_Oggetto", $s_Data_Vendita_Oggetto))
If SetError(@error, @extended, IsDeclared("s_Prezzo_Oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Prezzo_Oggetto", $s_Prezzo_Oggetto))
If SetError(@error, @extended, IsDeclared("s_Spedizione_Oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Spedizione_Oggetto", $s_Spedizione_Oggetto))
If SetError(@error, @extended, IsDeclared("s_Ebay_Altro")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Ebay_Altro", $s_Ebay_Altro))
If SetError(@error, @extended, IsDeclared("s_venditore")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_venditore", $s_venditore))
If SetError(@error, @extended, IsDeclared("s_ID_Vendita")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ID_Vendita", $s_ID_Vendita))



SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 287, False))
	If $i_cod_ritorno Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 287, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_cod_ritorno")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_cod_ritorno", $i_cod_ritorno))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 288, False))
		$s_Numero_Oggetto = StringReplace($s_Numero_Oggetto, "'", "")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 288, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_Numero_Oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Numero_Oggetto", $s_Numero_Oggetto))
If SetError(@error, @extended, IsDeclared("s_Numero_Oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Numero_Oggetto", $s_Numero_Oggetto))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 289, False))
 		$a_Ordini_Aggiornati[$i_Ordini_Aggiornati + 1] = 				"ID=" & $s_ID_Vendita & @CRLF & 				"OGGETTO=" & $s_Numero_Oggetto & @CRLF & 				"QTA=" & $s_Qta_Oggetto
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 289, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("a_Ordini_Aggiornati")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$a_Ordini_Aggiornati", $a_Ordini_Aggiornati))
If SetError(@error, @extended, IsDeclared("i_Ordini_Aggiornati")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_Ordini_Aggiornati", $i_Ordini_Aggiornati))
If SetError(@error, @extended, IsDeclared("s_ID_Vendita")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ID_Vendita", $s_ID_Vendita))
If SetError(@error, @extended, IsDeclared("s_Numero_Oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Numero_Oggetto", $s_Numero_Oggetto))
If SetError(@error, @extended, IsDeclared("s_Qta_Oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Qta_Oggetto", $s_Qta_Oggetto))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 293, False))
		$i_Ordini_Aggiornati = $i_Ordini_Aggiornati + 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 293, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_Ordini_Aggiornati")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_Ordini_Aggiornati", $i_Ordini_Aggiornati))
If SetError(@error, @extended, IsDeclared("i_Ordini_Aggiornati")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_Ordini_Aggiornati", $i_Ordini_Aggiornati))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 294, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 294, False, @error, @extended))


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 296, False))
	AccessCloseConn($o_Con)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 296, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_Con")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_Con", $o_Con))


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 298, False))
	$a_Ordini_Aggiornati[0] = "ORDINI AGGIORNATI=" & $i_Ordini_Aggiornati & @CRLF
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 298, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("a_Ordini_Aggiornati")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$a_Ordini_Aggiornati", $a_Ordini_Aggiornati))
If SetError(@error, @extended, IsDeclared("i_Ordini_Aggiornati")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_Ordini_Aggiornati", $i_Ordini_Aggiornati))
;~ 	_ArrayDisplay($a_Ordini_Aggiornati)

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 300, False))
	Local $s_work_etk
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 300, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_etk")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_etk", $s_work_etk))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 301, False))
	$s_work_etk = ""
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 301, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_etk")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_etk", $s_work_etk))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 302, False))
	$s_work_etk = _ArrayToString($a_Ordini_Aggiornati, @CRLF)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 302, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_etk")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_etk", $s_work_etk))
If SetError(@error, @extended, IsDeclared("a_Ordini_Aggiornati")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$a_Ordini_Aggiornati", $a_Ordini_Aggiornati))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 303, False))
	GUICtrlSetData($hArea_Comunicazioni, $s_work_etk)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 303, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("hArea_Comunicazioni")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$hArea_Comunicazioni", $hArea_Comunicazioni))
If SetError(@error, @extended, IsDeclared("s_work_etk")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_etk", $s_work_etk))
	; Switch to GetMessage mode

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 305, False))
	Local $iOnEventMode = Opt("GUIOnEventMode", 0), $iMsg
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 305, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("iOnEventMode")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iOnEventMode", $iOnEventMode))
If SetError(@error, @extended, IsDeclared("iMsg")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iMsg", $iMsg))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 306, False))
	While 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 306, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 307, False))
		$iMsg = GUIGetMsg() ; Variable needed to check which "Copy" button was pressed
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 307, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("iMsg")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iMsg", $iMsg))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 308, False))
		Switch $iMsg
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 308, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("iMsg")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$iMsg", $iMsg))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 309, False))
			Case $hProsegui
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 309, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("hProsegui")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$hProsegui", $hProsegui))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 310, False))
				ExitLoop
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 310, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 311, False))
			Case $hChiudi
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 311, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("hChiudi")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$hChiudi", $hChiudi))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 312, False))
				Exit				
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 312, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 313, False))
			Case $hCopia
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 313, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("hCopia")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$hCopia", $hCopia))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 314, False))
				$s_work_etk = GUICtrlRead ($hArea_Comunicazioni)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 314, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_etk")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_etk", $s_work_etk))
If SetError(@error, @extended, IsDeclared("hArea_Comunicazioni")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$hArea_Comunicazioni", $hArea_Comunicazioni))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 315, False))
				ClipPut ($s_work_etk)			
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 315, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_etk")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_etk", $s_work_etk))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 316, False))
		EndSwitch
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 316, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 317, False))
	WEnd
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 317, False, @error, @extended))
	; Clear up

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 319, False))
	Opt("GUIOnEventMode", 1) ; Reset original GUI mode
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 319, False, @error, @extended))
;~ 	Fine _ArrayDisplay($a_Ordini_Aggiornati)	
;~ 	Exit

EndFunc   ;==>Tratta_Amazon


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 325, False))
Func Tratta_Ebay()
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 325, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 326, False))
	Local $o_Con, $o_Rs
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 326, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_Con")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_Con", $o_Con))
If SetError(@error, @extended, IsDeclared("o_Rs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_Rs", $o_Rs))
	;DATA========================================================
	Select
		Case $s_ambiente = "TEST"

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 330, False))
			Local $s_dbname = "h:\archivi_test\bilancio.accdb"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 330, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_dbname")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_dbname", $s_dbname))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 331, False))
		Case $s_ambiente = "PRODUZIONE"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 331, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ambiente")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ambiente", $s_ambiente))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 332, False))
			Local $s_dbname = "G:\ilgrandeblek\archivi\bilancio.accdb"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 332, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_dbname")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_dbname", $s_dbname))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 333, False))
		Case $s_ambiente = "TESTBANCA"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 333, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ambiente")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ambiente", $s_ambiente))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 334, False))
			Local $s_dbname = "c:\users\s522733\documents\work\archivi\bilancio.accdb"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 334, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_dbname")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_dbname", $s_dbname))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 335, False))
		Case Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 335, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 336, False))
			Exit
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 336, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 337, False))
	EndSelect
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 337, False, @error, @extended))
	;Local $s_dbname = "h:\archivi_test\bilancio.accdb"
	;Local $s_dbname = "G:\ilgrandeblek\archivi\bilancio.accdb"

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 340, False))
	Local $s_Tablename = "Q_VENDITE"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 340, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_Tablename")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Tablename", $s_Tablename))
	;CONNECT=====================================================

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 342, False))
	AccessConnectConn($s_dbname, $o_Con, 0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 342, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_dbname")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_dbname", $s_dbname))
If SetError(@error, @extended, IsDeclared("o_Con")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_Con", $o_Con))


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 344, False))
	Global $rKey = "HKCU\Control Panel\International", $sDecimal = RegRead($rKey, "sDecimal"), $sThousands = RegRead($rKey, "sThousand") ; _StringAddThousandsSep
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 344, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("rKey")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$rKey", $rKey))
If SetError(@error, @extended, IsDeclared("sDecimal")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sDecimal", $sDecimal))
If SetError(@error, @extended, IsDeclared("rKey")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$rKey", $rKey))
If SetError(@error, @extended, IsDeclared("sThousands")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$sThousands", $sThousands))
If SetError(@error, @extended, IsDeclared("rKey")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$rKey", $rKey))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 345, False))
	Global $ItemArray, $ItemLines, $HowManyColumns, $OldProgress, $List, $Progress
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 345, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))
If SetError(@error, @extended, IsDeclared("ItemLines")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemLines", $ItemLines))
If SetError(@error, @extended, IsDeclared("HowManyColumns")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$HowManyColumns", $HowManyColumns))
If SetError(@error, @extended, IsDeclared("OldProgress")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$OldProgress", $OldProgress))
If SetError(@error, @extended, IsDeclared("List")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$List", $List))
If SetError(@error, @extended, IsDeclared("Progress")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$Progress", $Progress))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 346, False))
	Global $SetColumnWidths = True ;			Sets optimum column widths automatically, roughly doubles total time
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 346, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("SetColumnWidths")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$SetColumnWidths", $SetColumnWidths))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 347, False))
	Global $Delimiter ;							Parts of europe typically default to semicolon, thanks to UEZ!
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 347, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("Delimiter")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$Delimiter", $Delimiter))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 348, False))
	Global $Font = "Comic Sans MS", $Underline = False, $UnderValue
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 348, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("Font")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$Font", $Font))
If SetError(@error, @extended, IsDeclared("Underline")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$Underline", $Underline))
If SetError(@error, @extended, IsDeclared("UnderValue")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$UnderValue", $UnderValue))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 349, False))
	Global $FontSize = 9, $FontWeight = 400 ;	Do NOT change these values
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 349, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("FontSize")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$FontSize", $FontSize))
If SetError(@error, @extended, IsDeclared("FontWeight")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$FontWeight", $FontWeight))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 350, False))
	If $Underline Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 350, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("Underline")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$Underline", $Underline))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 351, False))
		$UnderValue = 4
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 351, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("UnderValue")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$UnderValue", $UnderValue))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 352, False))
	Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 352, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 353, False))
		$UnderValue = 0
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 353, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("UnderValue")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$UnderValue", $UnderValue))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 354, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 354, False, @error, @extended))



SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 357, False))
	$File = FileOpenDialog("Select a CSV File", @DesktopDir, "CSV Files (*.csv)")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 357, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("File")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$File", $File))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 358, False))
	$Input = FileRead($File)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 358, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("Input")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$Input", $Input))
If SetError(@error, @extended, IsDeclared("File")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$File", $File))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 359, False))
	$Delimiter = ","
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 359, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("Delimiter")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$Delimiter", $Delimiter))


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 361, False))
	$ItemArray = _CSVSplit($Input, $Delimiter)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 361, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))
If SetError(@error, @extended, IsDeclared("Input")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$Input", $Input))
If SetError(@error, @extended, IsDeclared("Delimiter")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$Delimiter", $Delimiter))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 362, False))
	_ArrayDisplay($ItemArray)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 362, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 363, False))
	$ItemLines = UBound($ItemArray)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 363, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("ItemLines")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemLines", $ItemLines))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 364, False))
	$HowManyColumns = UBound($ItemArray, 2)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 364, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("HowManyColumns")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$HowManyColumns", $HowManyColumns))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 366, False))
	Local $i_records = $ItemArray[$ItemLines - 2][0]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 366, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_records")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_records", $i_records))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))
If SetError(@error, @extended, IsDeclared("ItemLines")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemLines", $ItemLines))


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 368, False))
	Local $s_venditore = $ItemArray[$ItemLines - 1][0]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 368, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_venditore")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_venditore", $s_venditore))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))
If SetError(@error, @extended, IsDeclared("ItemLines")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemLines", $ItemLines))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 369, False))
	Local $a_work = StringSplit($s_venditore, ":@")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 369, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("a_work")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$a_work", $a_work))
If SetError(@error, @extended, IsDeclared("s_venditore")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_venditore", $s_venditore))
	;_ArrayDisplay($a_work)

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 371, False))
	$s_venditore = $a_work[2]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 371, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_venditore")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_venditore", $s_venditore))
If SetError(@error, @extended, IsDeclared("a_work")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$a_work", $a_work))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 372, False))
	$s_venditore = StringStripWS($s_venditore, $STR_STRIPALL)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 372, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_venditore")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_venditore", $s_venditore))
If SetError(@error, @extended, IsDeclared("s_venditore")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_venditore", $s_venditore))
If SetError(@error, @extended, IsDeclared("STR_STRIPALL")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$STR_STRIPALL", $STR_STRIPALL))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 373, False))
	$s_venditore = StringUpper($s_venditore)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 373, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_venditore")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_venditore", $s_venditore))
If SetError(@error, @extended, IsDeclared("s_venditore")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_venditore", $s_venditore))


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 375, False))
	If $i_records > 0 Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 375, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_records")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_records", $i_records))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 376, False))
	Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 376, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 377, False))
		MsgBox($MB_OK, "Errore", "Non ci sono ordini da elaborare !")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 377, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("MB_OK")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$MB_OK", $MB_OK))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 378, False))
		Exit
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 378, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 379, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 379, False, @error, @extended))


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 381, False))
	Local $a_Ordini_Aggiornati[10]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 381, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("a_Ordini_Aggiornati")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$a_Ordini_Aggiornati", $a_Ordini_Aggiornati))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 382, False))
	Local $i_Ordini_Aggiornati
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 382, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_Ordini_Aggiornati")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_Ordini_Aggiornati", $i_Ordini_Aggiornati))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 383, False))
	$i_Ordini_Aggiornati = 0
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 383, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_Ordini_Aggiornati")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_Ordini_Aggiornati", $i_Ordini_Aggiornati))


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 385, False))
	Local $i_ind
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 385, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_ind")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_ind", $i_ind))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 386, False))
	Local $s_ID_Vendita
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 386, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ID_Vendita")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ID_Vendita", $s_ID_Vendita))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 387, False))
	Local $s_ID_Transazione
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 387, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ID_Transazione")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ID_Transazione", $s_ID_Transazione))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 388, False))
	Local $s_Nome_Acquirente
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 388, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_Nome_Acquirente")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Nome_Acquirente", $s_Nome_Acquirente))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 389, False))
	Local $s_Indirizzo_Acquirente1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 389, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_Indirizzo_Acquirente1")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Indirizzo_Acquirente1", $s_Indirizzo_Acquirente1))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 390, False))
	Local $s_Indirizzo_Acquirente2
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 390, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_Indirizzo_Acquirente2")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Indirizzo_Acquirente2", $s_Indirizzo_Acquirente2))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 391, False))
	Local $s_Citta_Acquirente
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 391, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_Citta_Acquirente")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Citta_Acquirente", $s_Citta_Acquirente))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 392, False))
	Local $s_Stato_Acquirente
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 392, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_Stato_Acquirente")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Stato_Acquirente", $s_Stato_Acquirente))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 393, False))
	Local $s_CAP_Acquirente
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 393, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_CAP_Acquirente")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_CAP_Acquirente", $s_CAP_Acquirente))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 394, False))
	Local $s_Paese_Acquirente
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 394, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_Paese_Acquirente")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Paese_Acquirente", $s_Paese_Acquirente))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 395, False))
	Local $s_Descrizione_Oggetto
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 395, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_Descrizione_Oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Descrizione_Oggetto", $s_Descrizione_Oggetto))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 396, False))
	Local $s_Numero_Oggetto
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 396, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_Numero_Oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Numero_Oggetto", $s_Numero_Oggetto))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 397, False))
	Local $s_Qta_Oggetto
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 397, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_Qta_Oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Qta_Oggetto", $s_Qta_Oggetto))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 398, False))
	Local $s_Prezzo_Oggetto
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 398, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_Prezzo_Oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Prezzo_Oggetto", $s_Prezzo_Oggetto))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 399, False))
	Local $s_Spedizione_Oggetto
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 399, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_Spedizione_Oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Spedizione_Oggetto", $s_Spedizione_Oggetto))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 400, False))
	Local $s_Data_Vendita_Oggetto
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 400, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_Data_Vendita_Oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Data_Vendita_Oggetto", $s_Data_Vendita_Oggetto))


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 402, False))
	Local $a_Etichetta[4]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 402, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("a_Etichetta")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$a_Etichetta", $a_Etichetta))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 403, False))
	Local $s_Ebay_Altro
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 403, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_Ebay_Altro")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Ebay_Altro", $s_Ebay_Altro))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 404, False))
	Local $s_work_mese
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 404, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_mese")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_mese", $s_work_mese))


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 406, False))
	For $i_ind = 3 To $i_records + 2
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 406, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_ind")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_ind", $i_ind))
If SetError(@error, @extended, IsDeclared("i_records")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_records", $i_records))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 407, False))
		$s_ID_Vendita = $ItemArray[$i_ind][0]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 407, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ID_Vendita")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ID_Vendita", $s_ID_Vendita))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))
If SetError(@error, @extended, IsDeclared("i_ind")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_ind", $i_ind))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 408, False))
		$s_ID_Transazione = $ItemArray[$i_ind][34]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 408, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_ID_Transazione")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ID_Transazione", $s_ID_Transazione))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))
If SetError(@error, @extended, IsDeclared("i_ind")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_ind", $i_ind))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 409, False))
		$s_Nome_Acquirente = $ItemArray[$i_ind][2]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 409, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_Nome_Acquirente")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Nome_Acquirente", $s_Nome_Acquirente))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))
If SetError(@error, @extended, IsDeclared("i_ind")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_ind", $i_ind))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 410, False))
		$s_Indirizzo_Acquirente1 = $ItemArray[$i_ind][5]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 410, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_Indirizzo_Acquirente1")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Indirizzo_Acquirente1", $s_Indirizzo_Acquirente1))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))
If SetError(@error, @extended, IsDeclared("i_ind")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_ind", $i_ind))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 411, False))
		$s_Indirizzo_Acquirente2 = $ItemArray[$i_ind][6]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 411, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_Indirizzo_Acquirente2")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Indirizzo_Acquirente2", $s_Indirizzo_Acquirente2))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))
If SetError(@error, @extended, IsDeclared("i_ind")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_ind", $i_ind))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 412, False))
		$s_Citta_Acquirente = $ItemArray[$i_ind][7]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 412, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_Citta_Acquirente")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Citta_Acquirente", $s_Citta_Acquirente))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))
If SetError(@error, @extended, IsDeclared("i_ind")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_ind", $i_ind))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 413, False))
		$s_Stato_Acquirente = $ItemArray[$i_ind][8]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 413, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_Stato_Acquirente")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Stato_Acquirente", $s_Stato_Acquirente))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))
If SetError(@error, @extended, IsDeclared("i_ind")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_ind", $i_ind))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 414, False))
		$s_CAP_Acquirente = $ItemArray[$i_ind][9]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 414, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_CAP_Acquirente")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_CAP_Acquirente", $s_CAP_Acquirente))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))
If SetError(@error, @extended, IsDeclared("i_ind")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_ind", $i_ind))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 415, False))
		$s_Paese_Acquirente = $ItemArray[$i_ind][10]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 415, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_Paese_Acquirente")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Paese_Acquirente", $s_Paese_Acquirente))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))
If SetError(@error, @extended, IsDeclared("i_ind")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_ind", $i_ind))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 416, False))
		$s_Numero_Oggetto = $ItemArray[$i_ind][11]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 416, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_Numero_Oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Numero_Oggetto", $s_Numero_Oggetto))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))
If SetError(@error, @extended, IsDeclared("i_ind")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_ind", $i_ind))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 417, False))
		$s_Descrizione_Oggetto = $ItemArray[$i_ind][12]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 417, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_Descrizione_Oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Descrizione_Oggetto", $s_Descrizione_Oggetto))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))
If SetError(@error, @extended, IsDeclared("i_ind")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_ind", $i_ind))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 418, False))
		$s_Qta_Oggetto = $ItemArray[$i_ind][14]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 418, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_Qta_Oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Qta_Oggetto", $s_Qta_Oggetto))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))
If SetError(@error, @extended, IsDeclared("i_ind")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_ind", $i_ind))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 419, False))
		$s_Prezzo_Oggetto = $ItemArray[$i_ind][15]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 419, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_Prezzo_Oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Prezzo_Oggetto", $s_Prezzo_Oggetto))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))
If SetError(@error, @extended, IsDeclared("i_ind")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_ind", $i_ind))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 420, False))
		$s_Spedizione_Oggetto = $ItemArray[$i_ind][17]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 420, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_Spedizione_Oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Spedizione_Oggetto", $s_Spedizione_Oggetto))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))
If SetError(@error, @extended, IsDeclared("i_ind")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_ind", $i_ind))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 421, False))
		$s_Data_Vendita_Oggetto = $ItemArray[$i_ind][22]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 421, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_Data_Vendita_Oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Data_Vendita_Oggetto", $s_Data_Vendita_Oggetto))
If SetError(@error, @extended, IsDeclared("ItemArray")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$ItemArray", $ItemArray))
If SetError(@error, @extended, IsDeclared("i_ind")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_ind", $i_ind))


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 423, False))
		$a_Etichetta[0] = $s_Nome_Acquirente
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 423, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("a_Etichetta")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$a_Etichetta", $a_Etichetta))
If SetError(@error, @extended, IsDeclared("s_Nome_Acquirente")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Nome_Acquirente", $s_Nome_Acquirente))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 424, False))
		$a_Etichetta[1] = $s_Indirizzo_Acquirente1 & " " & $s_Indirizzo_Acquirente2
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 424, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("a_Etichetta")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$a_Etichetta", $a_Etichetta))
If SetError(@error, @extended, IsDeclared("s_Indirizzo_Acquirente1")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Indirizzo_Acquirente1", $s_Indirizzo_Acquirente1))
If SetError(@error, @extended, IsDeclared("s_Indirizzo_Acquirente2")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Indirizzo_Acquirente2", $s_Indirizzo_Acquirente2))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 425, False))
		$a_Etichetta[2] = $s_CAP_Acquirente & " " & $s_Citta_Acquirente & " " & $s_Stato_Acquirente
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 425, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("a_Etichetta")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$a_Etichetta", $a_Etichetta))
If SetError(@error, @extended, IsDeclared("s_CAP_Acquirente")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_CAP_Acquirente", $s_CAP_Acquirente))
If SetError(@error, @extended, IsDeclared("s_Citta_Acquirente")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Citta_Acquirente", $s_Citta_Acquirente))
If SetError(@error, @extended, IsDeclared("s_Stato_Acquirente")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Stato_Acquirente", $s_Stato_Acquirente))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 426, False))
		$a_Etichetta[3] = $s_Paese_Acquirente
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 426, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("a_Etichetta")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$a_Etichetta", $a_Etichetta))
If SetError(@error, @extended, IsDeclared("s_Paese_Acquirente")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Paese_Acquirente", $s_Paese_Acquirente))


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 428, False))
		_ArrayDisplay($a_Etichetta)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 428, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("a_Etichetta")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$a_Etichetta", $a_Etichetta))

		;normalizzo campi per query ed aggiornamento del recorset
		; se kit di memorie (2x) setto il flag a vero

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 432, False))
		Local $s_work_kit
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 432, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_kit")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_kit", $s_work_kit))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 433, False))
		Local $i_kit
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 433, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_kit")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_kit", $i_kit))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 434, False))
		$s_work_kit = StringLeft($s_Descrizione_Oggetto, 3)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 434, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_kit")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_kit", $s_work_kit))
If SetError(@error, @extended, IsDeclared("s_Descrizione_Oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Descrizione_Oggetto", $s_Descrizione_Oggetto))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 435, False))
		If $s_work_kit = "KIT" Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 435, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_kit")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_kit", $s_work_kit))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 436, False))
			$i_kit = 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 436, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_kit")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_kit", $i_kit))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 437, False))
		Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 437, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 438, False))
			$i_kit = 0
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 438, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_kit")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_kit", $i_kit))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 439, False))
		EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 439, False, @error, @extended))


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 441, False))
		$s_Numero_Oggetto = "'" & $s_Numero_Oggetto & "'"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 441, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_Numero_Oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Numero_Oggetto", $s_Numero_Oggetto))
If SetError(@error, @extended, IsDeclared("s_Numero_Oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Numero_Oggetto", $s_Numero_Oggetto))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 442, False))
		$s_Ebay_Altro = "EBAY"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 442, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_Ebay_Altro")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Ebay_Altro", $s_Ebay_Altro))


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 444, False))
		Local $a_work = StringSplit($s_Prezzo_Oggetto, "EUR ")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 444, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("a_work")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$a_work", $a_work))
If SetError(@error, @extended, IsDeclared("s_Prezzo_Oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Prezzo_Oggetto", $s_Prezzo_Oggetto))
		;	_ArrayDisplay($a_work)

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 446, False))
		$s_Prezzo_Oggetto = $a_work[5]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 446, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_Prezzo_Oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Prezzo_Oggetto", $s_Prezzo_Oggetto))
If SetError(@error, @extended, IsDeclared("a_work")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$a_work", $a_work))


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 448, False))
		Local $a_work = StringSplit($s_Spedizione_Oggetto, "EUR ")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 448, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("a_work")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$a_work", $a_work))
If SetError(@error, @extended, IsDeclared("s_Spedizione_Oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Spedizione_Oggetto", $s_Spedizione_Oggetto))
		;	_ArrayDisplay($a_work)

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 450, False))
		$s_Spedizione_Oggetto = $a_work[5]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 450, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_Spedizione_Oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Spedizione_Oggetto", $s_Spedizione_Oggetto))
If SetError(@error, @extended, IsDeclared("a_work")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$a_work", $a_work))


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 452, False))
		If $s_Qta_Oggetto > 1 Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 452, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_Qta_Oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Qta_Oggetto", $s_Qta_Oggetto))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 453, False))
			Local $s_Spese_Unitarie
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 453, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_Spese_Unitarie")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Spese_Unitarie", $s_Spese_Unitarie))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 454, False))
			$s_Spedizione_Oggetto = StringReplace($s_Spedizione_Oggetto, ",", ".")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 454, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_Spedizione_Oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Spedizione_Oggetto", $s_Spedizione_Oggetto))
If SetError(@error, @extended, IsDeclared("s_Spedizione_Oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Spedizione_Oggetto", $s_Spedizione_Oggetto))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 455, False))
			$s_Spese_Unitarie = $s_Spedizione_Oggetto / $s_Qta_Oggetto
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 455, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_Spese_Unitarie")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Spese_Unitarie", $s_Spese_Unitarie))
If SetError(@error, @extended, IsDeclared("s_Spedizione_Oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Spedizione_Oggetto", $s_Spedizione_Oggetto))
If SetError(@error, @extended, IsDeclared("s_Qta_Oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Qta_Oggetto", $s_Qta_Oggetto))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 456, False))
			$s_Spese_Unitarie = StringReplace($s_Spese_Unitarie, ".", ",")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 456, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_Spese_Unitarie")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Spese_Unitarie", $s_Spese_Unitarie))
If SetError(@error, @extended, IsDeclared("s_Spese_Unitarie")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Spese_Unitarie", $s_Spese_Unitarie))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 457, False))
			$s_Spedizione_Oggetto = $s_Spese_Unitarie
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 457, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_Spedizione_Oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Spedizione_Oggetto", $s_Spedizione_Oggetto))
If SetError(@error, @extended, IsDeclared("s_Spese_Unitarie")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Spese_Unitarie", $s_Spese_Unitarie))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 458, False))
		EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 458, False, @error, @extended))


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 460, False))
		Local $a_work = StringSplit($s_Data_Vendita_Oggetto, "-")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 460, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("a_work")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$a_work", $a_work))
If SetError(@error, @extended, IsDeclared("s_Data_Vendita_Oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Data_Vendita_Oggetto", $s_Data_Vendita_Oggetto))
		;	_ArrayDisplay($a_work)

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 462, False))
		$s_work_mese = $a_work[2]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 462, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_mese")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_mese", $s_work_mese))
If SetError(@error, @extended, IsDeclared("a_work")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$a_work", $a_work))
		Select
			Case $s_work_mese = "gen"

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 465, False))
				$s_work_mese = "01"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 465, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_mese")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_mese", $s_work_mese))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 466, False))
			Case $s_work_mese = "feb"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 466, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_mese")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_mese", $s_work_mese))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 467, False))
				$s_work_mese = "02"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 467, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_mese")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_mese", $s_work_mese))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 468, False))
			Case $s_work_mese = "mar"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 468, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_mese")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_mese", $s_work_mese))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 469, False))
				$s_work_mese = "03"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 469, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_mese")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_mese", $s_work_mese))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 470, False))
			Case $s_work_mese = "apr"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 470, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_mese")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_mese", $s_work_mese))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 471, False))
				$s_work_mese = "04"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 471, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_mese")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_mese", $s_work_mese))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 472, False))
			Case $s_work_mese = "mag"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 472, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_mese")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_mese", $s_work_mese))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 473, False))
				$s_work_mese = "05"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 473, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_mese")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_mese", $s_work_mese))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 474, False))
			Case $s_work_mese = "giu"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 474, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_mese")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_mese", $s_work_mese))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 475, False))
				$s_work_mese = "06"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 475, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_mese")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_mese", $s_work_mese))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 476, False))
			Case $s_work_mese = "lug"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 476, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_mese")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_mese", $s_work_mese))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 477, False))
				$s_work_mese = "07"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 477, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_mese")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_mese", $s_work_mese))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 478, False))
			Case $s_work_mese = "ago"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 478, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_mese")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_mese", $s_work_mese))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 479, False))
				$s_work_mese = "08"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 479, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_mese")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_mese", $s_work_mese))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 480, False))
			Case $s_work_mese = "set"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 480, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_mese")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_mese", $s_work_mese))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 481, False))
				$s_work_mese = "09"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 481, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_mese")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_mese", $s_work_mese))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 482, False))
			Case $s_work_mese = "ott"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 482, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_mese")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_mese", $s_work_mese))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 483, False))
				$s_work_mese = "10"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 483, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_mese")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_mese", $s_work_mese))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 484, False))
			Case $s_work_mese = "nov"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 484, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_mese")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_mese", $s_work_mese))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 485, False))
				$s_work_mese = "11"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 485, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_mese")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_mese", $s_work_mese))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 486, False))
			Case $s_work_mese = "dic"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 486, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_mese")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_mese", $s_work_mese))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 487, False))
				$s_work_mese = "12"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 487, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_work_mese")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_mese", $s_work_mese))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 488, False))
			Case Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 488, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 489, False))
				MsgBox($MB_OK, "Errore", "Data non valita !")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 489, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("MB_OK")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$MB_OK", $MB_OK))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 490, False))
				Exit
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 490, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 491, False))
		EndSelect
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 491, False, @error, @extended))


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 493, False))
		$s_Data_Vendita_Oggetto = $a_work[1] & "/" & $s_work_mese & "/20" & $a_work[3]
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 493, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_Data_Vendita_Oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Data_Vendita_Oggetto", $s_Data_Vendita_Oggetto))
If SetError(@error, @extended, IsDeclared("a_work")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$a_work", $a_work))
If SetError(@error, @extended, IsDeclared("s_work_mese")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_work_mese", $s_work_mese))
If SetError(@error, @extended, IsDeclared("a_work")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$a_work", $a_work))

		;Query; Search Records in a table and update rs ========================================================

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 496, False))
 		$s_query = "SELECT * FROM " & $s_Tablename & " WHERE ID_USCITA=" & $s_Numero_Oggetto & 				" AND TIPO_USCITA=5"
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 496, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_query")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_query", $s_query))
If SetError(@error, @extended, IsDeclared("s_Tablename")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Tablename", $s_Tablename))
If SetError(@error, @extended, IsDeclared("s_Numero_Oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Numero_Oggetto", $s_Numero_Oggetto))


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 499, False))
 		$i_cod_ritorno = RecordSearch($s_dbname, $s_query, $o_Con, 				$s_Qta_Oggetto, $s_Data_Vendita_Oggetto, $s_Prezzo_Oggetto, 				$s_Spedizione_Oggetto, $s_Ebay_Altro, $s_venditore, $s_ID_Vendita)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 499, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_cod_ritorno")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_cod_ritorno", $i_cod_ritorno))
If SetError(@error, @extended, IsDeclared("s_dbname")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_dbname", $s_dbname))
If SetError(@error, @extended, IsDeclared("s_query")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_query", $s_query))
If SetError(@error, @extended, IsDeclared("o_Con")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_Con", $o_Con))
If SetError(@error, @extended, IsDeclared("s_Qta_Oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Qta_Oggetto", $s_Qta_Oggetto))
If SetError(@error, @extended, IsDeclared("s_Data_Vendita_Oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Data_Vendita_Oggetto", $s_Data_Vendita_Oggetto))
If SetError(@error, @extended, IsDeclared("s_Prezzo_Oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Prezzo_Oggetto", $s_Prezzo_Oggetto))
If SetError(@error, @extended, IsDeclared("s_Spedizione_Oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Spedizione_Oggetto", $s_Spedizione_Oggetto))
If SetError(@error, @extended, IsDeclared("s_Ebay_Altro")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Ebay_Altro", $s_Ebay_Altro))
If SetError(@error, @extended, IsDeclared("s_venditore")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_venditore", $s_venditore))
If SetError(@error, @extended, IsDeclared("s_ID_Vendita")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ID_Vendita", $s_ID_Vendita))



SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 504, False))
		If $i_cod_ritorno Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 504, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_cod_ritorno")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_cod_ritorno", $i_cod_ritorno))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 505, False))
			$s_Numero_Oggetto = StringReplace($s_Numero_Oggetto, "'", "")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 505, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_Numero_Oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Numero_Oggetto", $s_Numero_Oggetto))
If SetError(@error, @extended, IsDeclared("s_Numero_Oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Numero_Oggetto", $s_Numero_Oggetto))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 506, False))
 			$a_Ordini_Aggiornati[$i_Ordini_Aggiornati + 1] = "ID=" & $s_ID_Vendita & 					" OGGETTO=" & $s_Numero_Oggetto & " QTA=" & $s_Qta_Oggetto
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 506, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("a_Ordini_Aggiornati")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$a_Ordini_Aggiornati", $a_Ordini_Aggiornati))
If SetError(@error, @extended, IsDeclared("i_Ordini_Aggiornati")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_Ordini_Aggiornati", $i_Ordini_Aggiornati))
If SetError(@error, @extended, IsDeclared("s_ID_Vendita")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ID_Vendita", $s_ID_Vendita))
If SetError(@error, @extended, IsDeclared("s_Numero_Oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Numero_Oggetto", $s_Numero_Oggetto))
If SetError(@error, @extended, IsDeclared("s_Qta_Oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Qta_Oggetto", $s_Qta_Oggetto))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 508, False))
			$i_Ordini_Aggiornati = $i_Ordini_Aggiornati + 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 508, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_Ordini_Aggiornati")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_Ordini_Aggiornati", $i_Ordini_Aggiornati))
If SetError(@error, @extended, IsDeclared("i_Ordini_Aggiornati")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_Ordini_Aggiornati", $i_Ordini_Aggiornati))


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 510, False))
 			MsgBox($MB_OK, "Prepara busta", "Oggetto: " & $s_Descrizione_Oggetto & @CRLF & 					"Codice: " & $s_Numero_Oggetto & @CRLF & "QTA :" & $s_Qta_Oggetto)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 510, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("MB_OK")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$MB_OK", $MB_OK))
If SetError(@error, @extended, IsDeclared("s_Descrizione_Oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Descrizione_Oggetto", $s_Descrizione_Oggetto))
If SetError(@error, @extended, IsDeclared("s_Numero_Oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Numero_Oggetto", $s_Numero_Oggetto))
If SetError(@error, @extended, IsDeclared("s_Qta_Oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Qta_Oggetto", $s_Qta_Oggetto))


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 513, False))
			Local $s_email_url
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 513, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_email_url")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_email_url", $s_email_url))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 514, False))
 			$s_email_url = 'http://k2b-email.ebay.it/ws/eBayISAPI.dll?MyEbayEmailBuyer&urlstack=5508|Period_Last122Days|Status_WaitShipment|currentpage_SCSold|&itemId=' 					 & $s_Numero_Oggetto & '&transactionId=' & $s_ID_Transazione & ''
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 514, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_email_url")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_email_url", $s_email_url))
If SetError(@error, @extended, IsDeclared("s_Numero_Oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Numero_Oggetto", $s_Numero_Oggetto))
If SetError(@error, @extended, IsDeclared("s_ID_Transazione")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ID_Transazione", $s_ID_Transazione))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 516, False))
			ShellExecute($s_email_url)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 516, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_email_url")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_email_url", $s_email_url))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 517, False))
		EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 517, False, @error, @extended))


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 519, False))
		If $i_cod_ritorno Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 519, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_cod_ritorno")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_cod_ritorno", $i_cod_ritorno))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 520, False))
			MsgBox($MB_OK, "Prosegui", "Elaborazione ordine terminata. Clicca OK per proseguire")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 520, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("MB_OK")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$MB_OK", $MB_OK))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 521, False))
		Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 521, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 522, False))
			MsgBox($MB_OK, "Errore", "Elaborazione in errore. Clicca OK per chiudere")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 522, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("MB_OK")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$MB_OK", $MB_OK))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 523, False))
			ExitLoop
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 523, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 524, False))
		EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 524, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 525, False))
	Next
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 525, False, @error, @extended))


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 527, False))
	AccessCloseConn($o_Con)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 527, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_Con")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_Con", $o_Con))


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 529, False))
	$a_Ordini_Aggiornati[0] = "ORDINI AGGIORNATI=" & $i_Ordini_Aggiornati
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 529, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("a_Ordini_Aggiornati")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$a_Ordini_Aggiornati", $a_Ordini_Aggiornati))
If SetError(@error, @extended, IsDeclared("i_Ordini_Aggiornati")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_Ordini_Aggiornati", $i_Ordini_Aggiornati))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 530, False))
	_ArrayDisplay($a_Ordini_Aggiornati)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 530, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("a_Ordini_Aggiornati")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$a_Ordini_Aggiornati", $a_Ordini_Aggiornati))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 531, False))
	Exit
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 531, False, @error, @extended))

EndFunc   ;==>Tratta_Ebay


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 535, False))
Func AccessConnectConn($s_dbname, ByRef $o_adoCon, $i_adoMDB = 1)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 535, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_dbname")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_dbname", $s_dbname))
If SetError(@error, @extended, IsDeclared("o_adoCon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoCon", $o_adoCon))
If SetError(@error, @extended, IsDeclared("i_adoMDB")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_adoMDB", $i_adoMDB))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 536, False))
	$o_adoCon = ObjCreate("ADODB.Connection")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 536, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoCon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoCon", $o_adoCon))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 537, False))
	If Not $i_adoMDB Then $o_adoCon.Open("Provider=Microsoft.ACE.OLEDB.12.0; Data Source=" & $s_dbname & ";")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 537, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_adoMDB")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_adoMDB", $i_adoMDB))
If SetError(@error, @extended, IsDeclared("o_adoCon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoCon", $o_adoCon))
If SetError(@error, @extended, IsDeclared("s_dbname")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_dbname", $s_dbname))
	;If $i_adoMDB Then $o_adoCon.Open ("Driver={Microsoft Access Driver (*.mdb)};Dbq=" & $s_dbname")

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 539, False))
	Return $o_adoCon
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 539, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoCon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoCon", $o_adoCon))
EndFunc   ;==>AccessConnectConn


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 542, False))
Func MyErrFunc()
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 542, False, @error, @extended))
	;#cs

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 544, False))
	$HexNumber = Hex($oMyError.number, 8)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 544, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("HexNumber")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$HexNumber", $HexNumber))
If SetError(@error, @extended, IsDeclared("oMyError")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oMyError", $oMyError))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 545, False))
 	MsgBox(0, "AutoItCOM Test", "We intercepted a COM Error !" & @CRLF & @CRLF & 			"err.description is: " & @TAB & $oMyError.description & @CRLF & 			"err.windescription:" & @TAB & $oMyError.windescription & @CRLF & 			"err.number is: " & @TAB & $HexNumber & @CRLF & 			"err.lastdllerror is: " & @TAB & $oMyError.lastdllerror & @CRLF & 			"err.scriptline is: " & @TAB & $oMyError.scriptline & @CRLF & 			"err.source is: " & @TAB & $oMyError.source & @CRLF & 			"err.helpfile is: " & @TAB & $oMyError.helpfile & @CRLF & 			"err.helpcontext is: " & @TAB & $oMyError.helpcontext 			)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 545, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("oMyError")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oMyError", $oMyError))
If SetError(@error, @extended, IsDeclared("oMyError")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oMyError", $oMyError))
If SetError(@error, @extended, IsDeclared("HexNumber")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$HexNumber", $HexNumber))
If SetError(@error, @extended, IsDeclared("oMyError")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oMyError", $oMyError))
If SetError(@error, @extended, IsDeclared("oMyError")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oMyError", $oMyError))
If SetError(@error, @extended, IsDeclared("oMyError")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oMyError", $oMyError))
If SetError(@error, @extended, IsDeclared("oMyError")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oMyError", $oMyError))
If SetError(@error, @extended, IsDeclared("oMyError")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$oMyError", $oMyError))
	;#ce

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 556, False))
	SetError(1) ; to check for after this function returns
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 556, False, @error, @extended))
EndFunc   ;==>MyErrFunc


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 559, False))
 Func RecordSearch($s_dbname, $_query, ByRef $o_adoCon, 		$s_Qta_Oggetto, $s_Data_Vendita_Oggetto, $s_Prezzo_Oggetto, 		$s_Spedizione_Oggetto, $s_Ebay_Altro, $s_venditore, $s_ID_Vendita, $i_adoMDB = 1)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 559, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_dbname")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_dbname", $s_dbname))
If SetError(@error, @extended, IsDeclared("_query")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$_query", $_query))
If SetError(@error, @extended, IsDeclared("o_adoCon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoCon", $o_adoCon))
If SetError(@error, @extended, IsDeclared("s_Qta_Oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Qta_Oggetto", $s_Qta_Oggetto))
If SetError(@error, @extended, IsDeclared("s_Data_Vendita_Oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Data_Vendita_Oggetto", $s_Data_Vendita_Oggetto))
If SetError(@error, @extended, IsDeclared("s_Prezzo_Oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Prezzo_Oggetto", $s_Prezzo_Oggetto))
If SetError(@error, @extended, IsDeclared("s_Spedizione_Oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Spedizione_Oggetto", $s_Spedizione_Oggetto))
If SetError(@error, @extended, IsDeclared("s_Ebay_Altro")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Ebay_Altro", $s_Ebay_Altro))
If SetError(@error, @extended, IsDeclared("s_venditore")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_venditore", $s_venditore))
If SetError(@error, @extended, IsDeclared("s_ID_Vendita")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ID_Vendita", $s_ID_Vendita))
If SetError(@error, @extended, IsDeclared("i_adoMDB")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_adoMDB", $i_adoMDB))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 562, False))
	If Not IsObj($o_adoCon) Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 562, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoCon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoCon", $o_adoCon))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 563, False))
		AccessConnectConn($s_dbname, $o_adoCon)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 563, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("s_dbname")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_dbname", $s_dbname))
If SetError(@error, @extended, IsDeclared("o_adoCon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoCon", $o_adoCon))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 564, False))
		$i_NeedToCloseInFunc = 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 564, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_NeedToCloseInFunc")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_NeedToCloseInFunc", $i_NeedToCloseInFunc))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 565, False))
	Else
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 565, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 566, False))
		$i_NeedToCloseInFunc = 0
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 566, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_NeedToCloseInFunc")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_NeedToCloseInFunc", $i_NeedToCloseInFunc))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 567, False))
	EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 567, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 568, False))
	$o_adoRs = ObjCreate("ADODB.Recordset")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 568, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 569, False))
	$o_adoRs.CursorType = $adOpenKeyset
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 569, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))
If SetError(@error, @extended, IsDeclared("adOpenKeyset")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$adOpenKeyset", $adOpenKeyset))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 570, False))
	$o_adoRs.LockType = $adLockOptimistic
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 570, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))
If SetError(@error, @extended, IsDeclared("adLockOptimistic")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$adLockOptimistic", $adLockOptimistic))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 571, False))
	$o_adoRs.Open($_query, $o_adoCon)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 571, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))
If SetError(@error, @extended, IsDeclared("_query")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$_query", $_query))
If SetError(@error, @extended, IsDeclared("o_adoCon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoCon", $o_adoCon))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 572, False))
	With $o_adoRs
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 572, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 573, False))
		If Not $o_adoRs.RecordCount Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 573, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 574, False))
			MsgBox($MB_OK, "Errore", "non ci sono record da aggiornare !")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 574, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("MB_OK")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$MB_OK", $MB_OK))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 575, False))
			Return SetError(1, 0, 0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 575, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 576, False))
		EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 576, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 577, False))
		If $o_adoRs.RecordCount < $s_Qta_Oggetto Then
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 577, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))
If SetError(@error, @extended, IsDeclared("s_Qta_Oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Qta_Oggetto", $s_Qta_Oggetto))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 578, False))
			MsgBox($MB_OK, "Errore", "quantita' maggiore dei record da aggiornare !")
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 578, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("MB_OK")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$MB_OK", $MB_OK))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 579, False))
			Return SetError(2, 0, 0)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 579, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 580, False))
		EndIf
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 580, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 581, False))
		Local $i_ind_rs
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 581, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_ind_rs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_ind_rs", $i_ind_rs))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 582, False))
		$i_ind_rs = 0
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 582, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_ind_rs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_ind_rs", $i_ind_rs))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 583, False))
		Do
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 583, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 584, False))
			$i_ind_rs = $i_ind_rs + 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 584, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_ind_rs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_ind_rs", $i_ind_rs))
If SetError(@error, @extended, IsDeclared("i_ind_rs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_ind_rs", $i_ind_rs))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 585, False))
			$o_adoRs.Fields("TIPO_USCITA") = 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 585, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 586, False))
			$o_adoRs.Fields("DATA_USCITA") = $s_Data_Vendita_Oggetto
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 586, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))
If SetError(@error, @extended, IsDeclared("s_Data_Vendita_Oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Data_Vendita_Oggetto", $s_Data_Vendita_Oggetto))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 587, False))
			$o_adoRs.Fields("IMPORTO_USCITA") = $s_Prezzo_Oggetto
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 587, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))
If SetError(@error, @extended, IsDeclared("s_Prezzo_Oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Prezzo_Oggetto", $s_Prezzo_Oggetto))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 588, False))
			$o_adoRs.Fields("SPESE_POSTALI_USCITA") = $s_Spedizione_Oggetto
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 588, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))
If SetError(@error, @extended, IsDeclared("s_Spedizione_Oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Spedizione_Oggetto", $s_Spedizione_Oggetto))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 589, False))
			$o_adoRs.Fields("EBAY_ALTRO") = $s_Ebay_Altro
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 589, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))
If SetError(@error, @extended, IsDeclared("s_Ebay_Altro")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Ebay_Altro", $s_Ebay_Altro))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 590, False))
			$o_adoRs.Fields("EBAY_VENDITORE") = $s_venditore
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 590, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))
If SetError(@error, @extended, IsDeclared("s_venditore")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_venditore", $s_venditore))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 591, False))
			$o_adoRs.Fields("ID_EBAY") = $s_ID_Vendita
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 591, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))
If SetError(@error, @extended, IsDeclared("s_ID_Vendita")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_ID_Vendita", $s_ID_Vendita))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 592, False))
			$o_adoRs.Update
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 592, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 593, False))
			$o_adoRs.MoveNext
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 593, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 594, False))
		Until $i_ind_rs = $s_Qta_Oggetto
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 594, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_ind_rs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_ind_rs", $i_ind_rs))
If SetError(@error, @extended, IsDeclared("s_Qta_Oggetto")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$s_Qta_Oggetto", $s_Qta_Oggetto))


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 596, False))
	EndWith
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 596, False, @error, @extended))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 597, False))
	$o_adoRs.Close
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 597, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoRs")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoRs", $o_adoRs))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 598, False))
	If $i_NeedToCloseInFunc Then $o_adoCon.Close
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 598, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("i_NeedToCloseInFunc")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$i_NeedToCloseInFunc", $i_NeedToCloseInFunc))
If SetError(@error, @extended, IsDeclared("o_adoCon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoCon", $o_adoCon))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 599, False))
	Return 1
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 599, False, @error, @extended))
EndFunc   ;==>RecordSearch


SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 602, False))
Func AccessCloseConn($o_adoCon)
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 602, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoCon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoCon", $o_adoCon))

SetError(@error, @extended, AutoIt_Debugger_NextLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 603, False))
	$o_adoCon.Close
SetError(@error, @extended, AutoIt_Debugger_FinishedLine("C:\Users\S522733\Documents\ISN AutoIt Studio\Projects\Elabora Ordini Ebay e Amazon GUI\CSV ebay parse.au3", "CSV ebay parse.au3", 603, False, @error, @extended))
If SetError(@error, @extended, IsDeclared("o_adoCon")) Then SetError(@error, @extended, AutoIt_Debugger_SendVariable("$o_adoCon", $o_adoCon))
EndFunc   ;==>AccessCloseConn

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
   If $VariableName = "$hEbay_Image" Then
      AutoIt_Debugger_GetVariableFromEvent("$hEbay_Image", $hEbay_Image, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$GUI_SHOW" Then
      AutoIt_Debugger_GetVariableFromEvent("$GUI_SHOW", $GUI_SHOW, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$hAmazon_Image" Then
      AutoIt_Debugger_GetVariableFromEvent("$hAmazon_Image", $hAmazon_Image, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$GUI_HIDE" Then
      AutoIt_Debugger_GetVariableFromEvent("$GUI_HIDE", $GUI_HIDE, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$hProduzione_Image" Then
      AutoIt_Debugger_GetVariableFromEvent("$hProduzione_Image", $hProduzione_Image, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$hTest_Image" Then
      AutoIt_Debugger_GetVariableFromEvent("$hTest_Image", $hTest_Image, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$p5" Then
      AutoIt_Debugger_GetVariableFromEvent("$p5", $p5, $AutoItDebugger_ArrayIndexString, $VariableValue)
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
   If $VariableName = "$hEbay" Then
      AutoIt_Debugger_GetVariableFromEvent("$hEbay", $hEbay, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$hAmazon" Then
      AutoIt_Debugger_GetVariableFromEvent("$hAmazon", $hAmazon, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$hArea_Comunicazioni" Then
      AutoIt_Debugger_GetVariableFromEvent("$hArea_Comunicazioni", $hArea_Comunicazioni, $AutoItDebugger_ArrayIndexString, $VariableValue)
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
   If $VariableName = "$a_distinta_Amazon" Then
      AutoIt_Debugger_GetVariableFromEvent("$a_distinta_Amazon", $a_distinta_Amazon, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_work_distinta_Amazon" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_work_distinta_Amazon", $s_work_distinta_Amazon, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$i_offset" Then
      AutoIt_Debugger_GetVariableFromEvent("$i_offset", $i_offset, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$MB_OK" Then
      AutoIt_Debugger_GetVariableFromEvent("$MB_OK", $MB_OK, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_venditore" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_venditore", $s_venditore, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$STR_STRIPALL" Then
      AutoIt_Debugger_GetVariableFromEvent("$STR_STRIPALL", $STR_STRIPALL, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$a_Ordini_Aggiornati" Then
      AutoIt_Debugger_GetVariableFromEvent("$a_Ordini_Aggiornati", $a_Ordini_Aggiornati, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$i_Ordini_Aggiornati" Then
      AutoIt_Debugger_GetVariableFromEvent("$i_Ordini_Aggiornati", $i_Ordini_Aggiornati, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$i_ind" Then
      AutoIt_Debugger_GetVariableFromEvent("$i_ind", $i_ind, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_ID_Vendita" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_ID_Vendita", $s_ID_Vendita, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_Nome_Acquirente" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_Nome_Acquirente", $s_Nome_Acquirente, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_Indirizzo_Acquirente1" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_Indirizzo_Acquirente1", $s_Indirizzo_Acquirente1, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_Indirizzo_Acquirente2" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_Indirizzo_Acquirente2", $s_Indirizzo_Acquirente2, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_Citta_Acquirente" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_Citta_Acquirente", $s_Citta_Acquirente, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_Stato_Acquirente" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_Stato_Acquirente", $s_Stato_Acquirente, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_CAP_Acquirente" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_CAP_Acquirente", $s_CAP_Acquirente, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_Paese_Acquirente" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_Paese_Acquirente", $s_Paese_Acquirente, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_Numero_Oggetto" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_Numero_Oggetto", $s_Numero_Oggetto, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_Qta_Oggetto" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_Qta_Oggetto", $s_Qta_Oggetto, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_Prezzo_Oggetto" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_Prezzo_Oggetto", $s_Prezzo_Oggetto, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_Spedizione_Oggetto" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_Spedizione_Oggetto", $s_Spedizione_Oggetto, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_Data_Vendita_Oggetto" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_Data_Vendita_Oggetto", $s_Data_Vendita_Oggetto, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$a_Etichetta" Then
      AutoIt_Debugger_GetVariableFromEvent("$a_Etichetta", $a_Etichetta, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_Ebay_Altro" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_Ebay_Altro", $s_Ebay_Altro, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_work_mese" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_work_mese", $s_work_mese, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_work_cap" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_work_cap", $s_work_cap, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_work_resto" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_work_resto", $s_work_resto, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_work_etk" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_work_etk", $s_work_etk, $AutoItDebugger_ArrayIndexString, $VariableValue)
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
   If $VariableName = "$hChiudi" Then
      AutoIt_Debugger_GetVariableFromEvent("$hChiudi", $hChiudi, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$hCopia" Then
      AutoIt_Debugger_GetVariableFromEvent("$hCopia", $hCopia, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$a_work" Then
      AutoIt_Debugger_GetVariableFromEvent("$a_work", $a_work, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$a_work_QTA" Then
      AutoIt_Debugger_GetVariableFromEvent("$a_work_QTA", $a_work_QTA, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_work_QTA" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_work_QTA", $s_work_QTA, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_Spese_Unitarie" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_Spese_Unitarie", $s_Spese_Unitarie, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_query" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_query", $s_query, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$i_cod_ritorno" Then
      AutoIt_Debugger_GetVariableFromEvent("$i_cod_ritorno", $i_cod_ritorno, $AutoItDebugger_ArrayIndexString, $VariableValue)
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
   If $VariableName = "$i_records" Then
      AutoIt_Debugger_GetVariableFromEvent("$i_records", $i_records, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_ID_Transazione" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_ID_Transazione", $s_ID_Transazione, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_Descrizione_Oggetto" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_Descrizione_Oggetto", $s_Descrizione_Oggetto, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_work_kit" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_work_kit", $s_work_kit, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$i_kit" Then
      AutoIt_Debugger_GetVariableFromEvent("$i_kit", $i_kit, $AutoItDebugger_ArrayIndexString, $VariableValue)
   EndIf
   If $VariableName = "$s_email_url" Then
      AutoIt_Debugger_GetVariableFromEvent("$s_email_url", $s_email_url, $AutoItDebugger_ArrayIndexString, $VariableValue)
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
   If $VariableName = "$i_ind_rs" Then
      AutoIt_Debugger_GetVariableFromEvent("$i_ind_rs", $i_ind_rs, $AutoItDebugger_ArrayIndexString, $VariableValue)
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

