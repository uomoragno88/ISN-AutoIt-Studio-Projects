;dllcallgen.au3
#include <ComboConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <GuiListView.au3>
#include <ListViewConstants.au3>
#include <WindowsConstants.au3>
#Region ### START Koda GUI section ### Form=C:\Library\Repositories #NO BACKUP#\Google Drive - Toastyking\Development\Snippet Library\AutoIt\CodeWizards\DllCallCodegen\FormMain.kxf
$FormMain = GUICreate("DllCall Code Generator", 825, 421)
$Label1 = GUICtrlCreateLabel("DLL Name", 16, 32, 55, 17)
$InputDll = GUICtrlCreateInput("user32.dll", 120, 29, 121, 21)
$Label2 = GUICtrlCreateLabel("Function Name", 16, 59, 76, 17)
$InputFunc = GUICtrlCreateInput("", 120, 56, 121, 21)
$RadioFuncAnsi = GUICtrlCreateRadio("ANSI", 256, 57, 49, 17)
$RadioFuncUnicode = GUICtrlCreateRadio("Unicode", 312, 56, 73, 17)
GUICtrlSetState(-1, $GUI_CHECKED)
$Label3 = GUICtrlCreateLabel("Return Type", 16, 85, 63, 17)
$InputReturnType = GUICtrlCreateInput("int", 120, 82, 121, 21)
$ComboCallConv = GUICtrlCreateCombo("", 120, 110, 121, 25, BitOR($CBS_DROPDOWN,$CBS_AUTOHSCROLL))
GUICtrlSetData(-1, "stdcall|cdecl")
$ListViewParams = GUICtrlCreateListView("#|Type|Value|Method", 16, 245, 362, 126, BitOR($GUI_SS_DEFAULT_LISTVIEW,$LVS_NOSORTHEADER))
GUICtrlSendMsg(-1, $LVM_SETCOLUMNWIDTH, 0, 50)
GUICtrlSendMsg(-1, $LVM_SETCOLUMNWIDTH, 1, 50)
GUICtrlSendMsg(-1, $LVM_SETCOLUMNWIDTH, 2, 50)
GUICtrlSendMsg(-1, $LVM_SETCOLUMNWIDTH, 3, 50)
$Label4 = GUICtrlCreateLabel("For all types, use the type name specified on MSDN.", 16, 8, 251, 17)
$Label5 = GUICtrlCreateLabel("Parameters:", 16, 136, 60, 17)
$Label6 = GUICtrlCreateLabel("Type", 24, 157, 28, 17)
$Label7 = GUICtrlCreateLabel("Value (0 for null)", 152, 157, 80, 17)
$Label8 = GUICtrlCreateLabel("Method", 280, 157, 39, 17)
$InputParamType = GUICtrlCreateInput("", 24, 176, 121, 21)
$InputParamValue = GUICtrlCreateInput("", 152, 176, 121, 21)
$ComboParamByref = GUICtrlCreateCombo("", 280, 176, 89, 25, BitOR($CBS_DROPDOWNLIST,$CBS_AUTOHSCROLL))
GUICtrlSetData(-1, "Input/ByVal|Output/ByRef")
$ButtonParamAdd = GUICtrlCreateButton("Add Parameter", 24, 213, 91, 25)
$ButtonParamDelete = GUICtrlCreateButton("Clear All", 128, 213, 107, 25)
$Label9 = GUICtrlCreateLabel("Calling convention", 16, 112, 91, 17)
$Label10 = GUICtrlCreateLabel("Generated AutoIt code:", 409, 8, 115, 17)
$EditCode = GUICtrlCreateEdit("", 408, 29, 401, 342, BitOR($ES_READONLY,$WS_HSCROLL,$WS_VSCROLL))
$ButtonTest = GUICtrlCreateButton("Test Code", 344, 381, 107, 25)
$ButtonCopy = GUICtrlCreateButton("Copy to Clipboard", 464, 381, 107, 25)
$ButtonInsert = GUICtrlCreateButton("Insert in SciTE", 586, 381, 107, 25)
$ButtonGenonly = GUICtrlCreateButton("Nothing Else", 704, 381, 107, 25)
$ComboOutput = GUICtrlCreateCombo("", 98, 383, 121, 25, BitOR($CBS_DROPDOWNLIST,$CBS_AUTOHSCROLL))
GUICtrlSetData(-1, "ConsoleWrite|MsgBox|$vDllCallReturn only")
$Label11 = GUICtrlCreateLabel("Output method:", 16, 387, 77, 17)
$Label12 = GUICtrlCreateLabel("Generate code and:", 232, 387, 99, 17)
;~ GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###

Global $aParams[1][3]
GUICtrlSetData($ComboParamByref,"Input/ByVal")
GUICtrlSetData($ComboOutput,"ConsoleWrite")
GUICtrlSetData($ComboCallConv,"stdcall")
GUISetState(@SW_SHOW)

While 1
    $nMsg = GUIGetMsg()
    Switch $nMsg
        Case $ButtonParamAdd
            _ConvertType(GUICtrlRead($InputParamType)) ; Use the parameter type selected
            If @error Then
                If MsgBox(49,"Unrecognized Type","Unrecognized parameter type """ & GUICtrlRead($InputParamType) & """.  Make sure you are using an MSDN return type." & @CRLF & @CRLF & "If you are certain that the parameter type is correct and you happen to know the equivalent AutoIt parameter type, click OK.  You will be prompted later for the AutoIt parameter type.",0,$FormMain) = 2 Then ContinueLoop
            EndIf
            If GUICtrlRead($ComboParamByref) = "Output/ByRef" And StringLeft(GUICtrlRead($InputParamValue),1) <> "$" Then
                MsgBox(48,"Error","To use this parameter value as a ByRef, you must specify the name of a variable used in your AutoIt script, which must begin with a '$' symbol.",0,$FormMain)
                ContinueLoop
            EndIf
            ; Input seems okay; proceed.
            ReDim $aParams[UBound($aParams) + 1][3] ; Add a "row" to the array
            $aParams[UBound($aParams) - 1][0] = GUICtrlRead($InputParamType)
            $aParams[UBound($aParams) - 1][1] = GUICtrlRead($InputParamValue)
            $aParams[UBound($aParams) - 1][2] = GUICtrlRead($ComboParamByref)
            ; Clear input fields and refocus
            GUICtrlSetData($InputParamType,"")
            GUICtrlSetData($InputParamValue,"")
            GUICtrlSetData($ComboParamByref,"Input/ByVal")
            GUICtrlCreateListViewItem(UBound($aParams) - 1 & "|" & $aParams[UBound($aParams) - 1][0] & "|" & $aParams[UBound($aParams) - 1][1] & "|" & $aParams[UBound($aParams) - 1][2],$ListViewParams)
            ControlFocus($FormMain,"",$InputParamType)
        Case $ButtonParamDelete ; Delete all items
            _GUICtrlListView_DeleteAllItems($ListViewParams)
            ReDim $aParams[1][3]
        Case $ButtonTest
            $sDllCallOut = _GenerateCode("MsgBox") ; Always use MsgBox for output when generating for testing.
            GUICtrlSetData($EditCode,$sDllCallOut)
            If $sDllCallOut <> "" Then
                GUISetState(@SW_DISABLE,$FormMain)
                GUICtrlSetData($ButtonTest,"Executing...")
                FileDelete(@TempDir & "\DllCallExec.au3")
                FileWrite(@TempDir & "\DllCallExec.au3",$sDllCallOut); Write code to temporary file to be executed.
                $nExit = RunWait(@AutoItExe & ' /AutoIt3ExecuteScript "' & @TempDir & '\DllCallExec.au3"',@TempDir) ; Execute the temporary file.
                If $nExit <> 0 Then
                    Switch $nExit
                        Case 1
                            MsgBox(16,"DLL Code Generator","The AutoIt interpreter encountered an error while parsing or executing the generated code." & @CRLF & "Exit code: " & $nExit,0,$FormMain)
                        Case Else
                            MsgBox(16,"DLL Code Generator","There was a problem with the DllCall (possibly incorrect parameters).  The AutoIt interpreter ended unexpectedly." & @CRLF & "Exit code: " & $nExit,0,$FormMain)
                    EndSwitch
                EndIf
                GUICtrlSetData($ButtonTest,"Test Code")
                GUISetState(@SW_ENABLE,$FormMain)
                FileDelete(@TempDir & "\DllCallExec.au3")
                WinActivate($FormMain)
            EndIf
        Case $ButtonGenonly
            $sDllCallOut = _GenerateCode(GUICtrlRead($ComboOutput))
            GUICtrlSetData($EditCode,$sDllCallOut)
        Case $ButtonCopy
            $sDllCallOut = _GenerateCode(GUICtrlRead($ComboOutput))
            GUICtrlSetData($EditCode,$sDllCallOut)
            If ClipPut($sDllCallOut) Then
                ToolTip("Copied!")
            Else
                ToolTip("Copy failed!")
            EndIf
            Sleep(1000)
            ToolTip("")
        Case $ButtonInsert
            $sDllCallOut = _GenerateCode(GUICtrlRead($ComboOutput))
            GUICtrlSetData($EditCode,$sDllCallOut)
            If ClipPut($sDllCallOut) Then ControlSend("[CLASS:SciTEWindow]","","Scintilla1","^v")
        Case $InputFunc
            If StringRight(GUICtrlRead($InputFunc),1) == "W" Then ; Check if last character of entered function name is a capital "W"
                GUICtrlSetState($RadioFuncUnicode,$GUI_CHECKED)
            Else
                GUICtrlSetState($RadioFuncAnsi,$GUI_CHECKED)
            EndIf
        Case $GUI_EVENT_CLOSE
            Exit
    EndSwitch
WEnd

Func _GenerateCode($sOutputType = "")
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
    $sReturnTypeOut = _ConvertType(GUICtrlRead($InputReturnType))
    If @error Then
        $sReturnTypeOut = InputBox("Unrecognized Type","Unrecognized return type """ & GUICtrlRead($InputReturnType) & """.  Make sure you are using an MSDN return type." & @CRLF & @CRLF & "If you are certain that the return type is correct and you happen to know the equivalent AutoIt return type, you may enter the AutoIt return type here.","","",Default,220,Default,Default,0,$FormMain)
        If $sReturnTypeOut = "" Then Return SetError(1,0,"")
    EndIf
    $sReturnTypeOut = _ConvertTypeArch($sReturnTypeOut,$sArch)
    If GUICtrlRead($ComboCallConv) <> "stdcall" Then $sReturnTypeOut &= ':' & GUICtrlRead($ComboCallConv)
    $sDllCallOut = 'Local $aDllCallReturn,$vDllCallReturn'
    $sDllCallOut = '$aDllCallReturn = DllCall("' & GUICtrlRead($InputDll) & '","' & $sReturnTypeOut & '","' & GUICtrlRead($InputFunc) & '"'
    If UBound($aParams) > 1 Then
        For $x = 1 To UBound($aParams) - 1
            $sParamTypeOut = ''
            $sParamTypeOut = _ConvertTypeArch(_ConvertType($aParams[$x][0]),$sArch)
            If $sParamTypeOut = '' Then
                $sParamTypeOut = InputBox("Unrecognized Type","Unrecognized parameter type """ & $aParams[$x][0] & """.  Make sure you are using an MSDN parameter type." & @CRLF & @CRLF & "If you are certain that the parameter type is correct and you happen to know the equivalent AutoIt parameter type, you may enter the AutoIt parameter type here.","","",Default,220,Default,Default,0,$FormMain)
                If $sParamTypeOut = "" Then Return(SetError(1,0,""))
                If StringRight($sParamTypeOut,1) = "*" Then $sParamTypeOut = StringTrimRight($sParamTypeOut,1) ; If the user added an asterisk to the end of the parameter type, remove it; it will be added back later if necessary.
            EndIf
            $sDllCallOut &= ',"' & $sParamTypeOut
            If $aParams[$x][2] = "Output/ByRef" Then $sDllCallOut &= '*'
            $sDllCallOut &= '","' & $aParams[$x][1] & '"'
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
    ; Generate code to assign returned ByRef values back to their AutoIt variables.
    If UBound($aParams) > 1 Then
        For $x = 1 To UBound($aParams) - 1
            If $aParams[$x][2] = "Output/ByRef" Then
                If $fOutputGen = 1 Then $sDllCallOut &= '   '
                $sDllCallOut &= $aParams[$x][1] & ' = $aDllCallReturn[' & $x & ']' & @CRLF
            EndIf
        Next
    EndIf
    ; Generate code to output values of the variables passed to the DllCall via ByRef.
    If $fOutputGen = 1 Then
        $sDllCallOut &= '   ' & $sCmdOutStart
        If UBound($aParams) > 1 Then
            For $x = 1 To UBound($aParams) - 1
                If $aParams[$x][2] = "Output/ByRef" Then
                    $sDllCallOut &= '"' & $aParams[$x][1] & ' = " & ' & $aParams[$x][1] & ' & @CRLF & '
                EndIf
            Next
        EndIf
        $sDllCallOut &= '"DllCall return value: " & $vDllCallReturn' & $sCmdOutEnd & @CRLF
        $sDllCallOut &= "EndIf" & @CRLF
    EndIf
    Return $sDllCallOut
EndFunc

; Convert the MSDN variable type to AutoIt variable type
Func _ConvertType($MSDN_Type)
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
EndFunc   ;==>

; Some variable types should be converted from their ANSI to Unicode types or vice versa.
Func _ConvertTypeArch($MSDN_Type,$sArch)
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
EndFunc
