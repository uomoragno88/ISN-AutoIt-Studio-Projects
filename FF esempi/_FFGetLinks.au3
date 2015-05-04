;_FFGetLinks.au3
#include <FF.au3>
#include <Array.au3>

$Socket = _FFStart("http://ff-au3-example.thorsten-willert.de/")
;~ 	_FFOpenURL("http://ff-au3-example.thorsten-willert.de/")
	Sleep(3000)

If $Socket > -1 Then
;~ 	_FFGetLinks non esiste come funzione
	$aMsg = _FFGetLinks($Socket)
	_ArrayDisplay($aMsg)
	; not all Links have text!
	$aMsg = _FFGetLinks($Socket,"text")
	_ArrayDisplay($aMsg)
EndIf

