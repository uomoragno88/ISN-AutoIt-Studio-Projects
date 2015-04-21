
$aDllCallReturn = DllCall("Kernel32.dll","BOOL","GetComputerNameW","wstr*","$lpBuffer","DWORD*","$lpnSize")
If @error Then
   Switch @error
      Case 1
         ConsoleWrite("DllCall error (Kernel32.dll/GetComputerNameW): Unable to use the DLL file.  Possibly a problem with the parameters." & @CRLF)
      Case 2
         ConsoleWrite("DllCall error (Kernel32.dll/GetComputerNameW): Unknown return type." & @CRLF)
      Case 3
         ConsoleWrite("DllCall error (Kernel32.dll/GetComputerNameW): Function not found in DLL file.  Remember that function names are case sensitive." & @CRLF)
      Case 4
         ConsoleWrite("DllCall error (Kernel32.dll/GetComputerNameW): Incorrect number of parameters." & @CRLF)
      Case 5
         ConsoleWrite("DllCall error (Kernel32.dll/GetComputerNameW): Bad parameter." & @CRLF)
      Case Else
         ConsoleWrite("DllCall error (Kernel32.dll/GetComputerNameW): Unknown/unspecified error." & @CRLF)
   EndSwitch
   $vDllCallReturn = ""
Else
   $vDllCallReturn = $aDllCallReturn[0]
   $lpBuffer = $aDllCallReturn[1]
   $lpnSize = $aDllCallReturn[2]
   ConsoleWrite("$lpBuffer = " & $lpBuffer & @CRLF & "$lpnSize = " & $lpnSize & @CRLF & "DllCall return value: " & $vDllCallReturn & @CRLF)
EndIf
;pp1.au3

