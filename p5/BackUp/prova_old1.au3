;prova.au3
Func prova()
local $spippo
$spippo = "pippo"
GUICtrlSetData ($hTest, $spippo)
GUICtrlSetState ($hTest,$GUI_FOCUS)
MsgBox(262144,'Debug line ~' & @ScriptLineNumber,'Selection:' & @lf & '$spippo' & @lf & @lf & 'Return:' & @lf &$spippo) ;### Debug MSGBOX
EndFunc

