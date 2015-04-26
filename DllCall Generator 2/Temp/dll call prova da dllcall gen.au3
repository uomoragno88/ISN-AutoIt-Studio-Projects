$aDllCallReturn = DllCall("Kernel32.dll", _
		"int","GetDiskFreeSpaceW", _
		"wstr","c:\", _
		"DWORD*","$lpSectorsPerCluster", _
		"DWORD*","$lpBytesPerSector", _
		"DWORD*","$lpNumberOfFreeClusters", _
		"DWORD*","$lpTotalNumberOfClusters")
If @error Then
   Switch @error
      Case 1
         MsgBox(0,"DllCall Code Generator","DllCall error (Kernel32.dll/GetDiskFreeSpaceW): Unable to use the DLL file.  Possibly a problem with the parameters.")
      Case 2
         MsgBox(0,"DllCall Code Generator","DllCall error (Kernel32.dll/GetDiskFreeSpaceW): Unknown return type.")
      Case 3
         MsgBox(0,"DllCall Code Generator","DllCall error (Kernel32.dll/GetDiskFreeSpaceW): Function not found in DLL file.  Remember that function names are case sensitive.")
      Case 4
         MsgBox(0,"DllCall Code Generator","DllCall error (Kernel32.dll/GetDiskFreeSpaceW): Incorrect number of parameters.")
      Case 5
         MsgBox(0,"DllCall Code Generator","DllCall error (Kernel32.dll/GetDiskFreeSpaceW): Bad parameter.")
      Case Else
         MsgBox(0,"DllCall Code Generator","DllCall error (Kernel32.dll/GetDiskFreeSpaceW): Unknown/unspecified error.")
   EndSwitch
   $vDllCallReturn = ""
Else
   $vDllCallReturn = $aDllCallReturn[0]
	$pippo = $aDllCallReturn[1]
   $lpSectorsPerCluster = $aDllCallReturn[2]
   $lpBytesPerSector = $aDllCallReturn[3]
   $lpNumberOfFreeClusters = $aDllCallReturn[4]
   $lpTotalNumberOfClusters = $aDllCallReturn[5]
   MsgBox(0,"DllCall Code Generator","$lpSectorsPerCluster = " & $lpSectorsPerCluster & @CRLF & "$lpBytesPerSector = " & $lpBytesPerSector & @CRLF & "$lpNumberOfFreeClusters = " & $lpNumberOfFreeClusters & @CRLF & "$lpTotalNumberOfClusters = " & $lpTotalNumberOfClusters & @CRLF & "DllCall return value: " & $vDllCallReturn)
EndIf


