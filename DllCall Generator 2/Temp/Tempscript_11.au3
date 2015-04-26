$ilenght = 256
$aDllCallReturn = DllCall("Kernel32.dll","UINT","GetSystemDirectoryW","wstr*","$lpBuffer","UINT*","$ilenght")
$vDllCallReturn = $aDllCallReturn[0]
$lpBuffer = $aDllCallReturn[1]
