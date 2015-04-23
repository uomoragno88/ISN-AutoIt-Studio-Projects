
    Local $aDLL = DllCall("Advapi32.dll", "BOOL", "GetUserName", "str", "", "dword*", 255)
    If @error Then Return SetError(@error, 0, 0)
	EndIf
		ConsoleWrite('@@ Debug(' & @ScriptLineNumber & ') : $aDLL = ' & $aDLL & @CRLF & '>Error code: ' & @error & @CRLF) ;### Debug Console
