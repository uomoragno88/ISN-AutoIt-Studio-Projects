$aResult = DllCall("Kernel32.dll", "uint", "GetWindowsDirectory", "str", 0, "uint", 128)
ConsoleWrite($aResult[1] & @CR)


