;_FFLinksGetAll.au3
#include <FF.au3>
#include <Array.au3>

_FFStart("http://ff-au3-example.thorsten-willert.de/")
;~ 	_FFOpenURL("http://ff-au3-example.thorsten-willert.de/")
	Sleep(3000)

If _FFIsConnected() Then
	$aLinks = _FFLinksGetAll()
	_ArrayDisplay($aLinks)
EndIf

