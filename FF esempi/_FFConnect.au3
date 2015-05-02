;_FFConnect.au3
#include <FF.au3>
_FFAu3Option("ComTrace", False) 

; trying to connect to a running FireFox with MozRepl on
If _FFConnect(Default, Default, 3000) Then
	; open a page
	_FFOpenURL("http://ff-au3-example.thorsten-willert.de/")
	Sleep(3000)
	; disconnect from FireFox
	If _FFDisConnect() Then MsgBox(64, "", "Disconnected from FireFox!")
Else
	MsgBox(64, "", "Can't connect to FireFox!")
EndIf

