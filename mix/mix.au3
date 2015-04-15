#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_UseX64=n
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
#Include "ColorChooser.au3"
#Include "ColorPicker.au3"
#include "dllcallgen.au3"
#include "ddl call prova.au3"

Opt('MustDeclareVars', 1)

Global $hForm, $Msg, $Label, $Picker

$hForm = GUICreate('MyGUI', 170, 200)
$Label = GUICtrlCreateLabel('', 15, 15, 140, 140, $SS_SUNKEN)
GUICtrlSetBkColor(-1, 0x50CA1B)
$Picker = _GUIColorPicker_Create('', 55, 166, 60, 23, 0x50CA1B, BitOR($CP_FLAG_CHOOSERBUTTON, $CP_FLAG_MAGNIFICATION, $CP_FLAG_ARROWSTYLE), 0, -1, -1, 0, 'Simple Text', 'Custom...', '_ColorChooserDialog')
GUISetState()

While 1
    $Msg = GUIGetMsg()
    Switch $Msg
        Case $GUI_EVENT_CLOSE
            ExitLoop
        Case $Picker
            GUICtrlSetBkColor($Label, _GUIColorPicker_GetColor($Picker))
    EndSwitch
WEnd