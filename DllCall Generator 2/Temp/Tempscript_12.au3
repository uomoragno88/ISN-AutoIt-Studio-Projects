Local $hdc
Local $nXLeft
Local $nYLeft
Local $nWidth
Local $nHeight
Local $dwRop
Local $aDllCallReturn,$vDllCallReturn
$aDllCallReturn = DllCall("Gdi32.dll","BOOL","PatBlt","HANDLE", $hdc,"int", $nXLeft,"int", $nYLeft,"int", $nWidth,"int", $nHeight,"DWORD", $dwRop)
If @error Then
   Switch @error
      Case 1
         ConsoleWrite("DllCall error (Gdi32.dll/PatBlt): Unable to use the DLL file.  Possibly a problem with the parameters." & @CRLF)
      Case 2
         ConsoleWrite("DllCall error (Gdi32.dll/PatBlt): Unknown return type." & @CRLF)
      Case 3
         ConsoleWrite("DllCall error (Gdi32.dll/PatBlt): Function not found in DLL file.  Remember that function names are case sensitive." & @CRLF)
      Case 4
         ConsoleWrite("DllCall error (Gdi32.dll/PatBlt): Incorrect number of parameters." & @CRLF)
      Case 5
         ConsoleWrite("DllCall error (Gdi32.dll/PatBlt): Bad parameter." & @CRLF)
      Case Else
         ConsoleWrite("DllCall error (Gdi32.dll/PatBlt): Unknown/unspecified error." & @CRLF)
   EndSwitch
   $vDllCallReturn = ""
Else
   $vDllCallReturn = $aDllCallReturn[0]
   $hdc = $aDllCallReturn[1]
   $nXLeft = $aDllCallReturn[2]
   $nYLeft = $aDllCallReturn[3]
   $nWidth = $aDllCallReturn[4]
   $nHeight = $aDllCallReturn[5]
   $dwRop = $aDllCallReturn[6]
   ConsoleWrite("$hdc = " & $hdc & @CRLF & "$nXLeft = " & $nXLeft & @CRLF & "$nYLeft = " & $nYLeft & @CRLF & "$nWidth = " & $nWidth & @CRLF & "$nHeight = " & $nHeight & @CRLF & "$dwRop = " & $dwRop & @CRLF & "DllCall return value: " & $vDllCallReturn & @CRLF)
EndIf

