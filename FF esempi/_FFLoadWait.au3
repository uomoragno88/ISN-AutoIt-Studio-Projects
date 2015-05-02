;_FFLoadWait.au3
#include <FF.au3>

_FFStart("http://ff-au3-example.thorsten-willert.de/", Default, 2)
	_FFOpenURL("http://ff-au3-example.thorsten-willert.de/")
	Sleep(3000)

If _FFIsConnected() Then
;~ 	_FFClickImage("/gohome.png", "src", False) ; funzione inesistente
	_FFLinkClick("http://www.thorsten-willert.de/")
	If _FFLoadWait() Then MsgBox(64, "", "Page was loaded in " & @extended & "ms")

	Sleep(3000)
;~ 	_FFQuit()
EndIf

