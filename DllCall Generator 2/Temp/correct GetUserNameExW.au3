MsgBox(0, "", _GetUserNameEx() )

Func _GetUserNameEx()
	$pippo = ""
    Local $aDLL = DllCall("Secur32.dll", "bool", "GetUserNameExW", "int", 2, "wstr", $pippo, "ulong*", 255)
    If @error Then Return SetError(@error, 0, 0)
    Return $aDLL[2]
EndFunc