#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_outfile=checklist.exe
#AutoIt3Wrapper_AU3Check_Parameters=-d -w 1 -w 2 -w 3 -w 4 -w 5 -w 6
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****

#include <GuiEdit.au3>
#include <WindowsConstants.au3>
#include <EditConstants.au3>
#include <WinAPI.au3>
#include <GuiListView.au3>
#include <GUIConstants.au3>
#include <StructureConstants.au3>
#include <Date.au3>
#Include <GuiToolTip.au3>
#include <GUIScrollBars.au3>
#include <ScrollBarConstants.au3>
#include <GuiButton.au3>

Opt("GuiCloseOnESC", 0)
Global $hHook, $hStub_KeyProc, $buffer = "", $hGui, $stopwork = False, $colrequired[50], $hListView

Global $hEdit, $hDC, $hBrush, $Item = -1, $SubItem = 0, $iSubItemText, $tItem, $tSubitem, $tiSubitemtext, $currentcol, $hEdit1
Global $Style = BitOR($WS_CHILD, $WS_VISIBLE, $ES_AUTOHSCROLL, $ES_LEFT),$req_upperlimit, $newfile = false, $section, $check
Global $h_edit, $h_apply, $col_count, $open_click = false, $reset_reqd, $hTitle, $t_edit, $t_apply,$insert_col, $delete_col
global $open_col, $save_col, $clear_col, $new_col, $open_file
global $h_cGUI

$hGui = GUICreate("Checklist", 800, 435,-1,-1)
GUISetIcon(@ScriptDir & "\ico\scheduled_tasks.ico")


$hTitle = GUICtrlCreateInput("", 10, 387, 150, 21)
GUICtrlSetTip($hTitle, "Enter the new checklist name. The checklist will be saved with this checklist name.")
GUICtrlSetState($hTitle, $GUI_DISABLE)
$t_edit = GUICtrlCreateButton("Title Edit", 10, 410, 75, 25)
GUICtrlSetTip($t_edit, "Enable Title Editing.")
$t_apply = GUICtrlCreateButton("Apply", 85, 410, 75, 25)
GUICtrlSetTip($t_apply, "Apply the change to the title.")
GUICtrlSetState($t_apply, $GUI_DISABLE)

$h_edit = GUICtrlCreateButton("Header Edit", 165, 410, 75, 25)
GUICtrlSetTip($h_edit, "Enable Header Editing.")
$h_apply = GUICtrlCreateButton("Apply", 240, 410, 75, 25)
GUICtrlSetTip($h_apply, "Apply the change to the clicked header.")
GUICtrlSetState($h_apply, $GUI_DISABLE)
$hEdit1 = GUICtrlCreateInput("", 165, 387, 150, 21)
GUICtrlSetTip($hEdit1, "Click the Header you wish to edit.")
GUICtrlSetState($hEdit1, $GUI_DISABLE)

$insert_col = GUICtrlCreateButton("Insert Column", 330, 410, 75, 25)
GUICtrlSetTip($insert_col, "Click a column header. Then Click button to add another column.")

$delete_col = GUICtrlCreateButton("Delete Column", 330, 380, 75, 25)
GUICtrlSetTip($delete_col, "Click a column header. Then Click button to remove the column.")

$open_col = GUICtrlCreateButton("Open", 570, 380, 75, 25)
GUICtrlSetTip($open_col, "Click to open a checklist for editing.")

$save_col = GUICtrlCreateButton("Save", 570, 410, 75, 25)
GUICtrlSetTip($save_col, "Click to save checklist setup information.")

$clear_col = GUICtrlCreateButton("Clear Column", 420, 380, 75, 25)
GUICtrlSetTip($clear_col, "Click a column header, then click button to clear the column's contents.")
GUICtrlCreateLabel("Required Fields", 655, 2, 120,16)
$new_col = GUICtrlCreateButton("New", 420, 410, 75, 25)
GUICtrlSetTip($save_col, "Click to reset checklist.")
GUISetState()

$h_cGUI = GUICreate("Child GUI", 140, 410, 652, 18, $WS_CHILD, $WS_EX_CLIENTEDGE, $hGUI)
$reset_reqd = GUICtrlCreateButton("Reset", 25, 5, 75, 25)
createlistview()
GUISetState()

guiswitch($hGUI)

GUISetState()
_GUIScrollBars_Init($h_cGUI,-1,-1)
_GUIScrollBars_EnableScrollBar($h_cGUI, $SB_HORZ,$ESB_DISABLE_BOTH)
main()

Func main()
	Local $hmod, $msg

	GUIRegisterMsg($WM_SIZE, "WM_SIZE")
	GUIRegisterMsg($WM_VSCROLL, "WM_VSCROLL")
	GUIRegisterMsg($WM_HSCROLL, "WM_HSCROLL")
	GUIRegisterMsg($WM_NOTIFY, "WM_NOTIFY")
	GUIRegisterMsg($WM_COMMAND, "WM_COMMAND")
	OnAutoItExitRegister("Cleanup")
	$hStub_KeyProc = DllCallbackRegister("_KeyProc", "long", "int;wparam;lparam")
	$hmod = _WinAPI_GetModuleHandle(0)
	$hHook = _WinAPI_SetWindowsHookEx($WH_KEYBOARD_LL, DllCallbackGetPtr($hStub_KeyProc), $hmod)

	While 1
		Sleep(30)
		if $stopwork = true Then
			ExitLoop
		endif
		$msg = GUIGetMsg()
		Switch $msg
			Case $GUI_EVENT_CLOSE
				$stopwork = True
				ExitLoop
			Case $open_col
				GUISetState(@SW_LOCK)
				$open_click = true
				open_col_click()
				GUISwitch($h_cGUI)
				GUICtrlSetState($colrequired[0], $GUI_DISABLE + $GUI_CHECKED)
				$col_count = (_GUICtrlListView_GetColumnCount($hListView))
				GUICtrlSetState($colrequired[$col_count], $GUI_DISABLE + $GUI_CHECKED)
				GUICtrlSetState($colrequired[$col_count - 1], $GUI_DISABLE + $GUI_CHECKED)
				GUICtrlSetState($colrequired[$col_count - 2], $GUI_DISABLE + $GUI_CHECKED)
				GUISwitch($hGUI)
				GUISetState(@SW_UNLOCK)


			Case $h_edit
				h_edit_click()
			Case $h_apply
				h_apply_click()
			Case $t_edit
				t_edit_click()
			Case $t_apply
				t_apply_click()
			Case $insert_col
				insert_col_click()
			Case $delete_col
				delete_col_click()
			Case $save_col
				save_col_click()
			case $reset_reqd
				_GUIScrollBars_SetScrollInfoPos($h_cGUI, $SB_Vert, 0)
				resetcol()

			Case $new_col
				$col_count = 6
				$newfile = true
				clearall()
			Case $clear_col
				clear_col_click()
		EndSwitch
		setdatetime()
	WEnd
	GUIDelete()
	Exit
EndFunc   ;==>main

Func save_col_click()
	Local $n, $m, $o, $writemsg, $cInfo
		local $a
		$a = _GUICtrlButton_GetFocus($save_col)
			If $a <> True Then
				return
			endif
	If FileExists(@ScriptDir & "\" & WinGetTitle($hGui, "") & ".chk") Then
		If MsgBox(36, "Confirm overwrite?", "The Checklist Already Exists." & @CRLF & _
				"The checklist with the following title will be overwrittten: " & @CRLF & @CRLF & _
				"Title: " & WinGetTitle($hGui, "") & @CRLF & @CRLF & "Continue?") = 7 Then
			Return
		EndIf

	EndIf
	If WinGetTitle($hGui, "") = "" Then
		MsgBox(0, "Error", "You must give the checklist a unique title.")
		Return
	EndIf
	$writemsg = ""
	$o = 0
	For $n = 0 To _GUICtrlListView_GetColumnCount($hListView) - 1
		$cInfo = _GUICtrlListView_GetColumn($hListView, $n)
		$writemsg &= $cInfo[4] & "|" & $cInfo[5] & "|" & BitAND(GUICtrlRead($colrequired[$n]), $GUI_CHECKED) & "|"
	Next

	$writemsg = StringLeft($writemsg, StringLen($writemsg) - 1)
	$o += 1
	IniWrite(WinGetTitle($hGui, "") & ".chk", WinGetTitle($hGui, ""), "checkitem" & $o, $writemsg)

	For $m = 0 To 19
		$writemsg = ""
		For $n = 0 To _GUICtrlListView_GetColumnCount($hListView) - 1
			$writemsg &= _GUICtrlListView_GetItemText($hListView, $m, $n) & "|"
		Next
		$writemsg = StringLeft($writemsg, StringLen($writemsg) - 1)
		$o += 1
		IniWrite(WinGetTitle($hGui, "") & ".chk", WinGetTitle($hGui, ""), "checkitem" & $o, $writemsg)
	Next

EndFunc   ;==>save_col_click

Func open_col_click()
;~ 	local $a
;~ 		$a = _GUICtrlButton_GetFocus($open_col)
;~ 			If $a <> True Then
;~ 				return
;~ 			endif
	Local $filetoopen, $countlines, $tempX, $section_split, $tempY
	;if $open_click = true then
		$filetoopen = FileOpenDialog("Open Checklist", @ScriptDir, 'Checklist Files (*.chk)')
	;	$open_click = False
	;endif
	If $filetoopen = "" Then
		Return
	EndIf
	$section = StringReplace($filetoopen, ".chk", "")
	$section_split = StringSplit($section, "\")
	$section = $section_split[UBound($section_split) - 1]
	$check = IniReadSection($filetoopen, $section)
	if $check = 1 Then
		msgbox(0,"Error","No Data Found")
		return
	endif
	$countlines = UBound($check)
	For $tempX = 1 To $countlines - 1
		$section_split = StringSplit($check[$tempX][1], "|")
		If $tempX = 1 Then
			$col_count = (UBound($section_split) - 1)/3
			clearall()
			$open_file = true
				For $tempZ = 1 To UBound($section_split) - 2

					_GUICtrlListView_SetColumn($hListView, $tempY, "", $section_split[$tempZ])
					$tempZ += 1
					_GUICtrlListView_SetColumn($hListView, $tempY, $section_split[$tempZ])
;~ 					resetcol()
					$tempZ += 1
					if $section_split[$tempY] = 1 Then
						GUICtrlSetState($colrequired[$tempY], $GUI_CHECKED)
					endif
					guiswitch($hGUI)
					$tempY += 1
				Next
				if $tempY > 49 Then
					msgbox(0,"Error", "Column Limit Exceeded")
					Return
				endif
		Else
			$tempZ = 0
			For $tempY = 1 To UBound($section_split)

				_GUICtrlListView_SetItemText($hListView, $tempX - 2, $section_split[$tempZ], $tempY-2)
				If $tempZ = UBound($section_split) - 1 Then
					If $section_split[$tempZ] <> "" Then
						_GUICtrlListView_SetItemChecked($hListView, $tempX - 2, True)
					EndIf
				EndIf
				$tempZ += 1
			Next
		EndIf

	Next
	resetcol()
		$section_split = StringSplit($check[1][1], "|")
	For $tempX = 1 to ubound($section_split)
		if mod($tempX,3) = 0 Then
			if $section_split[$tempX] = "1" Then
				GUICtrlSetState($colrequired[($tempX/3)-1], $GUI_CHECKED)
			endif
		endif
	next
	WinSetTitle($hGui, "", $section)
EndFunc   ;==>open_col_click

func clear_col_click()
	local $aInfo, $tempX
	if $currentcol >= _GUICtrlListView_GetColumnCount($hListView) - 2 Then
		if MsgBox(36, "Confirm","You have chosen to clear the date or time columns." & @crlf & _
			"This requires unchecking all items and will clear both Date and Time columns. Proceed?") = 7 Then
			for $tempX = 0 to 19
				_GUICtrlListView_SetItemChecked($hListView, $tempX, False)
			next
		return
		endif
	endif

	$aInfo = _GUICtrlListView_GetColumn($hListView, $currentcol)

	If MsgBox(36, "Confirm column clear?", "Clear the selected column?" & @crlf & @crlf _
		& $aInfo[5] & @crlf & @crlf & "Continue?") <> 7 Then
			for $tempX = 0 to 19
				_GUICtrlListView_SetItemText($hListView, $tempX, "", $currentcol)
			next
	endif
endfunc

Func h_edit_click()
	GUICtrlSetState($h_apply, $GUI_ENABLE)
	GUICtrlSetState($hEdit1, $GUI_ENABLE)
	GUICtrlSetData($hEdit1, "")
EndFunc   ;==>h_edit_click

Func h_apply_click()
	If $currentcol > _GUICtrlListView_GetColumnCount($hListView) - 3 Then
		MsgBox(0, "Error", "You can not edit Date/Time columns. These are reserved columns.")

	Else
		_GUICtrlListView_SetColumn($hListView, $currentcol, GUICtrlRead($hEdit1))
		GUICtrlSetData($colrequired[$currentcol],GUICtrlRead($hEdit1))
	EndIf

	GUICtrlSetState($h_apply, $GUI_DISABLE)
	GUICtrlSetState($hEdit1, $GUI_DISABLE)
	GUICtrlSetData($hEdit1, "")
EndFunc   ;==>h_apply_click

Func t_edit_click()
	GUICtrlSetState($t_apply, $GUI_ENABLE)
	GUICtrlSetState($hTitle, $GUI_ENABLE)
	GUICtrlSetData($hTitle, WinGetTitle($hGui, ""))
EndFunc   ;==>t_edit_click

Func t_apply_click()
	GUICtrlSetState($t_apply, $GUI_DISABLE)
	GUICtrlSetState($hTitle, $GUI_DISABLE)
	WinSetTitle($hGui, "", GUICtrlRead($hTitle))
	GUICtrlSetData($hTitle, "")
EndFunc   ;==>t_apply_click

Func insert_col_click()
	If $currentcol > _GUICtrlListView_GetColumnCount($hListView) - 2 Then
		_GUICtrlListView_InsertColumn($hListView, _GUICtrlListView_GetColumnCount($hListView) - 2, "New Column", 100)
	Else
		If $currentcol = 0 Then
			$currentcol = 1
		EndIf
		_GUICtrlListView_InsertColumn($hListView, $currentcol, "New Column", 100)
	EndIf
	addcol()
EndFunc   ;==>insert_col_click

Func delete_col_click()
	If _GUICtrlListView_GetColumnCount($hListView) = 3 Then
		MsgBox(0, "Error", "You can not delete First/Date/Time columns. These are reserved columns.")
		Return
	EndIf
	If $currentcol >= _GUICtrlListView_GetColumnCount($hListView) - 2 Then
		MsgBox(0, "Error", "Can not delete Date or Time columns. These are reserved columns.")
	ElseIf $currentcol = 0 Then
		MsgBox(0, "Error", "You must first click a column header." & @CRLF & "You can not delete the first column. This is a reserved column.")
	Else
		_GUICtrlListView_DeleteColumn($hListView, $currentcol)
	EndIf
	removecol()
EndFunc   ;==>delete_col_click

Func WM_NOTIFY($hWnd, $iMsg, $iwParam, $ilParam)
	Local $tNMHDR, $hWndFrom, $iCode, $col_width, $cInfo,$iIDFrom, $tInfo, $iLen, $aRect
	if $stopwork = true Then
		Return
	endif
	#forceref $hWnd, $iMsg, $iwParam, $col_width, $iIDFrom
	$tNMHDR = DllStructCreate($tagNMHDR, $ilParam)
	$hWndFrom = DllStructGetData($tNMHDR, "hWndFrom")
	$iCode = DllStructGetData($tNMHDR, "Code")
	$iIDFrom = DllStructGetData($tNMHDR, "IDFrom")
	If $stopwork = True Then
		Return
	EndIf
	Switch $hWndFrom
;~ 		case $open_col
;~ 			consolewrite("open")
		Case $hListView
			Switch $iCode
				Case $LVN_COLUMNCLICK ; A column was clicked
					$tInfo = DllStructCreate($tagNMLISTVIEW, $ilParam)
					$currentcol = DllStructGetData($tInfo, "SubItem")
					$cInfo = _GUICtrlListView_GetColumn($hListView, $currentcol)
					GUICtrlSetData($hEdit1, $cInfo[5])
				Case $NM_DBLCLK

					Local $aHit = _GUICtrlListView_SubItemHitTest($hListView)
					If ($aHit[0] <> -1) And ($aHit[1] > 0) Then
						$Item = $aHit[0]
						$SubItem = $aHit[1]
						$iSubItemText = _GUICtrlListView_GetItemText($hListView, $Item, $SubItem)
						$iLen = _GUICtrlListView_GetStringWidth($hListView, $iSubItemText)
						If $iLen = 0 Then
							$iLen = 20
						EndIf
						$aRect = _GUICtrlListView_GetSubItemRect($hListView, $Item, $SubItem)
						$hEdit = _GUICtrlEdit_Create($hGui, $iSubItemText, $aRect[0] + 2, $aRect[1] + 2, _GUICtrlListView_GetColumnWidth($hListView, $SubItem), 17, $Style)
						_GUICtrlEdit_SetSel($hEdit, 0, -1)
						_WinAPI_SetFocus($hEdit)
						$hDC = _WinAPI_GetWindowDC($hEdit)
						$hBrush = _WinAPI_CreateSolidBrush(0)
						FrameRect($hDC, 0, 0, _GUICtrlListView_GetColumnWidth($hListView, $SubItem), 17, $hBrush)
					ElseIf ($aHit[0] <> -1) And ($aHit[1] = 0) Then
						$Item = $aHit[0]
						$SubItem = $aHit[1]
						$iSubItemText = _GUICtrlListView_GetItemText($hListView, $Item)
						$iLen = _GUICtrlListView_GetStringWidth($hListView, $iSubItemText)
						$aRect = _GUICtrlListView_GetItemRect($hListView, $Item)
						$hEdit = _GUICtrlEdit_Create($hGui, $iSubItemText, $aRect[0] + 2, $aRect[1] + 2, _GUICtrlListView_GetColumnWidth($hListView, $SubItem) - 25, 17, $Style)
						_GUICtrlEdit_SetSel($hEdit, 0, -1)
						_WinAPI_SetFocus($hEdit)
						$hDC = _WinAPI_GetWindowDC($hEdit)
						$hBrush = _WinAPI_CreateSolidBrush(0)
						FrameRect($hDC, 0, 0, _GUICtrlListView_GetColumnWidth($hListView, $SubItem) - 25, 17, $hBrush)
					EndIf
			EndSwitch
	EndSwitch

	Return $GUI_RUNDEFMSG
EndFunc   ;==>WM_NOTIFY

Func FrameRect($hDC, $nLeft, $nTop, $nRight, $nBottom, $hBrush)
	Local $stRect = DllStructCreate("int;int;int;int")

	DllStructSetData($stRect, 1, $nLeft)
	DllStructSetData($stRect, 2, $nTop)
	DllStructSetData($stRect, 3, $nRight)
	DllStructSetData($stRect, 4, $nBottom)
	DllCall("user32.dll", "int", "FrameRect", "hwnd", $hDC, "ptr", DllStructGetPtr($stRect), "hwnd", $hBrush)
EndFunc   ;==>FrameRect

Func WM_COMMAND($hWnd, $msg, $wParam, $lParam)
	Local $iCode = BitShift($wParam, 16)
	#forceref $hWnd, $msg

	if $stopwork = true Then
		Return
	endif

	Switch $lParam
		Case $hEdit
			Switch $iCode
				Case $EN_KILLFOCUS
					settext()
					$Item = -1
					$SubItem = 0
			EndSwitch
	EndSwitch

	Return $GUI_RUNDEFMSG
EndFunc   ;==>WM_COMMAND

Func EvaluateKey($keycode)
	Local $iLen, $aRect
	#forceref $iLen
	sleep(10)
	if $stopwork = true Then
		Return
	endif
	If $keycode = 13 Then
		settext()
		$Item = -1
		$SubItem = 0
	ElseIf $keycode = 38 Then ;up arrow
		If $Item <> -1 Then
			$tItem = $Item
			$tSubitem = $SubItem
			$tiSubitemtext = $iSubItemText
		EndIf
		settext()
		If $tItem > 0 Then
			$tItem -= 1
		Else
			$tItem = 19
		EndIf
		$tiSubitemtext = _GUICtrlListView_GetItemText($hListView, $tItem, $tSubitem)
		$iLen = _GUICtrlListView_GetStringWidth($hListView, $tiSubitemtext)
		$aRect = _GUICtrlListView_GetSubItemRect($hListView, $tItem, $tSubitem)
		$hEdit = _GUICtrlEdit_Create($hGui, $tiSubitemtext, $aRect[0] + 2, $aRect[1] + 2, _GUICtrlListView_GetColumnWidth($hListView, $tSubitem), 17, $Style)
		_GUICtrlEdit_SetSel($hEdit, 0, -1)
		_WinAPI_SetFocus($hEdit)
		$hDC = _WinAPI_GetWindowDC($hEdit)
		$hBrush = _WinAPI_CreateSolidBrush(0)
		FrameRect($hDC, 0, 0, _GUICtrlListView_GetColumnWidth($hListView, $tSubitem), 17, $hBrush)
	ElseIf $keycode = 40 Then ;down arrow
		If $Item <> -1 Then
			$tItem = $Item
			$tSubitem = $SubItem
			$tiSubitemtext = $iSubItemText
		EndIf
		settext()
		If $tItem < 19 Then
			$tItem += 1
		Else
			$tItem = 0
		EndIf
		$tiSubitemtext = _GUICtrlListView_GetItemText($hListView, $tItem, $tSubitem)
		$iLen = _GUICtrlListView_GetStringWidth($hListView, $tiSubitemtext)
		$aRect = _GUICtrlListView_GetSubItemRect($hListView, $tItem, $tSubitem)
		$hEdit = _GUICtrlEdit_Create($hGui, $tiSubitemtext, $aRect[0] + 2, $aRect[1] + 2, _GUICtrlListView_GetColumnWidth($hListView, $tSubitem), 17, $Style)
		_GUICtrlEdit_SetSel($hEdit, 0, -1)
		_WinAPI_SetFocus($hEdit)
		$hDC = _WinAPI_GetWindowDC($hEdit)
		$hBrush = _WinAPI_CreateSolidBrush(0)
		FrameRect($hDC, 0, 0, _GUICtrlListView_GetColumnWidth($hListView, $tSubitem), 17, $hBrush)
	ElseIf $keycode = 37 Then ;left arrow
		If $Item <> -1 Then
			$tItem = $Item
			$tSubitem = $SubItem
			$tiSubitemtext = $iSubItemText
		EndIf
		settext()
		If $tSubitem > 0 Then
			$tSubitem -= 1
		Else
			$tSubitem = _GUICtrlListView_GetColumnCount($hListView) - 1
		EndIf
		$tiSubitemtext = _GUICtrlListView_GetItemText($hListView, $tItem, $tSubitem)
		$iLen = _GUICtrlListView_GetStringWidth($hListView, $tiSubitemtext)
		$aRect = _GUICtrlListView_GetSubItemRect($hListView, $tItem, $tSubitem)
		$hEdit = _GUICtrlEdit_Create($hGui, $tiSubitemtext, $aRect[0] + 2, $aRect[1] + 2, _GUICtrlListView_GetColumnWidth($hListView, $tSubitem), 17, $Style)
		_GUICtrlEdit_SetSel($hEdit, 0, -1)
		_WinAPI_SetFocus($hEdit)
		$hDC = _WinAPI_GetWindowDC($hEdit)
		$hBrush = _WinAPI_CreateSolidBrush(0)
		FrameRect($hDC, 0, 0, _GUICtrlListView_GetColumnWidth($hListView, $tSubitem), 17, $hBrush)
	ElseIf $keycode = 39 Then ;right arrow
		If $Item <> -1 Then
			$tItem = $Item
			$tSubitem = $SubItem
			$tiSubitemtext = $iSubItemText
		EndIf
		settext()
		If $tSubitem < _GUICtrlListView_GetColumnCount($hListView) - 1 Then
			$tSubitem += 1
		Else
			$tSubitem = 0
		EndIf
		$tiSubitemtext = _GUICtrlListView_GetItemText($hListView, $tItem, $tSubitem)
		$iLen = _GUICtrlListView_GetStringWidth($hListView, $tiSubitemtext)
		$aRect = _GUICtrlListView_GetSubItemRect($hListView, $tItem, $tSubitem)
		$hEdit = _GUICtrlEdit_Create($hGui, $tiSubitemtext, $aRect[0] + 2, $aRect[1] + 2, _GUICtrlListView_GetColumnWidth($hListView, $tSubitem), 17, $Style)
		_GUICtrlEdit_SetSel($hEdit, 0, -1)
		_WinAPI_SetFocus($hEdit)
		$hDC = _WinAPI_GetWindowDC($hEdit)
		$hBrush = _WinAPI_CreateSolidBrush(0)
		FrameRect($hDC, 0, 0, _GUICtrlListView_GetColumnWidth($hListView, $tSubitem), 17, $hBrush)
	ElseIf $keycode = 9 Then ;tab
		If $Item <> -1 Then
			$tItem = $Item
			$tSubitem = $SubItem
			$tiSubitemtext = $iSubItemText
		EndIf
		settext()
		If $tSubitem < _GUICtrlListView_GetColumnCount($hListView) - 1 Then
			$tSubitem += 1
		Else
			$tSubitem = 0
			If $tItem < 19 Then
				$tItem += 1
			Else
				$tItem = 0
			EndIf
		EndIf
		$tiSubitemtext = _GUICtrlListView_GetItemText($hListView, $tItem, $tSubitem)
		$iLen = _GUICtrlListView_GetStringWidth($hListView, $tiSubitemtext)
		$aRect = _GUICtrlListView_GetSubItemRect($hListView, $tItem, $tSubitem)
		$hEdit = _GUICtrlEdit_Create($hGui, $tiSubitemtext, $aRect[0] + 2, $aRect[1] + 2, _GUICtrlListView_GetColumnWidth($hListView, $tSubitem), 17, $Style)
		_GUICtrlEdit_SetSel($hEdit, 0, -1)
		_WinAPI_SetFocus($hEdit)
		$hDC = _WinAPI_GetWindowDC($hEdit)
		$hBrush = _WinAPI_CreateSolidBrush(0)
		FrameRect($hDC, 0, 0, _GUICtrlListView_GetColumnWidth($hListView, $tSubitem), 17, $hBrush)
	EndIf
EndFunc   ;==>EvaluateKey

Func settext()
	Local $iText = _GUICtrlEdit_GetText($hEdit)
	If $Item <> -1 Then
		_GUICtrlListView_SetItemText($hListView, $Item, $iText, $SubItem)
	Else
		_GUICtrlListView_SetItemText($hListView, $tItem, $iText, $tSubitem)
	EndIf
	_WinAPI_DeleteObject($hBrush)
	_WinAPI_ReleaseDC($hEdit, $hDC)
	_WinAPI_DestroyWindow($hEdit)
EndFunc   ;==>settext
;===========================================================
; callback function
;===========================================================
Func _KeyProc($nCode, $wParam, $lParam)
	Local $tKEYHOOKS
;~ 	sleep(0)
	if $stopwork = true Then
		Return
	endif
	$tKEYHOOKS = DllStructCreate($tagKBDLLHOOKSTRUCT, $lParam)
	If $nCode < 0 Then
		Return _WinAPI_CallNextHookEx($hHook, $nCode, $wParam, $lParam)
	EndIf
	If $wParam = $WM_KEYDOWN Then
		EvaluateKey(DllStructGetData($tKEYHOOKS, "vkCode"))
	Else
		Local $flags = DllStructGetData($tKEYHOOKS, "flags")
		Switch $flags
			Case $LLKHF_ALTDOWN
;~ 				ConsoleWrite("$LLKHF_ALTDOWN" & @CRLF)
			Case $LLKHF_EXTENDED
;~ 				ConsoleWrite("$LLKHF_EXTENDED" & @CRLF)
			Case $LLKHF_INJECTED
;~ 				ConsoleWrite("$LLKHF_INJECTED" & @CRLF)
			Case $LLKHF_UP
;~ 				ConsoleWrite("$LLKHF_UP: scanCode - " & DllStructGetData($tKEYHOOKS, "scanCode") & @TAB & "vkCode - " & DllStructGetData($tKEYHOOKS, "vkCode") & @CRLF)
		EndSwitch
	EndIf
	Return _WinAPI_CallNextHookEx($hHook, $nCode, $wParam, $lParam)
EndFunc   ;==>_KeyProc

Func Cleanup()
	_WinAPI_UnhookWindowsHookEx($hHook)
	DllCallbackFree($hStub_KeyProc)
EndFunc   ;==>Cleanup

Func setdatetime()
	Local $k
	If $stopwork = True Then
		Return
	EndIf
	sleep(0)

	For $k = 0 To _GUICtrlListView_GetItemCount($hListView)
		If _GUICtrlListView_GetItemChecked($hListView, $k) = True Then
			if _GUICtrlListView_GetItemText($hListView, $k, 0) <> "" then
				If _GUICtrlListView_GetItemText($hListView, $k, _GUICtrlListView_GetColumnCount($hListView) - 1) = "" Then
					_GUICtrlListView_SetItemText($hListView, $k, _NowTime(), _GUICtrlListView_GetColumnCount($hListView) - 1)
					_GUICtrlListView_SetItemText($hListView, $k, _NowDate(), _GUICtrlListView_GetColumnCount($hListView) - 2)
				EndIf
				If _GUICtrlListView_GetItemText($hListView, $k, _GUICtrlListView_GetColumnCount($hListView) - 2) = "" Then
					_GUICtrlListView_SetItemText($hListView, $k, _NowTime(), _GUICtrlListView_GetColumnCount($hListView) - 1)
					_GUICtrlListView_SetItemText($hListView, $k, _NowDate(), _GUICtrlListView_GetColumnCount($hListView) - 2)
				EndIf
			Else
				_GUICtrlListView_SetItemChecked($hListView, $k, false)
				msgbox(0,"Error","Can not check items which have no associated checklist item")
			endif
		Else
			If _GUICtrlListView_GetItemText($hListView, $k, _GUICtrlListView_GetColumnCount($hListView) - 1) <> "" Then
				_GUICtrlListView_SetItemText($hListView, $k, "", _GUICtrlListView_GetColumnCount($hListView) - 1)
				_GUICtrlListView_SetItemText($hListView, $k, "", _GUICtrlListView_GetColumnCount($hListView) - 2)
			EndIf
			If _GUICtrlListView_GetItemText($hListView, $k, _GUICtrlListView_GetColumnCount($hListView) - 2) <> "" Then
				_GUICtrlListView_SetItemText($hListView, $k, "", _GUICtrlListView_GetColumnCount($hListView) - 1)
				_GUICtrlListView_SetItemText($hListView, $k, "", _GUICtrlListView_GetColumnCount($hListView) - 2)
			EndIf
		EndIf
	Next


EndFunc   ;==>setdatetime

Func clearall()
	Local $tempX, $tempY, $currcount, $cInfo
	#forceref $cInfo
	$currcount = _GUICtrlListView_GetColumnCount($hListView)
	if $currcount > $col_count Then
		While _GUICtrlListView_GetColumnCount($hListView) > $col_count
			$currcount = _GUICtrlListView_GetColumnCount($hListView) - 1
			_GUICtrlListView_DeleteColumn($hListView, $currcount)
			removecol()
		wend
	elseif $currcount < $col_count Then
		While _GUICtrlListView_GetColumnCount($hListView) < $col_count
			$currcount = _GUICtrlListView_GetColumnCount($hListView) - 1
			_GUICtrlListView_InsertColumn($hListView, _GUICtrlListView_GetColumnCount($hListView), "", 100)
			addcol()
		wend
	endif
	For $tempX = 0 To 19
		_GUICtrlListView_SetItemChecked($hListView, $tempX - 2, False)
		For $tempY = 0 To _GUICtrlListView_GetColumnCount($hListView) - 1
			_GUICtrlListView_SetItemText($hListView, $tempX, "", $tempY)
		Next
	Next
	For $tempY = 0 To _GUICtrlListView_GetColumnCount($hListView) - 3
		_GUICtrlListView_SetColumn($hListView, $tempY, "", 100)
	Next
	_GUICtrlListView_SetColumn($hListView, _GUICtrlListView_GetColumnCount($hListView) - 2, "Date")
	_GUICtrlListView_SetColumn($hListView, _GUICtrlListView_GetColumnCount($hListView) - 1, "Time")
	resetcol()
EndFunc   ;==>clearall

func createlistview()
	local $i, $cInfo
	#forceref $cInfo
	_GUIScrollBars_SetScrollInfoPos($h_cGUI, $SB_Vert, 0)
	$hListView = _GUICtrlListView_Create($hGui, "", 2, 2, 645, 375, BitOR($LVS_EDITLABELS, $LVS_REPORT))
_GUICtrlListView_SetExtendedListViewStyle($hListView, BitOR($LVS_EX_GRIDLINES, $LVS_EX_CHECKBOXES))

_GUICtrlListView_AddColumn($hListView, "Column1", 175, -1)
_GUICtrlListView_AddColumn($hListView, "Column2", 75, -1)
_GUICtrlListView_AddColumn($hListView, "Column3", 100, -1)
_GUICtrlListView_AddColumn($hListView, "Column4", 100, -1)
_GUICtrlListView_AddColumn($hListView, "Date", 100, -1)
_GUICtrlListView_AddColumn($hListView, "Time", 100, -1)

For $i = 1 To 20
	If StringLen($i) = 1 Then
		$i = "0" & $i
	EndIf
	_GUICtrlListView_AddItem($hListView, "Checklist Item 1" & $i)
	_GUICtrlListView_AddSubItem($hListView, $i - 1, "Checklist Item 2" & $i, 1)
	_GUICtrlListView_AddSubItem($hListView, $i - 1, "Checklist Item 3" & $i, 2)
	_GUICtrlListView_AddSubItem($hListView, $i - 1, "Checklist Item 4" & $i, 3)
Next


for $i = 0 to _GUICtrlListView_GetColumnCount($hListView) - 1
	if $i > 49 Then
		msgbox(0,"Error","Column Limit Exceeded")
		Return
	endif
	$cInfo = _GUICtrlListView_GetColumn($hListView, $i)
	if $i = 0 then
		$colrequired[$i] = GUICtrlCreateCheckbox("", 10, 50, 90, 20)
		GUICtrlSetTip($colrequired[$i], "Check to require before checklist will be completed.")
		GUISetState()
	Else
		$colrequired[$i] = GUICtrlCreateCheckbox("", 10, 50 + (20 * $i), 90, 20)
		GUICtrlSetTip($colrequired[$i], "Check to require before checklist will be completed.")
		GUISetState()
	endif
	GUICtrlSetData($colrequired[$i],$cInfo[5])
	if $i >= _GUICtrlListView_GetColumnCount($hListView) - 2 or $i = 0 Then
		GUICtrlSetState($colrequired[$i], $GUI_DISABLE + $GUI_CHECKED)
	endif

next
	$req_upperlimit = 5
	;resetcol()

EndFunc

Func WM_SIZE($hWnd, $Msg, $wParam, $lParam)
	#forceref $Msg, $wParam
	Local $index = -1, $yChar, $xChar, $xClientMax, $xClient, $yClient, $ivMax
	For $x = 0 To UBound($aSB_WindowInfo) - 1
		If $aSB_WindowInfo[$x][0] = $hWnd Then
			$index = $x
			$xClientMax = $aSB_WindowInfo[$index][1]
			$xChar = $aSB_WindowInfo[$index][2]
			$yChar = $aSB_WindowInfo[$index][3]
			$ivMax = $aSB_WindowInfo[$index][7]
			ExitLoop
		EndIf
	Next
	If $index = -1 Then Return 0

	Local $tSCROLLINFO = DllStructCreate($tagSCROLLINFO)

	; Retrieve the dimensions of the client area.
	$xClient = BitAND($lParam, 0x0000FFFF)
	$yClient = BitShift($lParam, 16)
	$aSB_WindowInfo[$index][4] = $xClient
	$aSB_WindowInfo[$index][5] = $yClient

	; Set the vertical scrolling range and page size
	DllStructSetData($tSCROLLINFO, "fMask", BitOR($SIF_RANGE, $SIF_PAGE))
	DllStructSetData($tSCROLLINFO, "nMin", 0)
	DllStructSetData($tSCROLLINFO, "nMax", $ivMax)
	DllStructSetData($tSCROLLINFO, "nPage", $yClient / $yChar)
	_GUIScrollBars_SetScrollInfo($hWnd, $SB_VERT, $tSCROLLINFO)

	; Set the horizontal scrolling range and page size
	DllStructSetData($tSCROLLINFO, "fMask", BitOR($SIF_RANGE, $SIF_PAGE))
	DllStructSetData($tSCROLLINFO, "nMin", 0)
	DllStructSetData($tSCROLLINFO, "nMax", 2 + $xClientMax / $xChar)
	DllStructSetData($tSCROLLINFO, "nPage", $xClient / $xChar)
	_GUIScrollBars_SetScrollInfo($hWnd, $SB_HORZ, $tSCROLLINFO)

	Return $GUI_RUNDEFMSG
EndFunc   ;==>WM_SIZE

Func WM_HSCROLL($hWnd, $Msg, $wParam, $lParam)
	#forceref $Msg, $lParam
	Local $nScrollCode = BitAND($wParam, 0x0000FFFF)

	Local $index = -1, $xChar, $xPos
	Local $Min, $Max, $Page, $Pos, $TrackPos

	For $x = 0 To UBound($aSB_WindowInfo) - 1
		If $aSB_WindowInfo[$x][0] = $hWnd Then
			$index = $x
			$xChar = $aSB_WindowInfo[$index][2]
			ExitLoop
		EndIf
	Next
	If $index = -1 Then Return 0

;~ 	; Get all the horizontal scroll bar information
	Local $tSCROLLINFO = _GUIScrollBars_GetScrollInfoEx($hWnd, $SB_HORZ)
	$Min = DllStructGetData($tSCROLLINFO, "nMin")
	$Max = DllStructGetData($tSCROLLINFO, "nMax")
	$Page = DllStructGetData($tSCROLLINFO, "nPage")
	; Save the position for comparison later on
	$xPos = DllStructGetData($tSCROLLINFO, "nPos")
	$Pos = $xPos
	$TrackPos = DllStructGetData($tSCROLLINFO, "nTrackPos")
	#forceref $Min, $Max
	Switch $nScrollCode

		Case $SB_LINELEFT ; user clicked left arrow
			DllStructSetData($tSCROLLINFO, "nPos", $Pos - 1)

		Case $SB_LINERIGHT ; user clicked right arrow
			DllStructSetData($tSCROLLINFO, "nPos", $Pos + 1)

		Case $SB_PAGELEFT ; user clicked the scroll bar shaft left of the scroll box
			DllStructSetData($tSCROLLINFO, "nPos", $Pos - $Page)

		Case $SB_PAGERIGHT ; user clicked the scroll bar shaft right of the scroll box
			DllStructSetData($tSCROLLINFO, "nPos", $Pos + $Page)

		Case $SB_THUMBTRACK ; user dragged the scroll box
			DllStructSetData($tSCROLLINFO, "nPos", $TrackPos)
	EndSwitch

;~    // Set the position and then retrieve it.  Due to adjustments
;~    //   by Windows it may not be the same as the value set.

	DllStructSetData($tSCROLLINFO, "fMask", $SIF_POS)
	_GUIScrollBars_SetScrollInfo($hWnd, $SB_HORZ, $tSCROLLINFO)
	_GUIScrollBars_GetScrollInfo($hWnd, $SB_HORZ, $tSCROLLINFO)
	;// If the position has changed, scroll the window and update it
	$Pos = DllStructGetData($tSCROLLINFO, "nPos")
	If ($Pos <> $xPos) Then _GUIScrollBars_ScrollWindow($hWnd, $xChar * ($xPos - $Pos), 0)
	Return $GUI_RUNDEFMSG
EndFunc   ;==>WM_HSCROLL

Func WM_VSCROLL($hWnd, $Msg, $wParam, $lParam)
	#forceref $Msg, $wParam, $lParam
	Local $nScrollCode = BitAND($wParam, 0x0000FFFF)
	Local $index = -1, $yChar, $yPos
	Local $Min, $Max, $Page, $Pos, $TrackPos

	For $x = 0 To UBound($aSB_WindowInfo) - 1
		If $aSB_WindowInfo[$x][0] = $hWnd Then
			$index = $x
			$yChar = $aSB_WindowInfo[$index][3]
			ExitLoop
		EndIf
	Next
	If $index = -1 Then Return 0


	; Get all the vertial scroll bar information
	Local $tSCROLLINFO = _GUIScrollBars_GetScrollInfoEx($hWnd, $SB_VERT)
	$Min = DllStructGetData($tSCROLLINFO, "nMin")
	$Max = DllStructGetData($tSCROLLINFO, "nMax")
	$Page = DllStructGetData($tSCROLLINFO, "nPage")
	; Save the position for comparison later on
	$yPos = DllStructGetData($tSCROLLINFO, "nPos")
	$Pos = $yPos
	$TrackPos = DllStructGetData($tSCROLLINFO, "nTrackPos")

	Switch $nScrollCode
		Case $SB_TOP ; user clicked the HOME keyboard key
			DllStructSetData($tSCROLLINFO, "nPos", $Min)

		Case $SB_BOTTOM ; user clicked the END keyboard key
			DllStructSetData($tSCROLLINFO, "nPos", $Max)

		Case $SB_LINEUP ; user clicked the top arrow
			DllStructSetData($tSCROLLINFO, "nPos", $Pos - 1)

		Case $SB_LINEDOWN ; user clicked the bottom arrow
			DllStructSetData($tSCROLLINFO, "nPos", $Pos + 1)

		Case $SB_PAGEUP ; user clicked the scroll bar shaft above the scroll box
			DllStructSetData($tSCROLLINFO, "nPos", $Pos - $Page)

		Case $SB_PAGEDOWN ; user clicked the scroll bar shaft below the scroll box
			DllStructSetData($tSCROLLINFO, "nPos", $Pos + $Page)

		Case $SB_THUMBTRACK ; user dragged the scroll box
			DllStructSetData($tSCROLLINFO, "nPos", $TrackPos)

	EndSwitch

;~    // Set the position and then retrieve it.  Due to adjustments
;~    //   by Windows it may not be the same as the value set.

	DllStructSetData($tSCROLLINFO, "fMask", $SIF_POS)
	_GUIScrollBars_SetScrollInfo($hWnd, $SB_VERT, $tSCROLLINFO)
	_GUIScrollBars_GetScrollInfo($hWnd, $SB_VERT, $tSCROLLINFO)
	;// If the position has changed, scroll the window and update it
	$Pos = DllStructGetData($tSCROLLINFO, "nPos")

	If ($Pos <> $yPos) Then
		_GUIScrollBars_ScrollWindow($hWnd, 0, $yChar * ($yPos - $Pos))
		$yPos = $Pos
	EndIf

	Return $GUI_RUNDEFMSG

EndFunc   ;==>WM_VSCROLL

func removecol()
	local $tempX, $cInfo
	_GUIScrollBars_SetScrollInfoPos($h_cGUI, $SB_Vert, 0)
	GUISwitch($h_cGUI)
	$req_upperlimit -= 1
	for $tempX = 0 to 49
		GUICtrlDelete ($colrequired[$tempX])
	next

	for $tempX = 0 to $req_upperlimit
		$colrequired[$tempX] = GUICtrlCreateCheckbox("", 10, 50 + (20 * $tempX), 90, 20)
		GUICtrlSetTip($colrequired[$tempX], "Check to require before checklist will be completed.")
		$cInfo = _GUICtrlListView_GetColumn($hListView, $tempX)
		GUICtrlSetData($colrequired[$tempX],$cInfo[5])
			if $tempX >= _GUICtrlListView_GetColumnCount($hListView) - 2 or $tempX = 0 Then
				GUICtrlSetState($colrequired[$tempX], $GUI_DISABLE + $GUI_CHECKED)
			endif
	next
	GUISwitch($hGui)
EndFunc

func addcol()
	local $tempX, $cInfo
	_GUIScrollBars_SetScrollInfoPos($h_cGUI, $SB_Vert, 0)
	GUISwitch($h_cGUI)
	$req_upperlimit += 1
	for $tempX = 0 to 49
		GUICtrlDelete ($colrequired[$tempX])
	next

	for $tempX = 0 to $req_upperlimit
		$colrequired[$tempX] = GUICtrlCreateCheckbox("", 10, 50 + (20 * $tempX), 90, 20)
		GUICtrlSetTip($colrequired[$tempX], "Check to require before checklist will be completed.")
		$cInfo = _GUICtrlListView_GetColumn($hListView, $tempX)
		GUICtrlSetData($colrequired[$tempX],$cInfo[5])
			if $tempX >= _GUICtrlListView_GetColumnCount($hListView) - 2 or $tempX = 0 Then
				GUICtrlSetState($colrequired[$tempX], $GUI_DISABLE + $GUI_CHECKED)
			endif
	next
	GUISwitch($hGui)
endfunc

func resetcol()

	local $tempX, $cInfo
	_GUIScrollBars_SetScrollInfoPos($h_cGUI, $SB_Vert, 0)
	GUISwitch($h_cGUI)
	for $tempX = 0 to 49
		GUICtrlDelete ($colrequired[$tempX])
	next

	for $tempX = 0 to $req_upperlimit
		;msgbox(0,"",$tempX)
		$colrequired[$tempX] = GUICtrlCreateCheckbox("", 10, 50 + (20 * $tempX), 90, 20)
		GUICtrlSetTip($colrequired[$tempX], "Check to require before checklist will be completed.")
		$cInfo = _GUICtrlListView_GetColumn($hListView, $tempX)
		GUICtrlSetData($colrequired[$tempX],$cInfo[5])
			if $tempX >= _GUICtrlListView_GetColumnCount($hListView) - 2 or $tempX = 0 Then
				GUICtrlSetState($colrequired[$tempX], $GUI_DISABLE + $GUI_CHECKED)
			endif
	next
	GUISwitch($hGui)
endfunc