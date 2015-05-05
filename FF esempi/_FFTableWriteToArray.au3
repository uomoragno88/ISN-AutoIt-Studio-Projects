;_FFTableWriteToArray.au3
#include <FF.au3>
#include <Array.au3>

_FFStart("http://ff-au3-example.thorsten-willert.de/")

	Sleep(1000)
	
If _FFIsConnected() Then

	$aTable = _FFTableWriteToArray(0)
	_ArrayDisplay($aTable)
EndIf

