;_FFFormCheckBox.au.au3
#include <FF.au3>

_FFStart("http://ff-au3-example.thorsten-willert.de/")

If _FFIsConnected() Then
	
;~ 	_FFOpenURL("http://ff-au3-example.thorsten-willert.de/")
;~ 	Sleep(3000)
	
	Sleep(1000)
	_FFFormCheckBox("oliven", True, 0, "value", "Pizza", "name")
	Sleep(1000)
	_FFFormCheckBox("zutat", True, 1, "name", 0, "index")
	Sleep(1000)
	_FFFormCheckBox(2, True, 0, "index", 0, "index")
EndIf

