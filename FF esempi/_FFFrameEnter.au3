;_FFFrameEnter.au3
#include <FF.au3>

Sleep(5000)
If _FFConnect() Then
	If _FFOpenURL("http://autoit.de") Then
		_FFFrameEnter(2)
		MsgBox(0,"Frame 2 URL", _FFCmd(".location.href") )
		_FFFrameLeave()
		MsgBox(0,"Top URL",_FFCmd(".location.href") )
	EndIf
EndIf
