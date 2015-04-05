;*****************************************
;Testprojekt.au3 by ISI360
;Erstellt mit ISN Autoit Studio v0.8 BETA
;*****************************************
;Options
Opt("GUIOnEventMode", 1)

;Includes
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
#include <SliderConstants.au3>
#include <GuiSlider.au3>
#include <GuiTab.au3>
#include <DateTimeConstants.au3>
#include <GuiButton.au3>
#include <GuiIPAddress.au3>
#include <Forms\Testform.isf>

;Programm Code
#region Code
ConsoleWrite("-Hallo Welt!" & @CRLF)
GUISetOnEvent($GUI_EVENT_CLOSE, "_Exit", $Testform)
_GUICtrlIpAddress_Set($ip0, @IPAddress1)
$generalitem = GUICtrlCreateTreeViewItem("General", $tree)
GUICtrlCreateTreeViewItem("Test", $generalitem)
GUICtrlCreateTreeViewItem("Test", $generalitem)
GUISetState(@SW_SHOW, $Testform)
#endregion Code

While 1
	$DataOld = 0
	Sleep(20)
	If (GUICtrlRead($progressslider)) == $DataOld Then
		;nichts
	Else
		GUICtrlSetData($progress5, GUICtrlRead($progressslider) & " %")
		GUICtrlSetData($progress_text, "Bewege den Slider über mir! (" & GUICtrlRead($progress5) & " %)")
		$DataOld = (GUICtrlRead($progressslider))
	EndIf
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit
	EndSwitch
WEnd

Func _Testfunc()
	ConsoleWrite("+Hallo " & @UserName & "!" & @CRLF)
	MsgBox(0, "Test", "Hallo " & @UserName & "!", 0, $Testform)
EndFunc   ;==>_Testfunc

Func _Exit()
	Exit
EndFunc   ;==>_Exit
