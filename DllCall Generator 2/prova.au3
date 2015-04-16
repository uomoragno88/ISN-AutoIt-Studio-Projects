;prova.au3

#include "form\dllcallgen_form.isf"

GUISetState(@SW_SHOW)

While 1 
;~ 	Sleep (100)
	$nMsg = GUIGetMsg()
    Switch $nMsg
	        Case $GUI_EVENT_CLOSE
            Exit
	EndSwitch
Wend