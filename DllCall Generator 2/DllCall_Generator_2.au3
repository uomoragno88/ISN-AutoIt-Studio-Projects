; thanks to toasterking for the original script "DllCall Code Generator"
; http://www.autoitscript.com/forum/topic/158296-dllcall-code-generator/?hl=%2Bdll+%2Bcall+%2Bgenerator
;
; DllCall Generator 2
;
#include <ComboConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <GuiListView.au3>
#include <ListViewConstants.au3>
#include <WindowsConstants.au3>
#include <MsgBoxConstants.au3>
#include <IE.au3>

#Region GUI
#include "Forms\dllcallgen_form.isf"
; create IE object
Global $oIE = ObjCreate("Shell.Explorer.2")
GUICtrlCreateObj($oIE, 280, 100, 350, 350)
GUICtrlSetState(-1, 32) ; HIDE IE object
#EndRegion GUI

; from http://www.autoitscript.com/forum/topic/158186-embedded-ie-copying-content/page-3
; add this line somewhere in your script if you plan to use clipboard this way later.
DllCall("ole32.dll", "long", "OleInitialize", "ptr", 0)

;if use debug disable "MustDeclareVars"
Opt("MustDeclareVars", 0) ;0=no, 1=require pre-declare

Global $aParams[1][3]
Local $nMsg
Local $sDllCallOut
Local $nExit
Local $ireturncode
Local $ilv, $fselected, $iworknumber
Local $fsuccess

GUICtrlSetData($ComboParamByref, "ByVal")
GUICtrlSetData($ComboOutput, "ConsoleWrite")
GUICtrlSetData($ComboCallConv, "stdcall")
GUISetState(@SW_SHOW)
While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $ButtonParamAdd
			ConvertType(GUICtrlRead($InputParamType)) ; Use the parameter type selected
			If @error Then
				If MsgBox($MB_ICONWARNING + $MB_OKCANCEL, "Unrecognized Type", "Unrecognized parameter type """ & GUICtrlRead($InputParamType) & """.  Make sure you are using an MSDN return type." & @CRLF & @CRLF & "If you are certain that the parameter type is correct and you happen to know the equivalent AutoIt parameter type, click OK.  You will be prompted later for the AutoIt parameter type.", 0, $FormMain) = 2 Then ContinueLoop
			EndIf
;~ 			If GUICtrlRead($ComboParamByref) = "ByRef" And StringLeft(GUICtrlRead($InputParamValue), 1) <> "$" Then
			If StringLeft(GUICtrlRead($InputParamValue), 1) <> "$" Then
				MsgBox($MB_ICONWARNING, "Error", "To use this parameter you must specify the name of a variable used in your AutoIt script, which must begin with a '$' symbol.", 0, $FormMain)
				ContinueLoop
			EndIf
			; Input seems okay; proceed.
			ReDim $aParams[UBound($aParams) + 1][3] ; Add a "row" to the array
			$aParams[UBound($aParams) - 1][0] = GUICtrlRead($InputParamType)
			$aParams[UBound($aParams) - 1][1] = GUICtrlRead($InputParamValue)
			$aParams[UBound($aParams) - 1][2] = GUICtrlRead($ComboParamByref)
			; Clear input fields and refocus
			GUICtrlSetData($InputParamType, "")
			GUICtrlSetData($InputParamValue, "")
			GUICtrlSetData($ComboParamByref, "ByVal")
			GUICtrlCreateListViewItem(UBound($aParams) - 1 & "|" & $aParams[UBound($aParams) - 1][0] & "|" & $aParams[UBound($aParams) - 1][1] & "|" & $aParams[UBound($aParams) - 1][2], $ListViewParams)
			;
			_GUICtrlListView_SetColumnWidth($ListViewParams, 0, $LVSCW_AUTOSIZE)
			_GUICtrlListView_SetColumnWidth($ListViewParams, 1, $LVSCW_AUTOSIZE)
			_GUICtrlListView_SetColumnWidth($ListViewParams, 2, $LVSCW_AUTOSIZE)
			_GUICtrlListView_SetColumnWidth($ListViewParams, 3, $LVSCW_AUTOSIZE)
			;
			ControlFocus($FormMain, "", $InputParamType)
			; Edit list View
		Case $ButtonParamEdit
			$iworknumber = GUICtrlRead($InputParamNumber)
			If $iworknumber = "" Then ; set input box from list view row selected
				For $ilv = 0 To UBound($aParams)
					$fselected = _GUICtrlListView_GetItemSelected($ListViewParams, $ilv)
					If $fselected Then
						; set input fields and refocus
						GUICtrlSetData($InputParamType, $aParams[$ilv + 1][0])
						GUICtrlSetData($InputParamValue, $aParams[$ilv + 1][1])
						GUICtrlSetData($ComboParamByref, $aParams[$ilv + 1][2])
						GUICtrlSetData($InputParamNumber, $ilv + 1)
						ControlFocus($FormMain, "", $InputParamType)
					EndIf
				Next
			Else ; set list view row from inputbox
				ConvertType(GUICtrlRead($InputParamType)) ; Use the parameter type selected
				If @error Then
					If MsgBox($MB_ICONWARNING + $MB_OKCANCEL, "Unrecognized Type", "Unrecognized parameter type """ & GUICtrlRead($InputParamType) & """.  Make sure you are using an MSDN return type." & @CRLF & @CRLF & "If you are certain that the parameter type is correct and you happen to know the equivalent AutoIt parameter type, click OK.  You will be prompted later for the AutoIt parameter type.", 0, $FormMain) = 2 Then ContinueLoop
				EndIf
;~ 			If GUICtrlRead($ComboParamByref) = "ByRef" And StringLeft(GUICtrlRead($InputParamValue), 1) <> "$" Then
				If StringLeft(GUICtrlRead($InputParamValue), 1) <> "$" Then
					MsgBox($MB_ICONWARNING, "Error", "To use this parameter you must specify the name of a variable used in your AutoIt script, which must begin with a '$' symbol.", 0, $FormMain)
					ContinueLoop
				EndIf
				; Input seems okay; proceed.
				$aParams[$iworknumber][0] = GUICtrlRead($InputParamType)
				$aParams[$iworknumber][1] = GUICtrlRead($InputParamValue)
				$aParams[$iworknumber][2] = GUICtrlRead($ComboParamByref)
				; Clear input fields and refocus
				GUICtrlSetData($InputParamNumber, "")
				GUICtrlSetData($InputParamType, "")
				GUICtrlSetData($InputParamValue, "")
				GUICtrlSetData($ComboParamByref, "ByVal")
				; set item
				$fsuccess = _GUICtrlListView_SetItem($ListViewParams, $iworknumber, $iworknumber - 1)
				; set subitem
				$fsuccess = _GUICtrlListView_SetItemText($ListViewParams, $iworknumber - 1, $aParams[$iworknumber][0], 1)
				$fsuccess = _GUICtrlListView_SetItemText($ListViewParams, $iworknumber - 1, $aParams[$iworknumber][1], 2)
				$fsuccess = _GUICtrlListView_SetItemText($ListViewParams, $iworknumber - 1, $aParams[$iworknumber][2], 3)
				;
				_GUICtrlListView_SetColumnWidth($ListViewParams, 0, $LVSCW_AUTOSIZE)
				_GUICtrlListView_SetColumnWidth($ListViewParams, 1, $LVSCW_AUTOSIZE)
				_GUICtrlListView_SetColumnWidth($ListViewParams, 2, $LVSCW_AUTOSIZE)
				_GUICtrlListView_SetColumnWidth($ListViewParams, 3, $LVSCW_AUTOSIZE)
				;
				ControlFocus($FormMain, "", $InputParamType)
			EndIf
			; Delete all items
		Case $ButtonParamDelete
			_GUICtrlListView_DeleteAllItems($ListViewParams)
			ReDim $aParams[1][3]
;~ 		Case $ButtonTest
;~ 			$sDllCallOut = GenerateCode("MsgBox") ; Always use MsgBox for output when generating for testing.
;~ 			GUICtrlSetData($EditCode, $sDllCallOut)
;~ 			If $sDllCallOut <> "" Then
;~ 				GUISetState(@SW_DISABLE, $FormMain)
;~ 				GUICtrlSetData($ButtonTest, "Executing...")
;~ 				FileDelete(@TempDir & "\DllCallExec.au3")
;~ 				FileWrite(@TempDir & "\DllCallExec.au3", $sDllCallOut); Write code to temporary file to be executed.
;~ 				$nExit = RunWait(@AutoItExe & ' /AutoIt3ExecuteScript "' & @TempDir & '\DllCallExec.au3"', @TempDir) ; Execute the temporary file.
;~ 				If $nExit <> 0 Then
;~ 					Switch $nExit
;~ 						Case 1
;~ 							MsgBox($MB_ICONERROR, "DLL Code Generator", "The AutoIt interpreter encountered an error while parsing or executing the generated code." & @CRLF & "Exit code: " & $nExit, 0, $FormMain)
;~ 						Case Else
;~ 							MsgBox($MB_ICONERROR, "DLL Code Generator", "There was a problem with the DllCall (possibly incorrect parameters).  The AutoIt interpreter ended unexpectedly." & @CRLF & "Exit code: " & $nExit, 0, $FormMain)
;~ 					EndSwitch
;~ 				EndIf
;~ 				GUICtrlSetData($ButtonTest, "Test Code")
;~ 				GUISetState(@SW_ENABLE, $FormMain)
;~ 				FileDelete(@TempDir & "\DllCallExec.au3")
;~ 				WinActivate($FormMain)
;~ 			EndIf
		Case $ButtonGenonly
			$sDllCallOut = GenerateCode(GUICtrlRead($ComboOutput))
			GUICtrlSetData($EditCode, $sDllCallOut)
		Case $ButtonCopy
			$sDllCallOut = GenerateCode(GUICtrlRead($ComboOutput))
			GUICtrlSetData($EditCode, $sDllCallOut)
			If ClipPut($sDllCallOut) Then
				ToolTip("Copied!")
			Else
				ToolTip("Copy failed!")
			EndIf
			Sleep(1000)
			ToolTip("")
		Case $ButtonCapture
			; set variable to original state
			GUICtrlSetData($hMsgBar, "")
			_GUICtrlListView_DeleteAllItems($ListViewParams)
			ReDim $aParams[1][3]
			; load url
			GUICtrlSetData($hMsgBar, "Loading web page ...")
			Local $sMSDNURL
			$sMSDNURL = GUICtrlRead($hMSDNURL)
			$oIE.navigate($sMSDNURL)
			_IELoadWait($oIE)
			$ireturncode = CaptureFromMSDN()
			GUICtrlSetData($hMsgBar, "Done!")
		Case $InputFunc
			If StringRight(GUICtrlRead($InputFunc), 1) == "W" Then ; Check if last character of entered function name is a capital "W"
				GUICtrlSetState($RadioFuncUnicode, $GUI_CHECKED)
			Else
				GUICtrlSetState($RadioFuncAnsi, $GUI_CHECKED)
			EndIf
		Case $GUI_EVENT_CLOSE
			Exit
	EndSwitch
WEnd
Func GenerateCode($sOutputType = "")
	Local $sArch, $sReturnTypeOut, $sParamTypeOut, $sDllFuncName, $sDllCallOut, $sCmdOutStart, $sCmdOutEnd, $fOutputGen
	Switch $sOutputType
		Case "ConsoleWrite"
			$sCmdOutStart = 'ConsoleWrite('
			$sCmdOutEnd = ' & @CRLF)'
			$fOutputGen = 1
		Case "MsgBox"
			$sCmdOutStart = 'MsgBox(0,"DllCall Code Generator",'
			$sCmdOutEnd = ')'
			$fOutputGen = 1
		Case Else
			$sCmdOutStart = ""
			$sCmdOutEnd = ""
			$fOutputGen = 0
	EndSwitch
	If GUICtrlRead($RadioFuncAnsi) = $GUI_CHECKED Then $sArch = "a"
	If GUICtrlRead($RadioFuncUnicode) = $GUI_CHECKED Then $sArch = "w"
	$sDllFuncName = GUICtrlRead($InputDll) & "/" & GUICtrlRead($InputFunc)
	$sReturnTypeOut = ConvertType(GUICtrlRead($InputReturnType))
	If @error Then
		$sReturnTypeOut = InputBox("Unrecognized Type", "Unrecognized return type """ & GUICtrlRead($InputReturnType) & """.  Make sure you are using an MSDN return type." & @CRLF & @CRLF & "If you are certain that the return type is correct and you happen to know the equivalent AutoIt return type, you may enter the AutoIt return type here.", "", "", Default, 220, Default, Default, 0, $FormMain)
		If $sReturnTypeOut = "" Then Return SetError(1, 0, "")
	EndIf
	$sReturnTypeOut = ConvertTypeArch($sReturnTypeOut, $sArch)
	If GUICtrlRead($ComboCallConv) <> "stdcall" Then
		$sReturnTypeOut &= ':' & GUICtrlRead($ComboCallConv)
	EndIf
	
	If UBound($aParams) > 1 Then
		For $x = 1 To UBound($aParams) - 1
			$sDllCallOut &= "Local " & $aParams[$x][1] & @CRLF
		Next
	EndIf
	
	$sDllCallOut &= 'Local $aDllCallReturn,$vDllCallReturn' & @CRLF
	$sDllCallOut &= '$aDllCallReturn = DllCall("' & GUICtrlRead($InputDll) & '","' & $sReturnTypeOut & '","' & GUICtrlRead($InputFunc) & '"'
	If UBound($aParams) > 1 Then
		For $x = 1 To UBound($aParams) - 1
			$sParamTypeOut = ''
			$sParamTypeOut = ConvertTypeArch(ConvertType($aParams[$x][0]), $sArch)
			If $sParamTypeOut = '' Then
				$sParamTypeOut = InputBox("Unrecognized Type", "Unrecognized parameter type """ & $aParams[$x][0] & """.  Make sure you are using an MSDN parameter type." & @CRLF & @CRLF & "If you are certain that the parameter type is correct and you happen to know the equivalent AutoIt parameter type, you may enter the AutoIt parameter type here.", "", "", Default, 220, Default, Default, 0, $FormMain)
				If $sParamTypeOut = "" Then Return (SetError(1, 0, ""))
				If StringRight($sParamTypeOut, 1) = "*" Then $sParamTypeOut = StringTrimRight($sParamTypeOut, 1) ; If the user added an asterisk to the end of the parameter type, remove it; it will be added back later if necessary.
			EndIf
			$sDllCallOut &= ',"' & $sParamTypeOut
			If $aParams[$x][2] = "ByRef" Then $sDllCallOut &= '*'
			$sDllCallOut &= '", ' & $aParams[$x][1]
		Next
	EndIf
	$sDllCallOut &= ')' & @CRLF
	; Generate code to check for DllCall execution error.
	If $fOutputGen = 1 Then $sDllCallOut &= _
			'If @error Then' & @CRLF & _
			'   Switch @error' & @CRLF & _
			'      Case 1' & @CRLF & _
			'         ' & $sCmdOutStart & '"DllCall error (' & $sDllFuncName & '): Unable to use the DLL file.  Possibly a problem with the parameters."' & $sCmdOutEnd & @CRLF & _
			'      Case 2' & @CRLF & _
			'         ' & $sCmdOutStart & '"DllCall error (' & $sDllFuncName & '): Unknown return type."' & $sCmdOutEnd & @CRLF & _
			'      Case 3' & @CRLF & _
			'         ' & $sCmdOutStart & '"DllCall error (' & $sDllFuncName & '): Function not found in DLL file.  Remember that function names are case sensitive."' & $sCmdOutEnd & @CRLF & _
			'      Case 4' & @CRLF & _
			'         ' & $sCmdOutStart & '"DllCall error (' & $sDllFuncName & '): Incorrect number of parameters."' & $sCmdOutEnd & @CRLF & _
			'      Case 5' & @CRLF & _
			'         ' & $sCmdOutStart & '"DllCall error (' & $sDllFuncName & '): Bad parameter."' & $sCmdOutEnd & @CRLF & _
			'      Case Else' & @CRLF & _
			'         ' & $sCmdOutStart & '"DllCall error (' & $sDllFuncName & '): Unknown/unspecified error."' & $sCmdOutEnd & @CRLF & _
			'   EndSwitch' & @CRLF & _
			'   $vDllCallReturn = ""' & @CRLF & _
			'Else' & @CRLF
	If $fOutputGen = 1 Then $sDllCallOut &= '   '
	$sDllCallOut &= '$vDllCallReturn = $aDllCallReturn[0]' & @CRLF
	; Generate code to assign returned values back to their AutoIt variables.
	If UBound($aParams) > 1 Then
		For $x = 1 To UBound($aParams) - 1
;~ 			If $aParams[$x][2] = "ByRef" Then
				If $fOutputGen = 1 Then $sDllCallOut &= '   '
				$sDllCallOut &= $aParams[$x][1] & ' = $aDllCallReturn[' & $x & ']' & @CRLF
;~ 			EndIf
		Next
	EndIf
	; Generate code to output values of the variables after DLLCall
	If $fOutputGen = 1 Then
		$sDllCallOut &= '   ' & $sCmdOutStart
		If UBound($aParams) > 1 Then
			For $x = 1 To UBound($aParams) - 1
;~ 				If $aParams[$x][2] = "ByRef" Then
					$sDllCallOut &= '"' & $aParams[$x][1] & ' = " & ' & $aParams[$x][1] & ' & @CRLF & '
;~ 				EndIf
			Next
		EndIf
		$sDllCallOut &= '"DllCall return value: " & $vDllCallReturn' & $sCmdOutEnd & @CRLF
		$sDllCallOut &= "EndIf" & @CRLF
	EndIf
	Return $sDllCallOut
EndFunc   ;==>GenerateCode
; Convert the MSDN variable type to AutoIt variable type
Func ConvertType($MSDN_Type)
	Switch $MSDN_Type
		Case 'ATOM'
			Return 'WORD'
		Case 'BOOL'
			Return 'BOOL'
		Case 'BOOLEAN'
			Return 'BOOLEAN'
		Case 'BYTE'
			Return 'BYTE'
		Case 'CHAR'
			Return 'str'
		Case 'COLORREF'
			Return 'DWORD'
		Case 'CONST'
			Return 'const'
		Case 'DWORD'
			Return 'DWORD'
		Case 'DWORDLONG'
			Return 'ULONG'
		Case 'DWORD_PTR'
			Return 'DWORD_PTR'
		Case 'DWORD32'
			Return 'UINT'
		Case 'DWORD64'
			Return 'INT64'
		Case 'FLOAT'
			Return 'FLOAT'
		Case 'HACCEL'
			Return 'HANDLE'
		Case 'HALF_PTR'
			Return 'ptr'
		Case 'HANDLE'
			Return 'HANDLE'
		Case 'HBITMAP'
			Return 'HANDLE'
		Case 'HBRUSH'
			Return 'HANDLE'
		Case 'HCONV'
			Return 'HANDLE'
		Case 'HCONVLIST'
			Return 'HANDLE'
		Case 'HCURSOR'
			Return 'HICON'
		Case 'HDC'
			Return 'HANDLE'
		Case 'HDDEDATA'
			Return 'HANDLE'
		Case 'HDESK'
			Return 'HANDLE'
		Case 'HDROP'
			Return 'HANDLE'
		Case 'HDWP'
			Return 'HANDLE'
		Case 'HENHMETAFILE'
			Return 'HANDLE'
		Case 'HFILE'
			Return 'int'
		Case 'HFONT'
			Return 'HANDLE'
		Case 'HGIDOBJ'
			Return 'HANDLE'
		Case 'HGLOBAL'
			Return 'HANDLE'
		Case 'HHOOK'
			Return 'HANDLE'
		Case 'HICON'
			Return 'HANDLE'
		Case 'HINSTANCE'
			Return 'HANDLE'
		Case 'HKEY'
			Return 'HANDLE'
		Case 'HKL'
			Return 'HANDLE'
		Case 'HLOCAL'
			Return 'HANDLE'
		Case 'HMENU'
			Return 'HANDLE'
		Case 'HMETAFILE'
			Return 'HANDLE'
		Case 'HMODULE'
			Return 'HANDLE'
		Case 'HMONITOR'
			Return 'HANDLE'
		Case 'HPALETTE'
			Return 'HANDLE'
		Case 'HPEN'
			Return 'HANDLE'
		Case 'HRESULT'
			Return 'LONG'
		Case 'HRGN'
			Return 'HANDLE'
		Case 'HRSRC'
			Return 'HANDLE'
		Case 'HSZ'
			Return 'HANDLE'
		Case 'HWINSTA'
			Return 'HANDLE'
		Case 'HWND'
			Return 'HWND'
		Case 'INT_PTR'
			Return 'INT_PTR'
		Case 'INT32'
			Return 'int'
		Case 'INT'
			Return 'int'
		Case 'INT64'
			Return 'INT64'
		Case 'LANGID'
			Return 'WORD'
		Case 'LARGE_INTEGER'
			Return 'INT64'
		Case 'LCID'
			Return 'DWORD'
		Case 'LGRPID'
			Return 'DWORD'
		Case 'LONG'
			Return 'LONG'
		Case 'LONGLONG'
			Return 'INT64'
		Case 'LONG_PTR'
			Return 'LONG_PTR'
		Case 'LONG32'
			Return 'int'
		Case 'LONG64'
			Return 'INT64'
		Case 'LPARAM'
			Return 'LPARAM'
		Case 'LPBOOL'
			Return 'int'
		Case 'LPBYTE'
			Return 'int'
		Case 'LPCOLORREF'
			Return 'DWORD'
		Case 'LPCSTR'
			Return 'str'
		Case 'LPCTSTR'
			Return 'str'
		Case 'LPCWSTR'
			Return 'wstr'
		Case 'LPDWORD'
			Return 'DWORD'
		Case 'LPHANDLE'
			Return 'HANDLE'
		Case 'LPINT'
			Return 'int'
		Case 'LPLONG'
			Return 'long'
		Case 'LPSTR'
			Return 'str'
		Case 'LPTSTR'
			Return 'str'
		Case 'LPVOID'
			Return 'ptr'
		Case 'LPWORD'
			Return 'WORD'
		Case 'LPWSTR'
			Return 'wstr'
		Case 'LRESULT'
			Return 'LRESULT'
		Case 'PBOOL'
			Return 'BOOL'
		Case 'PBOOLEAN'
			Return 'BOOLEAN'
		Case 'PBYTE'
			Return 'BYTE'
		Case 'PCHAR'
			Return 'str'
		Case 'PCSTR'
			Return 'str'
		Case 'PCTSTR'
			Return 'str'
		Case 'PCWSTR'
			Return 'wstr'
		Case 'PDWORD'
			Return 'DWORD'
		Case 'PDWORDLONG'
			Return 'UINT64'
		Case 'PDWORD_PTR'
			Return 'DWORD_PTR'
		Case 'PDWORD32'
			Return 'UINT'
		Case 'PDWORD64'
			Return 'INT64'
		Case 'PFLOAT'
			Return 'FLOAT'
		Case 'PHALF_PTR'
			Return 'ptr'
		Case 'PHANDLE'
			Return 'HANDLE'
		Case 'PHKEY'
			Return 'HANDLE'
		Case 'PINT'
			Return 'int'
		Case 'PINT_PTR'
			Return 'INT_PTR'
		Case 'PINT32'
			Return 'int'
		Case 'PINT64'
			Return 'INT64'
		Case 'PLCID'
			Return 'DWORD'
		Case 'PLONG'
			Return 'LONG'
		Case 'PLONGLONG'
			Return 'INT64'
		Case 'PLONG_PTR'
			Return 'LONG_PTR'
		Case 'PLONG32'
			Return 'long'
		Case 'PLONG64'
			Return 'INT64'
		Case 'POINTER_32'
			Return 'ptr'
		Case 'POINTER_64'
			Return 'ptr'
		Case 'POINTER_SIGNED'
			Return 'ptr'
		Case 'POINTER_UNSIGNED'
			Return 'ULONG_PTR'
		Case 'PSHORT'
			Return 'SHORT'
		Case 'PSIZE_T'
			Return 'ULONG_PTR'
		Case 'PSSIZE_T'
			Return 'LONG_PTR'
		Case 'PSTR'
			Return 'str'
		Case 'PTBYTE'
			Return 'BYTE'
		Case 'PTCHAR'
			Return 'wstr'
		Case 'PTSTR'
			Return 'wstr'
		Case 'PUCHAR'
			Return 'BYTE'
		Case 'PUHALF_PTR'
			Return 'ptr'
		Case 'PUINT'
			Return 'UINT'
		Case 'PUINT_PTR'
			Return 'UINT_PTR'
		Case 'PUINT32'
			Return 'UINT'
		Case 'PUINT64'
			Return 'UINT64'
		Case 'PULARGE_INTEGER'
			Return 'UINT64'
		Case 'PULONG'
			Return 'ULONG'
		Case 'PULONGLONG'
			Return 'UINT64'
		Case 'PULONG_PTR'
			Return 'ULONG_PTR'
		Case 'PULONG32'
			Return 'ULONG'
		Case 'PULONG64'
			Return 'UINT64'
		Case 'PUSHORT'
			Return 'USHORT'
		Case 'PVOID'
			Return 'ptr'
		Case 'PWCHAR'
			Return 'wstr'
		Case 'PWORD'
			Return 'WORD'
		Case 'PWSTR'
			Return 'wstr'
		Case 'SC_HANDLE'
			Return 'HANDLE'
		Case 'SC_LOCK'
			Return 'ptr'
		Case 'SERVICE_STATUS_HANDLE'
			Return 'HANDLE'
		Case 'SHORT'
			Return 'SHORT'
		Case 'SIZE_T'
			Return 'ULONG_PTR'
		Case 'SSIZE_T'
			Return 'LONG_PTR'
		Case 'TBYTE'
			Return 'wstr'
		Case 'TCHAR'
			Return 'wstr'
		Case 'UCHAR'
			Return 'BYTE'
		Case 'UHALF_PTR'
			Return 'ptr'
		Case 'UINT'
			Return 'UINT'
		Case 'UINT_PTR'
			Return 'UINT_PTR'
		Case 'UINT32'
			Return 'UINT'
		Case 'UINT64'
			Return 'UINT64'
		Case 'ULARGE_INTEGER'
			Return 'UINT64'
		Case 'ULONG'
			Return 'ULONG'
		Case 'ULONGLONG'
			Return 'UINT64'
		Case 'ULONG_PTR'
			Return 'ULONG_PTR'
		Case 'ULONG32'
			Return 'ULONG'
		Case 'ULONG64'
			Return 'UINT64'
		Case 'UNICODE_STRING'
			Return 'ptr'
		Case 'USHORT'
			Return 'USHORT'
		Case 'USN'
			Return 'INT64'
		Case 'VOID'
			Return 'none'
		Case 'WCHAR'
			Return 'wstr'
		Case 'WORD'
			Return 'WORD'
		Case 'WPARAM'
			Return 'WPARAM'
		Case Else
			SetError(1)
			Return ""
	EndSwitch
EndFunc   ;==>ConvertType
; Some variable types should be converted from their ANSI to Unicode types or vice versa.
Func ConvertTypeArch($MSDN_Type, $sArch)
	Switch $MSDN_Type
		Case 'STR'
			If $sArch = "a" Then Return "str"
			If $sArch = "w" Then Return "wstr"
		Case 'WSTR'
			If $sArch = "a" Then Return "str"
			If $sArch = "w" Then Return "wstr"
		Case Else
			Return $MSDN_Type
	EndSwitch
EndFunc   ;==>ConvertTypeArch

Func CaptureFromMSDN()
	; https://msdn.microsoft.com/en-us/library/aa364935%28VS.85%29.aspx
	Local $istart, $iend, $ireturncode, $iprestart
	Local $sMSDNPage
	Local $sSyntax
	Local $sParameters
	Local $sReturnvalue
	Local $sRemarks
	Local $sExamples
	Local $sRequirements
	Local $sSeealso
	Local $iSyntaxSectPresent
	Local $iParametersSectPresent
	Local $iReturnvalueSectPresent
	Local $iRemarksSectPresent
	Local $iExamplesSectPresent
	Local $iRequirementsSectPresent
	Local $iSeealsoSectPresent
	Local $iCommunityAdditionsPresent
	Local $sReturnType
	Local $sFunctionName
	Local $sDLL
	Local $iDLLSectPresent
	Local $sUnicodeandANSI
	Local $iUnicodeandANSISectPresent
	Local $sUnicodeName
	Local $sANSIName
	Local $awork, $swork, $arow, $ioffset

	; from http://www.autoitscript.com/forum/topic/158186-embedded-ie-copying-content/page-3
	ControlClick("DllCall Code Generator 2.0", "", "[CLASS:Internet Explorer_Server; INSTANCE:1]")
	Sleep(200)
	Send("^a")
	Sleep(200)
	Send("^c")
;~ 	ControlSetText("DllCall Code Generator 2.0", "", "[CLASS:Edit; INSTANCE:8]", ClipGet())
;~ 	$sMSDNPage = GUICtrlRead($InputFromMSDNPage)
	$sMSDNPage = ClipGet()

	#Region verify if section is present
	; Verify Section
	GUICtrlSetData($hMsgBar, "Parsing section ...")
	$istart = StringInStr($sMSDNPage, "Syntax" & @CRLF, $STR_CASESENSE)
	If $istart = 0 Then
		$iSyntaxSectPresent = False
;~ 		$ireturncode = False
		Return SetError(1, 0, 0)
		;messaggio di stop
	Else
		$iSyntaxSectPresent = True
		$iprestart = $istart
	EndIf
	
	$istart = StringInStr($sMSDNPage, "Parameters" & @CRLF, $STR_CASESENSE, 1, $iprestart)
	If $istart = 0 Then
		$iParametersSectPresent = False
;~ 		$ireturncode = False
		Return SetError(2, 0, 0)
		;messaggio di stop
	Else
		$iParametersSectPresent = True
		$iprestart = $istart
	EndIf
	
	$istart = StringInStr($sMSDNPage, "Return value" & @CRLF, $STR_CASESENSE, 1, $iprestart)
	If $istart = 0 Then
		$iReturnvalueSectPresent = False
;~ 		$ireturncode = False
		Return SetError(3, 0, 0)
		;messaggio di stop
	Else
		$iReturnvalueSectPresent = True
		$iprestart = $istart
	EndIf
	
	$istart = StringInStr($sMSDNPage, "Remarks" & @CRLF, $STR_CASESENSE, 1, $iprestart)
	If $istart = 0 Then
		$iRemarksSectPresent = False
	Else
		$iRemarksSectPresent = True
		$iprestart = $istart
	EndIf

	$istart = StringInStr($sMSDNPage, "Examples" & @CRLF, $STR_CASESENSE, 1, $iprestart)
	If $istart = 0 Then
		$iExamplesSectPresent = False
	Else
		$iExamplesSectPresent = True
		$iprestart = $istart
	EndIf

	$istart = StringInStr($sMSDNPage, "Requirements" & @CRLF, $STR_CASESENSE, 1, $iprestart)
	If $istart = 0 Then
		$iRequirementsSectPresent = False
;~ 		$ireturncode = False
		Return SetError(4, 0, 0)
		;messaggio di stop
	Else
		$iRequirementsSectPresent = True
		$iprestart = $istart
	EndIf
	
	$istart = StringInStr($sMSDNPage, "See also" & @CRLF, $STR_CASESENSE, 1, $iprestart)
	If $istart = 0 Then
		$iSeealsoSectPresent = False
	Else
		$iSeealsoSectPresent = True
		$iprestart = $istart
	EndIf
	
	$istart = StringInStr($sMSDNPage, "Community Additions" & @CRLF, $STR_CASESENSE, 1, $iprestart)
	If $istart = 0 Then
		$iCommunityAdditionsPresent = False
	Else
		$iCommunityAdditionsPresent = True
	EndIf
	#EndRegion verify if section is present

	#Region parse Syntax Section
	; Syntax Section
	$istart = StringInStr($sMSDNPage, "Syntax" & @CRLF, $STR_CASESENSE)
	$iprestart = $istart
	$iend = StringInStr($sMSDNPage, "Parameters" & @CRLF, $STR_CASESENSE, 1, $iprestart)
	$sSyntax = StringMid($sMSDNPage, $istart, $iend - $istart - 1)
	Local $aparamfromMSDN
	Local $iparamrow, $ifirstparamrow, $ilastparamrow
	$aparamfromMSDN = StringSplit($sSyntax, @CRLF, $STR_ENTIRESPLIT)
	For $iparamrow = 1 To $aparamfromMSDN[0]
		Select
			Case StringInStr($aparamfromMSDN[$iparamrow], "(")
				$ifirstparamrow = $iparamrow
				$ilastparamrow = $iparamrow
			Case StringInStr($aparamfromMSDN[$iparamrow], ");")
				$ilastparamrow = $iparamrow
		EndSelect
	Next
	
	For $iparamrow = $ifirstparamrow To $ilastparamrow
		Select
			Case $iparamrow = $ifirstparamrow ; first row
				$arow = StringSplit($aparamfromMSDN[$iparamrow], " ")
				ArrayRemoveBlanks($arow)
				If $arow[0] = 2 Then ; no WINAPI
					$sReturnType = $arow[1]
					$sFunctionName = $arow[2]
				Else ; WINAPI is present
					$sReturnType = $arow[1]
					$sFunctionName = $arow[3]
				EndIf
				StringStripWS($sReturnType, $STR_STRIPALL)
				StringStripCR($sReturnType)
				$sReturnType = StringRegExpReplace($sReturnType, "(?i)[^a-z0-9_]", "")
				$arow = StringSplit($sFunctionName, "(")
				ArrayRemoveBlanks($arow)
				$sFunctionName = $arow[1]
				StringStripWS($sFunctionName, $STR_STRIPALL)
				StringStripCR($sFunctionName)
				$sFunctionName = StringRegExpReplace($sFunctionName, "(?i)[^a-z0-9]", "")
			Case $iparamrow < $ilastparamrow
				; row next first
				$arow = StringSplit($aparamfromMSDN[$iparamrow], " ")
				ArrayRemoveBlanks($arow)
				$arow[3] = StringRegExpReplace($arow[3], "(?i)[^a-z0-9]", "")
				If $arow[1] = "_In_" Or $arow[1] = "_In_opt_" Then
					ReDim $aParams[UBound($aParams) + 1][3] ; Add a "row" to the array
					$aParams[UBound($aParams) - 1][0] = $arow[2]
					$aParams[UBound($aParams) - 1][1] = "$" & $arow[3]
					$aParams[UBound($aParams) - 1][2] = "ByVal"
;~ 					GUICtrlCreateListViewItem(UBound($aParams) - 1 & "|" & $aParams[UBound($aParams) - 1][0] & "|" & $aParams[UBound($aParams) - 1][1] & "|" & $aParams[UBound($aParams) - 1][2], $ListViewParams)
				ElseIf $arow[1] = "_Out_" Then
					ReDim $aParams[UBound($aParams) + 1][3] ; Add a "row" to the array
					$aParams[UBound($aParams) - 1][0] = $arow[2]
					$aParams[UBound($aParams) - 1][1] = "$" & $arow[3]
					If $arow[2] = "LPTSTR" Then
						$aParams[UBound($aParams) - 1][2] = "ByVal"
					Else
						$aParams[UBound($aParams) - 1][2] = "ByRef"
					EndIf
;~ 					GUICtrlCreateListViewItem(UBound($aParams) - 1 & "|" & $aParams[UBound($aParams) - 1][0] & "|" & $aParams[UBound($aParams) - 1][1] & "|" & $aParams[UBound($aParams) - 1][2], $ListViewParams)
				ElseIf $arow[1] = "_Inout_" Then
					ReDim $aParams[UBound($aParams) + 1][3] ; Add a "row" to the array
					$aParams[UBound($aParams) - 1][0] = $arow[2]
					$aParams[UBound($aParams) - 1][1] = "$" & $arow[3]
					If $arow[2] = "LPTSTR" Then
						$aParams[UBound($aParams) - 1][2] = "ByVal"
					Else
						$aParams[UBound($aParams) - 1][2] = "ByRef"
					EndIf
;~ 					GUICtrlCreateListViewItem(UBound($aParams) - 1 & "|" & $aParams[UBound($aParams) - 1][0] & "|" & $aParams[UBound($aParams) - 1][1] & "|" & $aParams[UBound($aParams) - 1][2], $ListViewParams)
				ElseIf $arow[1] = "_Reserved_" Then ; reserved for future use. It must be NULL.
					ReDim $aParams[UBound($aParams) + 1][3] ; Add a "row" to the array
					$aParams[UBound($aParams) - 1][0] = $arow[2]
					$aParams[UBound($aParams) - 1][1] = "0"
					$aParams[UBound($aParams) - 1][2] = "ByVal"
;~ 					GUICtrlCreateListViewItem(UBound($aParams) - 1 & "|" & $aParams[UBound($aParams) - 1][0] & "|" & $aParams[UBound($aParams) - 1][1] & "|" & $aParams[UBound($aParams) - 1][2], $ListViewParams)
				EndIf
			Case $iparamrow = $ilastparamrow
				;last row
				
		EndSelect
	Next
	
	GUICtrlSetData($InputFunc, $sFunctionName)
	GUICtrlSetData($InputReturnType, $sReturnType)
	#EndRegion parse Syntax Section

	#Region parse Parameters Section
	; Parameters Section
	Local $istructurepointerstart, $istructurestart, $ienumpointerstart, $ienumstart, $indx, $aparnnote
	$istart = StringInStr($sMSDNPage, "Parameters" & @CRLF, $STR_CASESENSE, 1, $iprestart)
	$iprestart = $istart
	$iend = StringInStr($sMSDNPage, "Return value" & @CRLF, $STR_CASESENSE, 1, $iprestart)
	$iprestart = $istart
	$sParameters = StringMid($sMSDNPage, $istart, $iend - $istart - 1)
	; parse for pointer to structure / enumeration type
	If UBound($aParams) > 1 Then ; with parameters
		$aparnnote = StringSplit($sParameters, "]" & @CRLF, $STR_ENTIRESPLIT)
		For $indx = 2 To ($aparnnote[0])
			$istructurepointerstart = StringInStr($aparnnote[$indx], "pointer to a", $STR_CASESENSE)
			$istructurestart = StringInStr($aparnnote[$indx], "structure", $STR_CASESENSE)
			If $istructurepointerstart > 0 And $istructurestart > 0 Then
				; setta flag struttura e parse structure page
			EndIf
			$ienumpointerstart = StringInStr($aparnnote[$indx], "pointer to a", $STR_CASESENSE)
			$ienumstart = StringInStr($aparnnote[$indx], "enumeration", $STR_CASESENSE)
			If $ienumstart > 0 Then
				; setta flag enumeration type e parse enumeration page
			EndIf
		Next
	EndIf
	#EndRegion parse Parameters Section

	; Return value Section
	If $iRemarksSectPresent Then
		$istart = StringInStr($sMSDNPage, "Return value" & @CRLF, $STR_CASESENSE, 1, $iprestart)
		$iprestart = $istart
		$iend = StringInStr($sMSDNPage, "Remarks" & @CRLF, $STR_CASESENSE, 1, $iprestart)
		$iprestart = $istart
		$sReturnvalue = StringMid($sMSDNPage, $istart, $iend - $istart - 1)
	Else
		$istart = StringInStr($sMSDNPage, "Return value" & @CRLF, $STR_CASESENSE, 1, $iprestart)
		$iprestart = $istart
		$iend = StringInStr($sMSDNPage, "Examples" & @CRLF, $STR_CASESENSE, 1, $iprestart)
		$iprestart = $istart
		$sReturnvalue = StringMid($sMSDNPage, $istart, $iend - $istart - 1)
	EndIf
	; Remarks Section
	If $iExamplesSectPresent Then
		$istart = StringInStr($sMSDNPage, "Remarks" & @CRLF, $STR_CASESENSE, 1, $iprestart)
		$iprestart = $istart
		$iend = StringInStr($sMSDNPage, "Examples" & @CRLF, $STR_CASESENSE, 1, $iprestart)
		$iprestart = $istart
		$sRemarks = StringMid($sMSDNPage, $istart, $iend - $istart - 1)
	Else
		$istart = StringInStr($sMSDNPage, "Remarks" & @CRLF, $STR_CASESENSE, 1, $iprestart)
		$iprestart = $istart
		$iend = StringInStr($sMSDNPage, "Requirements" & @CRLF, $STR_CASESENSE, 1, $iprestart)
		$iprestart = $istart
		$sRemarks = StringMid($sMSDNPage, $istart, $iend - $istart - 1)
	EndIf
	; Examples Section
	If $iExamplesSectPresent Then
		$istart = StringInStr($sMSDNPage, "Examples" & @CRLF, $STR_CASESENSE, 1, $iprestart)
		$iprestart = $istart
		$iend = StringInStr($sMSDNPage, "Requirements" & @CRLF, $STR_CASESENSE, 1, $iprestart)
		$iprestart = $istart
		$sExamples = StringMid($sMSDNPage, $istart, $iend - $istart - 1)
	EndIf

	#Region parse Requirements Section
	; Requirements Section
	If $iSeealsoSectPresent Then
		$istart = StringInStr($sMSDNPage, "Requirements" & @CRLF, $STR_CASESENSE, 1, $iprestart)
		$iprestart = $istart
		$iend = StringInStr($sMSDNPage, "See also" & @CRLF, $STR_CASESENSE, 1, $iprestart)
		$iprestart = $istart
		$sRequirements = StringMid($sMSDNPage, $istart, $iend - $istart - 1)
	Else
		$istart = StringInStr($sMSDNPage, "Requirements" & @CRLF, $STR_CASESENSE, 1, $iprestart)
		$iprestart = $istart
		$iend = StringInStr($sMSDNPage, "Community Additions" & @CRLF, $STR_CASESENSE, 1, $iprestart)
		$iprestart = $istart
		$sRequirements = StringMid($sMSDNPage, $istart, $iend - $istart - 1)
	EndIf
	
	$istart = StringInStr($sRequirements, "DLL" & @CRLF, $STR_CASESENSE)
	If $istart = 0 Then
		$iDLLSectPresent = False
		;messaggio di stop
	Else
		$iDLLSectPresent = True
	EndIf
	
	$istart = StringInStr($sRequirements, "Unicode and ANSI names" & @CRLF, $STR_CASESENSE)
	If $istart = 0 Then
		$iUnicodeandANSISectPresent = False
	Else
		$iUnicodeandANSISectPresent = True
	EndIf
	
	If $iUnicodeandANSISectPresent Then
		$istart = StringInStr($sRequirements, "Unicode and ANSI names" & @CRLF, $STR_CASESENSE)
		$iend = StringLen($sRequirements)
		$swork = StringMid($sRequirements, $istart + 22, $iend - $istart - 1)
		; Unicode name
		$istart = StringInStr($swork, "(Unicode)", $STR_CASESENSE)
		$sUnicodeName = StringLeft($swork, $istart - 1)
		StringStripWS($sUnicodeName, $STR_STRIPALL)
		StringStripCR($sUnicodeName)
		$sUnicodeName = StringRegExpReplace($sUnicodeName, "(?i)[^a-z0-9]", "")
		; ANSi name
		$istart = StringInStr($swork, "(Unicode) and", $STR_CASESENSE)
		$iend = StringInStr($swork, "(ANSI)", $STR_CASESENSE)
		$swork = StringMid($swork, $istart + 13, $iend)
		$istart = StringInStr($swork, "(ANSI)", $STR_CASESENSE)
		$sANSIName = StringLeft($swork, $istart - 1)
		StringStripWS($sANSIName, $STR_STRIPALL)
		StringStripCR($sANSIName)
		$sANSIName = StringRegExpReplace($sANSIName, "(?i)[^a-z0-9]", "")
		
		If (GUICtrlRead($RadioFuncUnicode) = $GUI_CHECKED) Then
			GUICtrlSetData($InputFunc, $sUnicodeName)
		EndIf
		If (GUICtrlRead($RadioFuncAnsi) = $GUI_CHECKED) Then
			GUICtrlSetData($InputFunc, $sANSIName)
		EndIf

	EndIf

	If $iUnicodeandANSISectPresent Then
		$istart = StringInStr($sRequirements, "DLL" & @CRLF, $STR_CASESENSE)
		$iend = StringInStr($sRequirements, "Unicode and ANSI names" & @CRLF, $STR_CASESENSE)
		$sDLL = StringMid($sRequirements, $istart + 3, $iend - $istart - 3)
	Else
		$istart = StringInStr($sRequirements, "DLL" & @CRLF, $STR_CASESENSE)
		$iend = StringLen($sRequirements)
		$sDLL = StringMid($sRequirements, $istart + 3, $iend - $istart - 1)
	EndIf

	; remove comment if prsent: Shlwapi.dll (version 4.71 or later)
	$iend = StringInStr($sDLL, "dll")
	$sDLL = StringMid($sDLL, 1, $iend + 3)
	StringStripWS($sDLL, $STR_STRIPALL)
	StringStripCR($sDLL)
	$sDLL = StringRegExpReplace($sDLL, "(?i)[^a-z0-9.]", "")
	
	GUICtrlSetData($InputDll, $sDLL)
	#EndRegion parse Requirements Section
	
	#Region generate param in list iew
	For $i = 2 To UBound($aParams)
		GUICtrlCreateListViewItem(($i - 1) & "|" & $aParams[$i - 1][0] & "|" & $aParams[$i - 1][1] & "|" & $aParams[$i - 1][2], $ListViewParams)
	Next
	#EndRegion generate param in list iew
	
	$ireturncode = True
EndFunc   ;==>CaptureFromMSDN

Func ArrayRemoveBlanks(ByRef $arr)
	Local $idx
	$idx = 0
	For $i = 0 To UBound($arr) - 1
		If $arr[$i] <> "" Then
			$arr[$idx] = $arr[$i]
			$idx += 1
		EndIf
	Next
	ReDim $arr[$idx]
	$arr[0] = $idx - 1
EndFunc   ;==>ArrayRemoveBlanks
