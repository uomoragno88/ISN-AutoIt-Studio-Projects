;~ #Region ;**** Directives created by AutoIt3Wrapper_GUI ****
;~ #AutoIt3Wrapper_UseX64=n
;~ #EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
Local $SectorsPerCluster
Local $BytesPerSector
Local $NumberOfFreeClusters
Local $TotalNumberOfClusters
$calldata = DllCall("Kernel32.dll", _
		"int", "GetDiskFreeSpaceW", _
		"wstr", "C:\", _
		"dword*", $SectorsPerCluster, _
		"dword*", $BytesPerSector, _
		"dword*", $NumberOfFreeClusters, _
		"dword*", $TotalNumberOfClusters)


$SectorsPerCluster = $calldata[2]
$BytesPerSector = $calldata[3]
$NumberOfFreeClusters = $calldata[4]
$TotalNumberOfClusters = $calldata[5]
MsgBox(0, "", "Total number of clusters: " & $TotalNumberOfClusters)

