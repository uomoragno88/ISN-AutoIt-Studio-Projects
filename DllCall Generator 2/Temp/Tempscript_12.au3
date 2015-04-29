Local $tagSYSTEM_POWER_STATUS = 'BYTE ACLineStatus;BYTE BatteryFlag;BYTE BatteryLifePercent;BYTE SystemStatusFlag;DWORD BatteryLifeTime;DWORD BatteryFullLifeTime;'
Local $tSYSTEM_POWER_STATUS = DllStructCreate($tagSYSTEM_POWER_STATUS)
Local $aDllCallReturn,$vDllCallReturn
$aDllCallReturn = DllCall("user32.dll","int","")
If @error Then
   Switch @error
      Case 1
         ConsoleWrite("DllCall error (user32.dll/): Unable to use the DLL file.  Possibly a problem with the parameters." & @CRLF)
      Case 2
         ConsoleWrite("DllCall error (user32.dll/): Unknown return type." & @CRLF)
      Case 3
         ConsoleWrite("DllCall error (user32.dll/): Function not found in DLL file.  Remember that function names are case sensitive." & @CRLF)
      Case 4
         ConsoleWrite("DllCall error (user32.dll/): Incorrect number of parameters." & @CRLF)
      Case 5
         ConsoleWrite("DllCall error (user32.dll/): Bad parameter." & @CRLF)
      Case Else
         ConsoleWrite("DllCall error (user32.dll/): Unknown/unspecified error." & @CRLF)
   EndSwitch
   $vDllCallReturn = ""
Else
   $vDllCallReturn = $aDllCallReturn[0]
   ConsoleWrite("DllCall return value: " & $vDllCallReturn & @CRLF)
EndIf

