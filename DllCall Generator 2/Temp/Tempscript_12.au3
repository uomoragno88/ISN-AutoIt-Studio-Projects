Local $hDevice
Local $uiCommand
Local $pData
Local $pcbSize
Local $aDllCallReturn,$vDllCallReturn
$aDllCallReturn = DllCall("User32.dll","UINT","GetRawInputDeviceInfoW","HANDLE", $hDevice,"UINT", $uiCommand,"ptr", $pData,"UINT*", $pcbSize)
If @error Then
   Switch @error
      Case 1
         ConsoleWrite("DllCall error (User32.dll/GetRawInputDeviceInfoW): Unable to use the DLL file.  Possibly a problem with the parameters." & @CRLF)
      Case 2
         ConsoleWrite("DllCall error (User32.dll/GetRawInputDeviceInfoW): Unknown return type." & @CRLF)
      Case 3
         ConsoleWrite("DllCall error (User32.dll/GetRawInputDeviceInfoW): Function not found in DLL file.  Remember that function names are case sensitive." & @CRLF)
      Case 4
         ConsoleWrite("DllCall error (User32.dll/GetRawInputDeviceInfoW): Incorrect number of parameters." & @CRLF)
      Case 5
         ConsoleWrite("DllCall error (User32.dll/GetRawInputDeviceInfoW): Bad parameter." & @CRLF)
      Case Else
         ConsoleWrite("DllCall error (User32.dll/GetRawInputDeviceInfoW): Unknown/unspecified error." & @CRLF)
   EndSwitch
   $vDllCallReturn = ""
Else
   $vDllCallReturn = $aDllCallReturn[0]
   $hDevice = $aDllCallReturn[1]
   $uiCommand = $aDllCallReturn[2]
   $pData = $aDllCallReturn[3]
   $pcbSize = $aDllCallReturn[4]
   ConsoleWrite("$hDevice = " & $hDevice & @CRLF & "$uiCommand = " & $uiCommand & @CRLF & "$pData = " & $pData & @CRLF & "$pcbSize = " & $pcbSize & @CRLF & "DllCall return value: " & $vDllCallReturn & @CRLF)
EndIf
