;~ #Region ;**** Directives created by AutoIt3Wrapper_GUI ****
;~ #AutoIt3Wrapper_UseX64=n
;~ #EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
Local $SectorsPerCluster
Local $BytesPerSector
Local $NumberOfFreeClusters
Local $TotalNumberOfClusters
$calldata = DllCall("Kernel32.dll", "int", "GetDiskFreeSpaceW", "wstr", "C:\", "dword*", $SectorsPerCluster, "dword*", $BytesPerSector, "dword*", $NumberOfFreeClusters, "dword*", $TotalNumberOfClusters)


$SectorsPerCluster = $calldata[2]
$BytesPerSector = $calldata[3]
$NumberOfFreeClusters = $calldata[4]
$TotalNumberOfClusters = $calldata[5]
MsgBox(0, "", "Total number of clusters: " & $TotalNumberOfClusters)

; Variables to pass as reference
Local $SectorsPerCluster
Local $BytesPerSector
Local $NumberOfFreeClusters
Local $TotalNumberOfClusters
$calldata = DllCall("Kernel32.dll", "int", "GetDiskFreeSpaceW", "wstr", "C:\", "dword*", $SectorsPerCluster, "dword*", $BytesPerSector, "dword*", $NumberOfFreeClusters, "dword*", $TotalNumberOfClusters)
; The data is returned as an array, even the changed values of the variables
$SectorsPerCluster = $calldata[2]
$BytesPerSector = $calldata[3]
$NumberOfFreeClusters = $calldata[4]
$TotalNumberOfClusters = $calldata[5]
MsgBox(0, "", "Total number of clusters: " & $TotalNumberOfClusters)
