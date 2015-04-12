HotKeySet('{ESC}','_Exit')
Func _Exit()
    Exit
EndFunc
_ShowFileProperties('H:\autoit_3_3_12\install\AutoIt3.exe')
While True
WEnd
Func _ShowFileProperties($sFile, $sVerb = "properties", $hWnd = 0)
    ; function by Rasim
    ; http://www.autoitscript.com/forum/index.php?showtopic=78236&view=findpost&p=565547
    Local Const $SEE_MASK_INVOKEIDLIST = 0xC
    Local Const $SEE_MASK_NOCLOSEPROCESS = 0x40
    Local Const $SEE_MASK_FLAG_NO_UI = 0x400
    Local $PropBuff, $FileBuff, $SHELLEXECUTEINFO
    $PropBuff = DllStructCreate("char[256]")
    DllStructSetData($PropBuff, 1, $sVerb)
    $FileBuff = DllStructCreate("char[256]")
    DllStructSetData($FileBuff, 1, $sFile)
    $SHELLEXECUTEINFO = DllStructCreate("int cbSize;long fMask;hwnd hWnd;ptr lpVerb;ptr lpFile;ptr lpParameters;ptr lpDirectory;" & _
            "int nShow;int hInstApp;ptr lpIDList;ptr lpClass;hwnd hkeyClass;int dwHotKey;hwnd hIcon;" & _
            "hwnd hProcess")
    DllStructSetData($SHELLEXECUTEINFO, "cbSize", DllStructGetSize($SHELLEXECUTEINFO))
    DllStructSetData($SHELLEXECUTEINFO, "fMask", $SEE_MASK_INVOKEIDLIST)
    DllStructSetData($SHELLEXECUTEINFO, "hwnd", $hWnd)
    DllStructSetData($SHELLEXECUTEINFO, "lpVerb", DllStructGetPtr($PropBuff, 1))
    DllStructSetData($SHELLEXECUTEINFO, "lpFile", DllStructGetPtr($FileBuff, 1))
    $aRet = DllCall("shell32.dll", "int", "ShellExecuteEx", "ptr", DllStructGetPtr($SHELLEXECUTEINFO))
    If $aRet[0] = 0 Then Return SetError(2, 0, 0)
    Return $aRet[0]
EndFunc   ;==>_ShowFileProperties

