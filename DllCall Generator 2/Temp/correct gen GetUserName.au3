$lpnSize = 255
$lpBuffer = ""
$aDllCallReturn = DllCall("Advapi32.dll", "BOOL", "GetUserNameW", "Wstr", $lpBuffer, "dword*", $lpnSize)
If @error Then
   Switch @error
      Case 1
         ConsoleWrite("DllCall error (Advapi32.dll/GetUserNameW): Unable to use the DLL file.  Possibly a problem with the parameters." & @CRLF)
      Case 2
         ConsoleWrite("DllCall error (Advapi32.dll/GetUserNameW): Unknown return type." & @CRLF)
      Case 3
         ConsoleWrite("DllCall error (Advapi32.dll/GetUserNameW): Function not found in DLL file.  Remember that function names are case sensitive." & @CRLF)
      Case 4
         ConsoleWrite("DllCall error (Advapi32.dll/GetUserNameW): Incorrect number of parameters." & @CRLF)
      Case 5
         ConsoleWrite("DllCall error (Advapi32.dll/GetUserNameW): Bad parameter." & @CRLF)
      Case Else
         ConsoleWrite("DllCall error (Advapi32.dll/GetUserNameW): Unknown/unspecified error." & @CRLF)
   EndSwitch
   $vDllCallReturn = ""
Else
   $vDllCallReturn = $aDllCallReturn[0]
   $lpBuffer = $aDllCallReturn[1]
   $lpnSize = $aDllCallReturn[2]
   ConsoleWrite("$lpBuffer = " & $lpBuffer & @CRLF & "$lpnSize = " & $lpnSize & @CRLF & "DllCall return value: " & $vDllCallReturn & @CRLF)
EndIf

;~ $aDllCallReturn = DllCall("Advapi32.dll","BOOL","GetUserNameW","wstr*","$lpBuffer","DWORD*","$lpnSize")
;~ If @error Then
;~    Switch @error
;~       Case 1
;~          ConsoleWrite("DllCall error (Advapi32.dll/GetUserNameW): Unable to use the DLL file.  Possibly a problem with the parameters." & @CRLF)
;~       Case 2
;~          ConsoleWrite("DllCall error (Advapi32.dll/GetUserNameW): Unknown return type." & @CRLF)
;~       Case 3
;~          ConsoleWrite("DllCall error (Advapi32.dll/GetUserNameW): Function not found in DLL file.  Remember that function names are case sensitive." & @CRLF)
;~       Case 4
;~          ConsoleWrite("DllCall error (Advapi32.dll/GetUserNameW): Incorrect number of parameters." & @CRLF)
;~       Case 5
;~          ConsoleWrite("DllCall error (Advapi32.dll/GetUserNameW): Bad parameter." & @CRLF)
;~       Case Else
;~          ConsoleWrite("DllCall error (Advapi32.dll/GetUserNameW): Unknown/unspecified error." & @CRLF)
;~    EndSwitch
;~    $vDllCallReturn = ""
;~ Else
;~    $vDllCallReturn = $aDllCallReturn[0]
;~    $lpBuffer = $aDllCallReturn[1]
;~    $lpnSize = $aDllCallReturn[2]
;~    ConsoleWrite("$lpBuffer = " & $lpBuffer & @CRLF & "$lpnSize = " & $lpnSize & @CRLF & "DllCall return value: " & $vDllCallReturn & @CRLF)
;~ EndIf
;~ 