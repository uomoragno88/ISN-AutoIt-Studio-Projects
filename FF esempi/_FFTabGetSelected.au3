;_FFTabGetSelected.au3
#include <FF.au3>

$Socket = _FFStart()

If $Socket > -1 Then
	; add a new tab with an URL
	_FFTabAdd("http://ff-au3-example.thorsten-willert.de/")
	sleep(3000)
	; add a new blank tab and bring it to front
	_FFTabAdd(default,true)
	Sleep(3000)
	; select the tab with "FF" in the label
	_FFTabSetSelected("FF","label")
	; shows the number of tabs
	MsgBox(64,"name:", _FFTabGetSelected("label"))
	MsgBox(64,"index:", _FFTabGetSelected("index"))
	; closing all tabs except the current
	_FFTabClose("all")
	Sleep(3000)
	; closes FireFox
	_FFQuit()
EndIf

